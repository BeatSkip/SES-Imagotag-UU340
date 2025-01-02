/*
 * Axsem AX8052 Bootloader
 */

#include <ax8052.h>
#include <libmftypes.h>
#include <libmfuart.h>
#include <libmfuart0.h>
#include <libmfflash.h>
#include <libmfcrc.h>

/*
 * Configure whether the FRC Oscillator (which is used for Baud Rate Generation)
 * should be slaved to a 32kHz watch crystal on the LPXOSC Pins
 */
#define BOOTLDR_CALFRCOSC    1

/*
 * Configure whether the baud rate clock (16*baud rate) should be output on PA0
 */
#define BOOTLDR_BAUDCLKPA0   0

/*
 * Configure the minimum VDD voltage to start erasing the FLASH
 */
#define BOOTLDR_MINVDD       (uint16_t)(2.5*256)

extern void _sdcc_gsinit_startup(void);

#define bootloader_reset_vector() ((uint16_t)_sdcc_gsinit_startup)
#define bootloader_reset_vector_hi() ((uint8_t)(bootloader_reset_vector() >> 8))
#define bootloader_reset_vector_lo() ((uint8_t)bootloader_reset_vector())

const __code __at(0xe3fe) uint16_t jmp_vector;
__xdata uint8_t orig_jmp_vector[3];
__xdata uint8_t orig_jmp_vector_mask;
__xdata uint8_t line_buffer[260];

static void run_application(void)
{
    OSCFORCERUN = 0x00;
    FRCOSCCONFIG = 0x01;
    WTCFGB = 0x0F;
    IE = EIE = E2IE = 0;
    CLKCON = 0x08;
    __asm
    mov     dptr,#_jmp_vector
    movx    a,@dptr
    inc     dptr
    mov     r0,a
    movx    a,@dptr
    mov     dph,a
    mov     dpl,r0
    clr     a
    mov     _SP,#7
    jmp     @a+dptr
    __endasm;
}

static int8_t waitflash(uint16_t timeout)
{
    uint8_t cnth = timeout >> 8;
    uint8_t cntl = timeout;
    ++cnth;
    ++cntl;
    do {
        do {
            uint8_t st = NVSTATUS;
            if (!(st & 2))
                return -2;
            if (!(st & 1))
                return 0;
            uart0_poll();
            --cntl;
        }
        while (cntl);
        --cnth;
    }
    while (cnth);
    return -1;
}

static char getch(void)
{
    while (!uart0_rxcount()) {
        if (uart0_poll())
            continue;
        enter_standby();
    }
    return uart0_rx();
}

static uint16_t measurevdd(void)
{
    uint16_t vdd;
    ADCCLKSRC = 0x30;
    ADCCONV = 0x01;
    while (ADCCLKSRC & 0x80) {
        uart0_poll();
    }
    ADCCLKSRC = 0x07;
    vdd = (ADCCH0VAL >> 2) + (ADCCH1VAL >> 2) + (ADCCH2VAL >> 2) + (ADCCH3VAL >> 2);
    /* vdd = vdd * 10 / 2^8 */
    vdd >>= 5;
    vdd += vdd >> 2;
    vdd -= 9 << 7;
    return vdd;
}

static int8_t erase_page_write_resetvec(void)
{
    int8_t st;
    // erase page
    if (measurevdd() < BOOTLDR_MINVDD)
        return -4;
    NVADDR0 = 0x00;
    NVSTATUS = 0x20;
    st = waitflash(65535);
    if (st)
        return st;
    // write jump to reset vector into page
    if (measurevdd() < BOOTLDR_MINVDD)
        return -4;
    NVADDR0 = 0x02;
    NVDATA0 = bootloader_reset_vector_lo();
    NVDATA1 = 0xff;
    NVSTATUS = 0x30;
    st = waitflash(128);
    if (st)
        return st;
    NVADDR0 = 0x00;
    NVDATA0 = 0x02;
    NVDATA1 = bootloader_reset_vector_hi();
    NVSTATUS = 0x30;
    st = waitflash(128);
    if (st)
        return st;
    {
        const __code uint8_t *pmem = (const __code uint8_t *)(((uint16_t)NVADDR1) << 8);
        if (*pmem++ != 0x02)
            return -3;
        if (*pmem++ != bootloader_reset_vector_hi())
            return -3;
        if (*pmem++ != bootloader_reset_vector_lo())
            return -3;
    }
    return 0;
}

static int8_t erase_app(void)
{
    int8_t st;
    uint8_t pg;
    orig_jmp_vector_mask = 0;
    flash_unlock();
    NVADDR1 = 0x04;
    st = erase_page_write_resetvec();
    if (st)
        goto ferr;
    NVADDR1 = 0x00;
    st = erase_page_write_resetvec();
    if (st)
        goto ferr;
    // erase all pages starting from 1 up to the boot loader
    pg = 0x04;
    NVADDR0 = 0x00;
    do {
        NVADDR1 = pg;
        NVSTATUS = 0x20;
        st = waitflash(65535);
        if (st)
            goto ferr;
        pg += 4;
    } while (pg != bootloader_reset_vector_hi());
    flash_lock();
    return 0;
ferr:
    flash_lock();
    return st;
}

static int8_t check_app_erased(void)
{
    const __code uint8_t *pmem = 0;
    if (*pmem++ != 0x02)
        return -3;
    if (*pmem++ != bootloader_reset_vector_hi())
        return -3;
    if (*pmem++ != bootloader_reset_vector_lo())
        return -3;
    do {
        if (*pmem++ != 0xFF)
            return -1;
    } while ((uint8_t)(((uint16_t)pmem) >> 8) != bootloader_reset_vector_hi());
    return 0;
}

static int8_t flash_line(void)
{
    __xdata uint8_t *lb;
    uint16_t addr;
    uint8_t cnt = line_buffer[0];
    int8_t st;
    if (!cnt)
        return 0;
    addr = line_buffer[1];
    addr <<= 8;
    addr |= line_buffer[2];
    lb = &line_buffer[4];
    flash_unlock();
    do {
        if (addr < 3) {
            orig_jmp_vector[(uint8_t)addr] = *lb++;
            orig_jmp_vector_mask |= 1 << (uint8_t)addr;
            ++addr;
            if (3 & (uint8_t)~orig_jmp_vector_mask)
                continue;
            if (!((orig_jmp_vector[0] ^ 0x01) & 0x0F)) {
                NVDATA0 = orig_jmp_vector[1];
                NVDATA1 = orig_jmp_vector[0] >> 5;
            } else if (!(7 & (uint8_t)~orig_jmp_vector_mask) && !(0xEF & (0x02 ^ orig_jmp_vector[0]))) {
                NVDATA0 = orig_jmp_vector[2];
                NVDATA1 = orig_jmp_vector[1];
            } else {
                continue;
            }
            NVADDR0 = (uint16_t)&jmp_vector;
            NVADDR1 = ((uint16_t)&jmp_vector) >> 8;
            NVSTATUS = 0x30;
            st = waitflash(128);
            if (st) {
                flash_lock();
                return st;
            }
            if (((uint16_t)NVDATA1) ^ NVDATA0 ^ jmp_vector)
                goto cmperr;
            continue;
        }
        NVADDR0 = (uint8_t)addr & (uint8_t)~1;
        NVADDR1 = addr >> 8;
        if ((uint8_t)(addr >> 8) >= bootloader_reset_vector_hi())
            goto cmperr;
        if (addr & 1) {
            NVDATA0 = 0xff;
            NVDATA1 = *lb++;
            NVSTATUS = 0x30;
            st = waitflash(128);
            if (st)
                goto ferr;
            if (NVDATA1 != *(const __code uint8_t *)addr)
                goto cmperr;
            ++addr;
            continue;
        }
        if (!(cnt & (uint8_t)~1)) {
            NVDATA0 = *lb++;
            NVDATA1 = 0xff;
            NVSTATUS = 0x30;
            st = waitflash(128);
            if (st)
                goto ferr;
            if (NVDATA0 != *(const __code uint8_t *)addr)
                goto cmperr;
            ++addr;
            continue;
        }
        NVDATA0 = *lb++;
        NVDATA1 = *lb++;
        NVSTATUS = 0x30;
        st = waitflash(128);
        if (st)
            goto ferr;
        if (NVDATA0 != *(const __code uint8_t *)addr)
            goto cmperr;
        ++addr;
        if (NVDATA1 != *(const __code uint8_t *)addr)
            goto cmperr;
        ++addr;
        --cnt;
    } while (--cnt);
    flash_lock();
    st = 0;
    for (;;) {
        char ch = getch();
        switch (ch) {
        case '\n':
        case '\r':
            return st;

        case ' ':
        case '\t':
            break;

        default:
            st = -7;
            break;
        }
    }

cmperr:
    flash_lock();
    return -6;

ferr:
    flash_lock();
    return st;
}

static int8_t parse_ihex(void)
{
    uint16_t i = 0;
    uint8_t s = 0;
    do {
        uint8_t val = 0;
        uint8_t cnt = 2;
        do {
            uint8_t ch = getch();
            val <<= 4;
            ch -= '0';
            if (ch < 10) {
                val |= ch;
                continue;
            }
            ch -= ('A' - '0');
            if (ch < 6) {
                val |= ch + 10;
                continue;
            }
            ch -= ('a' - 'A');
            if (ch < 6) {
                val |= ch + 10;
                continue;
            }
            return -3;
        } while (--cnt);
        line_buffer[i++] = val;
        s += val;
    } while (i < 5 + line_buffer[0]);
    if (s)
        return -4;
    if (line_buffer[3])
        return (line_buffer[3] == 1) ? 0 : -5;
    return flash_line();
}

static void write_banner(void)
{
    static const char __code uart_banner[] = "AX8052 Bootloader V1.1 Checksum 0x";
    static const char __code uart_crlf[] = "\r\n";
    uint16_t crc = crc_crc16((const __code uint8_t *)(((uint16_t)bootloader_reset_vector_hi()) << 8),
                             ((uint16_t)(uint8_t)(0xfc - bootloader_reset_vector_hi())) << 8, 0xffff);
    uart0_writestr(uart_banner);
    uart0_writehex16(crc, 4, WRNUM_PADZERO);
    uart0_writestr(uart_crlf);
}

uint8_t _sdcc_external_startup(void)
{
    DPS = 0x00;
    ANALOGA = 0x3F;
    PORTA = 0xC0;
    DIRA = 0x00;
    PORTB = 0xFC;
    DIRB = 0x13;
    PALTB = 0x10;
    PORTC = 0xF3;
    DIRC = 0x0F;
    PORTR = 0xFF;
    DIRR = 0x15;
    RADIOMUX = 0x47;
    RADIOACC = 0x00;
    return 0;
}

#if defined(SDCC)
extern uint8_t _start__stack[];
#endif

void bootloader(void)
{
    static const char __code uart_errunknowncmd[] = "ERR-Unknown Command\r\n";
    static const char __code uart_errflashtimeout[] = "ERR-FLASH Timeout\r\n";
    static const char __code uart_errflashlock[] = "ERR-FLASH Locked\r\n";
    static const char __code uart_errflashvector[] = "ERR-FLASH Vector\r\n";
    static const char __code uart_errflashvdd[] = "ERR-VDD low\r\n";
    static const char __code uart_okflasherase[] = "OK-FLASH Erase\r\n";
    static const char __code uart_okflasherasecheck[] = "OK-FLASH Erase Check\r\n";
    static const char __code uart_errflasherasecheck[] = "ERR-FLASH not Erased\r\n";
    static const char __code uart_okrunapp[] = "OK-Running Application\r\n";
    static const char __code uart_errrunapp[] = "ERR-no Application\r\n";
    static const char __code uart_errhexinvalidchar[] = "ERR-Invalid Hex Character\r\n";
    static const char __code uart_errhexchksum[] = "ERR-Hex Checksum Error\r\n";
    static const char __code uart_errhexrectype[] = "ERR-Unknown Record Type ignored\r\n";
    static const char __code uart_errhexflashwrite[] = "ERR-FLASH write error\r\n";
    static const char __code uart_errhexgarbagechar[] = "ERR-Garbage Characters ignored\r\n";
    static const char __code uart_vdd1[] = "VDD ";
    static const char __code uart_vdd2[] = "V\r\n";

#if !defined(SDCC) && !defined(__ICC8051__)
    _sdcc_external_startup();
#endif

#if defined(SDCC)
    __asm
    .area   HOME    (CODE)
    .area   UART0S0 (CODE)
    .area   UART0S1 (CODE)
    .area   UART0S2 (CODE)
    .area   UART0S3 (CODE)
    .area   UART0S4 (CODE)
    .area   UART0S5 (CODE)
    .area   WTCANSLP0 (CODE)
    .area   WTCANSLP1 (CODE)
    .area   WTCANSLP2 (CODE)
    .area   WTSTDBY0 (CODE)
    .area   WTSTDBY1 (CODE)
    .area   WTSTDBY2 (CODE)
    .area   SSEG (DATA)
__start__stack:
    .ds     1
    .area   CSEG (CODE)
    G$_start__stack$0$0 = __start__stack
    .globl  G$_start__stack$0$0
    __endasm;
#endif

    flash_apply_calibration();
    CLKCON = 0x00;

    // Start application if application looks valid and button SW5 is _not_ pressed
    if (PINB & 0x08 && jmp_vector != 0xFFFF) {
        run_application();
    }

#if BOOTLDR_CALFRCOSC
    // slave FRC Oscillator to LPX oscillator
    FRCOSCREF = 19531;
    FRCOSCKFILT = 2800; /* theoretical maximum is 71582 */
    LPXOSCGM = 0x90;
    OSCFORCERUN |= 0x04;
    FRCOSCCONFIG = (6 << 3) | CLKSRC_LPXOSC;
    // force ready logic
    WTCFGB = (1 << 3) | CLKSRC_LPXOSC;
    // wait for a couple of calibration cycles to get close to the desired frequency
    {
        uint8_t i = 128;
        PORTC_3 = 1;
        OSCCALIB = 0x01;
        IE_5 = 1;
        do {
            for (;;) {
                uint8_t oc = OSCCALIB;
                if (oc & 0x40)
                    break;
                enter_standby();
            }
            FRCOSCFREQ1;
        } while (--i);
        IE_5 = 0;
        OSCCALIB = 0x00;
        PORTC_3 = 0;
    }
#endif

    ADCCH0CONFIG = 0xD9;
    ADCCH1CONFIG = 0xD9;
    ADCCH2CONFIG = 0xD9;
    ADCCH3CONFIG = 0xD9;

    orig_jmp_vector_mask = 0;

    uart_timer0_baud(CLKSRC_FRCOSC, 38400, 20000000);
    uart0_init(0, 8, 1);

#if BOOTLDR_BAUDCLKPA0
    // for debugging, output the baud rate clock at PA0
    PALTA |= 0x01;
    DIRA |= 0x01;
#endif

    write_banner();

    for (;;) {
        char ch = getch();
        switch (ch) {
        case ' ':
        case '\r':
        case '\n':
            break;

        case '?':
            uart0_wait_txfree(63);
            write_banner();
            break;

        case 'K':
        {
            int8_t st = erase_app();
            if (!st)
                st = check_app_erased();
            uart0_wait_txfree(63);
            switch (st) {
            case 0:
                uart0_writestr(uart_okflasherase);
                break;

            case -2:
                uart0_writestr(uart_errflashlock);
                break;

            case -3:
                uart0_writestr(uart_errflashvector);
                break;

            case -4:
                uart0_writestr(uart_errflashvdd);
                break;

            default:
                uart0_writestr(uart_errflashtimeout);
                break;
            }
            break;
        }

        case 'Z':
        {
            int8_t st = check_app_erased();
            uart0_wait_txfree(63);
            switch (st) {
            case 0:
                uart0_writestr(uart_okflasherasecheck);
                break;

            case -3:
                uart0_writestr(uart_errflashvector);
                break;

            default:
                uart0_writestr(uart_errflasherasecheck);
                break;
            }
            break;
        }

        case 'R':
        {
            uart0_wait_txfree(63);
            if (jmp_vector == 0xFFFF) {
                uart0_writestr(uart_errrunapp);
                break;
            }
            uart0_writestr(uart_okrunapp);
            uart0_wait_txfree(63);
            // wait until U0TXEMPTY and U0TXIDLE are both set
            while (0x44 & (uint8_t)~U0STATUS);
            run_application();
            break;
        }

        case ':':
        {
            int8_t st = parse_ihex();
            if (!st)
                break;
            uart0_wait_txfree(63);
            switch (st) {
            case -2:
                uart0_writestr(uart_errflashlock);
                break;

            case -3:
                uart0_writestr(uart_errhexinvalidchar);
                break;

            case -4:
                uart0_writestr(uart_errhexchksum);
                break;

            case -5:
                uart0_writestr(uart_errhexrectype);
                break;

            case -6:
                uart0_writestr(uart_errhexflashwrite);
                break;

            case -7:
                uart0_writestr(uart_errhexgarbagechar);
                break;

            default:
                uart0_writestr(uart_errflashtimeout);
                break;
            }
            break;
        }

        case 'V':
        {
            uint16_t vdd = measurevdd();
            uart0_wait_txfree(63);
            uart0_writestr(uart_vdd1);
            uart0_writenum16(vdd >> 8, 1, 0);
            uart0_tx('.');
            vdd &= 0xff;
            vdd *= 100;
            uart0_writenum16(vdd >> 8, 2, WRNUM_PADZERO);
            uart0_writestr(uart_vdd2);
            break;
        }

        default:
            // clear UART buffer
            uart0_rxadvance(uart0_rxcount());
            uart0_wait_txfree(63);
            uart0_writestr(uart_errunknowncmd);
            break;
        }
    }
}
