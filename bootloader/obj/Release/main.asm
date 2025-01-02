;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _jmp_vector
	.globl _bootloader
	.globl __sdcc_external_startup
	.globl __sdcc_gsinit_startup
	.globl _crc_crc16
	.globl _flash_apply_calibration
	.globl _flash_lock
	.globl _flash_unlock
	.globl _uart0_writehex16
	.globl _uart0_writenum16
	.globl _uart0_writestr
	.globl _uart0_tx
	.globl _uart0_rx
	.globl _uart0_wait_txfree
	.globl _uart0_init
	.globl _uart0_rxadvance
	.globl _uart0_rxcount
	.globl _uart0_poll
	.globl _uart_timer0_baud
	.globl _enter_standby
	.globl _PORTC_7
	.globl _PORTC_6
	.globl _PORTC_5
	.globl _PORTC_4
	.globl _PORTC_3
	.globl _PORTC_2
	.globl _PORTC_1
	.globl _PORTC_0
	.globl _PORTB_7
	.globl _PORTB_6
	.globl _PORTB_5
	.globl _PORTB_4
	.globl _PORTB_3
	.globl _PORTB_2
	.globl _PORTB_1
	.globl _PORTB_0
	.globl _PORTA_7
	.globl _PORTA_6
	.globl _PORTA_5
	.globl _PORTA_4
	.globl _PORTA_3
	.globl _PORTA_2
	.globl _PORTA_1
	.globl _PORTA_0
	.globl _PINC_7
	.globl _PINC_6
	.globl _PINC_5
	.globl _PINC_4
	.globl _PINC_3
	.globl _PINC_2
	.globl _PINC_1
	.globl _PINC_0
	.globl _PINB_7
	.globl _PINB_6
	.globl _PINB_5
	.globl _PINB_4
	.globl _PINB_3
	.globl _PINB_2
	.globl _PINB_1
	.globl _PINB_0
	.globl _PINA_7
	.globl _PINA_6
	.globl _PINA_5
	.globl _PINA_4
	.globl _PINA_3
	.globl _PINA_2
	.globl _PINA_1
	.globl _PINA_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IP_7
	.globl _IP_6
	.globl _IP_5
	.globl _IP_4
	.globl _IP_3
	.globl _IP_2
	.globl _IP_1
	.globl _IP_0
	.globl _EA
	.globl _IE_7
	.globl _IE_6
	.globl _IE_5
	.globl _IE_4
	.globl _IE_3
	.globl _IE_2
	.globl _IE_1
	.globl _IE_0
	.globl _EIP_7
	.globl _EIP_6
	.globl _EIP_5
	.globl _EIP_4
	.globl _EIP_3
	.globl _EIP_2
	.globl _EIP_1
	.globl _EIP_0
	.globl _EIE_7
	.globl _EIE_6
	.globl _EIE_5
	.globl _EIE_4
	.globl _EIE_3
	.globl _EIE_2
	.globl _EIE_1
	.globl _EIE_0
	.globl _E2IP_7
	.globl _E2IP_6
	.globl _E2IP_5
	.globl _E2IP_4
	.globl _E2IP_3
	.globl _E2IP_2
	.globl _E2IP_1
	.globl _E2IP_0
	.globl _E2IE_7
	.globl _E2IE_6
	.globl _E2IE_5
	.globl _E2IE_4
	.globl _E2IE_3
	.globl _E2IE_2
	.globl _E2IE_1
	.globl _E2IE_0
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _WTSTAT
	.globl _WTIRQEN
	.globl _WTEVTD
	.globl _WTEVTD1
	.globl _WTEVTD0
	.globl _WTEVTC
	.globl _WTEVTC1
	.globl _WTEVTC0
	.globl _WTEVTB
	.globl _WTEVTB1
	.globl _WTEVTB0
	.globl _WTEVTA
	.globl _WTEVTA1
	.globl _WTEVTA0
	.globl _WTCNTR1
	.globl _WTCNTB
	.globl _WTCNTB1
	.globl _WTCNTB0
	.globl _WTCNTA
	.globl _WTCNTA1
	.globl _WTCNTA0
	.globl _WTCFGB
	.globl _WTCFGA
	.globl _WDTRESET
	.globl _WDTCFG
	.globl _U1STATUS
	.globl _U1SHREG
	.globl _U1MODE
	.globl _U1CTRL
	.globl _U0STATUS
	.globl _U0SHREG
	.globl _U0MODE
	.globl _U0CTRL
	.globl _T2STATUS
	.globl _T2PERIOD
	.globl _T2PERIOD1
	.globl _T2PERIOD0
	.globl _T2MODE
	.globl _T2CNT
	.globl _T2CNT1
	.globl _T2CNT0
	.globl _T2CLKSRC
	.globl _T1STATUS
	.globl _T1PERIOD
	.globl _T1PERIOD1
	.globl _T1PERIOD0
	.globl _T1MODE
	.globl _T1CNT
	.globl _T1CNT1
	.globl _T1CNT0
	.globl _T1CLKSRC
	.globl _T0STATUS
	.globl _T0PERIOD
	.globl _T0PERIOD1
	.globl _T0PERIOD0
	.globl _T0MODE
	.globl _T0CNT
	.globl _T0CNT1
	.globl _T0CNT0
	.globl _T0CLKSRC
	.globl _SPSTATUS
	.globl _SPSHREG
	.globl _SPMODE
	.globl _SPCLKSRC
	.globl _RADIOSTAT
	.globl _RADIOSTAT1
	.globl _RADIOSTAT0
	.globl _RADIODATA
	.globl _RADIODATA3
	.globl _RADIODATA2
	.globl _RADIODATA1
	.globl _RADIODATA0
	.globl _RADIOADDR
	.globl _RADIOADDR1
	.globl _RADIOADDR0
	.globl _RADIOACC
	.globl _OC1STATUS
	.globl _OC1PIN
	.globl _OC1MODE
	.globl _OC1COMP
	.globl _OC1COMP1
	.globl _OC1COMP0
	.globl _OC0STATUS
	.globl _OC0PIN
	.globl _OC0MODE
	.globl _OC0COMP
	.globl _OC0COMP1
	.globl _OC0COMP0
	.globl _NVSTATUS
	.globl _NVKEY
	.globl _NVDATA
	.globl _NVDATA1
	.globl _NVDATA0
	.globl _NVADDR
	.globl _NVADDR1
	.globl _NVADDR0
	.globl _IC1STATUS
	.globl _IC1MODE
	.globl _IC1CAPT
	.globl _IC1CAPT1
	.globl _IC1CAPT0
	.globl _IC0STATUS
	.globl _IC0MODE
	.globl _IC0CAPT
	.globl _IC0CAPT1
	.globl _IC0CAPT0
	.globl _PORTR
	.globl _PORTC
	.globl _PORTB
	.globl _PORTA
	.globl _PINR
	.globl _PINC
	.globl _PINB
	.globl _PINA
	.globl _DIRR
	.globl _DIRC
	.globl _DIRB
	.globl _DIRA
	.globl _DBGLNKSTAT
	.globl _DBGLNKBUF
	.globl _CODECONFIG
	.globl _CLKSTAT
	.globl _CLKCON
	.globl _ANALOGCOMP
	.globl _ADCCONV
	.globl _ADCCLKSRC
	.globl _ADCCH3CONFIG
	.globl _ADCCH2CONFIG
	.globl _ADCCH1CONFIG
	.globl _ADCCH0CONFIG
	.globl __XPAGE
	.globl _XPAGE
	.globl _SP
	.globl _PSW
	.globl _PCON
	.globl _IP
	.globl _IE
	.globl _EIP
	.globl _EIE
	.globl _E2IP
	.globl _E2IE
	.globl _DPS
	.globl _DPTR1
	.globl _DPTR0
	.globl _DPL1
	.globl _DPL
	.globl _DPH1
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _line_buffer
	.globl _orig_jmp_vector_mask
	.globl _orig_jmp_vector
	.globl _XTALREADY
	.globl _XTALOSC
	.globl _XTALAMPL
	.globl _SILICONREV
	.globl _SCRATCH3
	.globl _SCRATCH2
	.globl _SCRATCH1
	.globl _SCRATCH0
	.globl _RADIOMUX
	.globl _RADIOFSTATADDR
	.globl _RADIOFSTATADDR1
	.globl _RADIOFSTATADDR0
	.globl _RADIOFDATAADDR
	.globl _RADIOFDATAADDR1
	.globl _RADIOFDATAADDR0
	.globl _OSCRUN
	.globl _OSCREADY
	.globl _OSCFORCERUN
	.globl _OSCCALIB
	.globl _MISCCTRL
	.globl _LPXOSCGM
	.globl _LPOSCREF
	.globl _LPOSCREF1
	.globl _LPOSCREF0
	.globl _LPOSCPER
	.globl _LPOSCPER1
	.globl _LPOSCPER0
	.globl _LPOSCKFILT
	.globl _LPOSCKFILT1
	.globl _LPOSCKFILT0
	.globl _LPOSCFREQ
	.globl _LPOSCFREQ1
	.globl _LPOSCFREQ0
	.globl _LPOSCCONFIG
	.globl _PINSEL
	.globl _PINCHGC
	.globl _PINCHGB
	.globl _PINCHGA
	.globl _PALTRADIO
	.globl _PALTC
	.globl _PALTB
	.globl _PALTA
	.globl _INTCHGC
	.globl _INTCHGB
	.globl _INTCHGA
	.globl _EXTIRQ
	.globl _GPIOENABLE
	.globl _ANALOGA
	.globl _FRCOSCREF
	.globl _FRCOSCREF1
	.globl _FRCOSCREF0
	.globl _FRCOSCPER
	.globl _FRCOSCPER1
	.globl _FRCOSCPER0
	.globl _FRCOSCKFILT
	.globl _FRCOSCKFILT1
	.globl _FRCOSCKFILT0
	.globl _FRCOSCFREQ
	.globl _FRCOSCFREQ1
	.globl _FRCOSCFREQ0
	.globl _FRCOSCCTRL
	.globl _FRCOSCCONFIG
	.globl _DMA1CONFIG
	.globl _DMA1ADDR
	.globl _DMA1ADDR1
	.globl _DMA1ADDR0
	.globl _DMA0CONFIG
	.globl _DMA0ADDR
	.globl _DMA0ADDR1
	.globl _DMA0ADDR0
	.globl _ADCTUNE2
	.globl _ADCTUNE1
	.globl _ADCTUNE0
	.globl _ADCCH3VAL
	.globl _ADCCH3VAL1
	.globl _ADCCH3VAL0
	.globl _ADCCH2VAL
	.globl _ADCCH2VAL1
	.globl _ADCCH2VAL0
	.globl _ADCCH1VAL
	.globl _ADCCH1VAL1
	.globl _ADCCH1VAL0
	.globl _ADCCH0VAL
	.globl _ADCCH0VAL1
	.globl _ADCCH0VAL0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DPH1	=	0x0085
_DPL	=	0x0082
_DPL1	=	0x0084
_DPTR0	=	0x8382
_DPTR1	=	0x8584
_DPS	=	0x0086
_E2IE	=	0x00a0
_E2IP	=	0x00c0
_EIE	=	0x0098
_EIP	=	0x00b0
_IE	=	0x00a8
_IP	=	0x00b8
_PCON	=	0x0087
_PSW	=	0x00d0
_SP	=	0x0081
_XPAGE	=	0x00d9
__XPAGE	=	0x00d9
_ADCCH0CONFIG	=	0x00ca
_ADCCH1CONFIG	=	0x00cb
_ADCCH2CONFIG	=	0x00d2
_ADCCH3CONFIG	=	0x00d3
_ADCCLKSRC	=	0x00d1
_ADCCONV	=	0x00c9
_ANALOGCOMP	=	0x00e1
_CLKCON	=	0x00c6
_CLKSTAT	=	0x00c7
_CODECONFIG	=	0x0097
_DBGLNKBUF	=	0x00e3
_DBGLNKSTAT	=	0x00e2
_DIRA	=	0x0089
_DIRB	=	0x008a
_DIRC	=	0x008b
_DIRR	=	0x008e
_PINA	=	0x00c8
_PINB	=	0x00e8
_PINC	=	0x00f8
_PINR	=	0x008d
_PORTA	=	0x0080
_PORTB	=	0x0088
_PORTC	=	0x0090
_PORTR	=	0x008c
_IC0CAPT0	=	0x00ce
_IC0CAPT1	=	0x00cf
_IC0CAPT	=	0xcfce
_IC0MODE	=	0x00cc
_IC0STATUS	=	0x00cd
_IC1CAPT0	=	0x00d6
_IC1CAPT1	=	0x00d7
_IC1CAPT	=	0xd7d6
_IC1MODE	=	0x00d4
_IC1STATUS	=	0x00d5
_NVADDR0	=	0x0092
_NVADDR1	=	0x0093
_NVADDR	=	0x9392
_NVDATA0	=	0x0094
_NVDATA1	=	0x0095
_NVDATA	=	0x9594
_NVKEY	=	0x0096
_NVSTATUS	=	0x0091
_OC0COMP0	=	0x00bc
_OC0COMP1	=	0x00bd
_OC0COMP	=	0xbdbc
_OC0MODE	=	0x00b9
_OC0PIN	=	0x00ba
_OC0STATUS	=	0x00bb
_OC1COMP0	=	0x00c4
_OC1COMP1	=	0x00c5
_OC1COMP	=	0xc5c4
_OC1MODE	=	0x00c1
_OC1PIN	=	0x00c2
_OC1STATUS	=	0x00c3
_RADIOACC	=	0x00b1
_RADIOADDR0	=	0x00b3
_RADIOADDR1	=	0x00b2
_RADIOADDR	=	0xb2b3
_RADIODATA0	=	0x00b7
_RADIODATA1	=	0x00b6
_RADIODATA2	=	0x00b5
_RADIODATA3	=	0x00b4
_RADIODATA	=	0xb4b5b6b7
_RADIOSTAT0	=	0x00be
_RADIOSTAT1	=	0x00bf
_RADIOSTAT	=	0xbfbe
_SPCLKSRC	=	0x00df
_SPMODE	=	0x00dc
_SPSHREG	=	0x00de
_SPSTATUS	=	0x00dd
_T0CLKSRC	=	0x009a
_T0CNT0	=	0x009c
_T0CNT1	=	0x009d
_T0CNT	=	0x9d9c
_T0MODE	=	0x0099
_T0PERIOD0	=	0x009e
_T0PERIOD1	=	0x009f
_T0PERIOD	=	0x9f9e
_T0STATUS	=	0x009b
_T1CLKSRC	=	0x00a2
_T1CNT0	=	0x00a4
_T1CNT1	=	0x00a5
_T1CNT	=	0xa5a4
_T1MODE	=	0x00a1
_T1PERIOD0	=	0x00a6
_T1PERIOD1	=	0x00a7
_T1PERIOD	=	0xa7a6
_T1STATUS	=	0x00a3
_T2CLKSRC	=	0x00aa
_T2CNT0	=	0x00ac
_T2CNT1	=	0x00ad
_T2CNT	=	0xadac
_T2MODE	=	0x00a9
_T2PERIOD0	=	0x00ae
_T2PERIOD1	=	0x00af
_T2PERIOD	=	0xafae
_T2STATUS	=	0x00ab
_U0CTRL	=	0x00e4
_U0MODE	=	0x00e7
_U0SHREG	=	0x00e6
_U0STATUS	=	0x00e5
_U1CTRL	=	0x00ec
_U1MODE	=	0x00ef
_U1SHREG	=	0x00ee
_U1STATUS	=	0x00ed
_WDTCFG	=	0x00da
_WDTRESET	=	0x00db
_WTCFGA	=	0x00f1
_WTCFGB	=	0x00f9
_WTCNTA0	=	0x00f2
_WTCNTA1	=	0x00f3
_WTCNTA	=	0xf3f2
_WTCNTB0	=	0x00fa
_WTCNTB1	=	0x00fb
_WTCNTB	=	0xfbfa
_WTCNTR1	=	0x00eb
_WTEVTA0	=	0x00f4
_WTEVTA1	=	0x00f5
_WTEVTA	=	0xf5f4
_WTEVTB0	=	0x00f6
_WTEVTB1	=	0x00f7
_WTEVTB	=	0xf7f6
_WTEVTC0	=	0x00fc
_WTEVTC1	=	0x00fd
_WTEVTC	=	0xfdfc
_WTEVTD0	=	0x00fe
_WTEVTD1	=	0x00ff
_WTEVTD	=	0xfffe
_WTIRQEN	=	0x00e9
_WTSTAT	=	0x00ea
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_E2IE_0	=	0x00a0
_E2IE_1	=	0x00a1
_E2IE_2	=	0x00a2
_E2IE_3	=	0x00a3
_E2IE_4	=	0x00a4
_E2IE_5	=	0x00a5
_E2IE_6	=	0x00a6
_E2IE_7	=	0x00a7
_E2IP_0	=	0x00c0
_E2IP_1	=	0x00c1
_E2IP_2	=	0x00c2
_E2IP_3	=	0x00c3
_E2IP_4	=	0x00c4
_E2IP_5	=	0x00c5
_E2IP_6	=	0x00c6
_E2IP_7	=	0x00c7
_EIE_0	=	0x0098
_EIE_1	=	0x0099
_EIE_2	=	0x009a
_EIE_3	=	0x009b
_EIE_4	=	0x009c
_EIE_5	=	0x009d
_EIE_6	=	0x009e
_EIE_7	=	0x009f
_EIP_0	=	0x00b0
_EIP_1	=	0x00b1
_EIP_2	=	0x00b2
_EIP_3	=	0x00b3
_EIP_4	=	0x00b4
_EIP_5	=	0x00b5
_EIP_6	=	0x00b6
_EIP_7	=	0x00b7
_IE_0	=	0x00a8
_IE_1	=	0x00a9
_IE_2	=	0x00aa
_IE_3	=	0x00ab
_IE_4	=	0x00ac
_IE_5	=	0x00ad
_IE_6	=	0x00ae
_IE_7	=	0x00af
_EA	=	0x00af
_IP_0	=	0x00b8
_IP_1	=	0x00b9
_IP_2	=	0x00ba
_IP_3	=	0x00bb
_IP_4	=	0x00bc
_IP_5	=	0x00bd
_IP_6	=	0x00be
_IP_7	=	0x00bf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_PINA_0	=	0x00c8
_PINA_1	=	0x00c9
_PINA_2	=	0x00ca
_PINA_3	=	0x00cb
_PINA_4	=	0x00cc
_PINA_5	=	0x00cd
_PINA_6	=	0x00ce
_PINA_7	=	0x00cf
_PINB_0	=	0x00e8
_PINB_1	=	0x00e9
_PINB_2	=	0x00ea
_PINB_3	=	0x00eb
_PINB_4	=	0x00ec
_PINB_5	=	0x00ed
_PINB_6	=	0x00ee
_PINB_7	=	0x00ef
_PINC_0	=	0x00f8
_PINC_1	=	0x00f9
_PINC_2	=	0x00fa
_PINC_3	=	0x00fb
_PINC_4	=	0x00fc
_PINC_5	=	0x00fd
_PINC_6	=	0x00fe
_PINC_7	=	0x00ff
_PORTA_0	=	0x0080
_PORTA_1	=	0x0081
_PORTA_2	=	0x0082
_PORTA_3	=	0x0083
_PORTA_4	=	0x0084
_PORTA_5	=	0x0085
_PORTA_6	=	0x0086
_PORTA_7	=	0x0087
_PORTB_0	=	0x0088
_PORTB_1	=	0x0089
_PORTB_2	=	0x008a
_PORTB_3	=	0x008b
_PORTB_4	=	0x008c
_PORTB_5	=	0x008d
_PORTB_6	=	0x008e
_PORTB_7	=	0x008f
_PORTC_0	=	0x0090
_PORTC_1	=	0x0091
_PORTC_2	=	0x0092
_PORTC_3	=	0x0093
_PORTC_4	=	0x0094
_PORTC_5	=	0x0095
_PORTC_6	=	0x0096
_PORTC_7	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_flash_line_lb_1_139:
	.ds 2
_flash_line_cnt_1_139:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ADCCH0VAL0	=	0x7020
_ADCCH0VAL1	=	0x7021
_ADCCH0VAL	=	0x7020
_ADCCH1VAL0	=	0x7022
_ADCCH1VAL1	=	0x7023
_ADCCH1VAL	=	0x7022
_ADCCH2VAL0	=	0x7024
_ADCCH2VAL1	=	0x7025
_ADCCH2VAL	=	0x7024
_ADCCH3VAL0	=	0x7026
_ADCCH3VAL1	=	0x7027
_ADCCH3VAL	=	0x7026
_ADCTUNE0	=	0x7028
_ADCTUNE1	=	0x7029
_ADCTUNE2	=	0x702a
_DMA0ADDR0	=	0x7010
_DMA0ADDR1	=	0x7011
_DMA0ADDR	=	0x7010
_DMA0CONFIG	=	0x7014
_DMA1ADDR0	=	0x7012
_DMA1ADDR1	=	0x7013
_DMA1ADDR	=	0x7012
_DMA1CONFIG	=	0x7015
_FRCOSCCONFIG	=	0x7070
_FRCOSCCTRL	=	0x7071
_FRCOSCFREQ0	=	0x7076
_FRCOSCFREQ1	=	0x7077
_FRCOSCFREQ	=	0x7076
_FRCOSCKFILT0	=	0x7072
_FRCOSCKFILT1	=	0x7073
_FRCOSCKFILT	=	0x7072
_FRCOSCPER0	=	0x7078
_FRCOSCPER1	=	0x7079
_FRCOSCPER	=	0x7078
_FRCOSCREF0	=	0x7074
_FRCOSCREF1	=	0x7075
_FRCOSCREF	=	0x7074
_ANALOGA	=	0x7007
_GPIOENABLE	=	0x700c
_EXTIRQ	=	0x7003
_INTCHGA	=	0x7000
_INTCHGB	=	0x7001
_INTCHGC	=	0x7002
_PALTA	=	0x7008
_PALTB	=	0x7009
_PALTC	=	0x700a
_PALTRADIO	=	0x7046
_PINCHGA	=	0x7004
_PINCHGB	=	0x7005
_PINCHGC	=	0x7006
_PINSEL	=	0x700b
_LPOSCCONFIG	=	0x7060
_LPOSCFREQ0	=	0x7066
_LPOSCFREQ1	=	0x7067
_LPOSCFREQ	=	0x7066
_LPOSCKFILT0	=	0x7062
_LPOSCKFILT1	=	0x7063
_LPOSCKFILT	=	0x7062
_LPOSCPER0	=	0x7068
_LPOSCPER1	=	0x7069
_LPOSCPER	=	0x7068
_LPOSCREF0	=	0x7064
_LPOSCREF1	=	0x7065
_LPOSCREF	=	0x7064
_LPXOSCGM	=	0x7054
_MISCCTRL	=	0x7f01
_OSCCALIB	=	0x7053
_OSCFORCERUN	=	0x7050
_OSCREADY	=	0x7052
_OSCRUN	=	0x7051
_RADIOFDATAADDR0	=	0x7040
_RADIOFDATAADDR1	=	0x7041
_RADIOFDATAADDR	=	0x7040
_RADIOFSTATADDR0	=	0x7042
_RADIOFSTATADDR1	=	0x7043
_RADIOFSTATADDR	=	0x7042
_RADIOMUX	=	0x7044
_SCRATCH0	=	0x7084
_SCRATCH1	=	0x7085
_SCRATCH2	=	0x7086
_SCRATCH3	=	0x7087
_SILICONREV	=	0x7f00
_XTALAMPL	=	0x7f19
_XTALOSC	=	0x7f18
_XTALREADY	=	0x7f1a
_flash_deviceid	=	0xfc06
_orig_jmp_vector::
	.ds 3
_orig_jmp_vector_mask::
	.ds 1
_line_buffer::
	.ds 260
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'run_application'
;------------------------------------------------------------
;	main.c:39: static void run_application(void)
;	-----------------------------------------
;	 function run_application
;	-----------------------------------------
_run_application:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:41: OSCFORCERUN = 0x00;
	mov	dptr,#_OSCFORCERUN
	clr	a
	movx	@dptr,a
;	main.c:42: FRCOSCCONFIG = 0x01;
	mov	dptr,#_FRCOSCCONFIG
	inc	a
	movx	@dptr,a
;	main.c:43: WTCFGB = 0x0F;
	mov	_WTCFGB,#0x0f
;	main.c:44: IE = EIE = E2IE = 0;
	mov	_E2IE,#0x00
	mov	_EIE,#0x00
	mov	_IE,#0x00
;	main.c:45: CLKCON = 0x08;
	mov	_CLKCON,#0x08
;	main.c:57: __endasm;
	mov	dptr,#_jmp_vector
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	dph,a
	mov	dpl,r0
	clr	a
	mov	_SP,#7
	jmp	@a+dptr
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitflash'
;------------------------------------------------------------
;timeout                   Allocated to registers r6 r7 
;cnth                      Allocated to registers r5 
;cntl                      Allocated to registers r6 
;st                        Allocated to registers r5 
;------------------------------------------------------------
;	main.c:60: static int8_t waitflash(uint16_t timeout)
;	-----------------------------------------
;	 function waitflash
;	-----------------------------------------
_waitflash:
	mov	r6,dpl
	mov	r7,dph
;	main.c:62: uint8_t cnth = timeout >> 8;
	mov	ar5,r7
;	main.c:63: uint8_t cntl = timeout;
;	main.c:64: ++cnth;
	mov	a,r5
	inc	a
	mov	r7,a
;	main.c:65: ++cntl;
	inc	r6
;	main.c:67: do {
00105$:
;	main.c:68: uint8_t st = NVSTATUS;
;	main.c:69: if (!(st & 2))
	mov	a,_NVSTATUS
	mov	r5,a
	jb	acc.1,00102$
;	main.c:70: return -2;
	mov	dpl,#0xfe
	ret
00102$:
;	main.c:71: if (!(st & 1))
	mov	a,r5
	jb	acc.0,00104$
;	main.c:72: return 0;
	mov	dpl,#0x00
	ret
00104$:
;	main.c:73: uart0_poll();
	lcall	_uart0_poll
;	main.c:74: --cntl;
;	main.c:76: while (cntl);
	djnz	r6,00105$
;	main.c:77: --cnth;
	djnz	r7,00105$
;	main.c:79: while (cnth);
;	main.c:80: return -1;
	mov	dpl,#0xff
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getch'
;------------------------------------------------------------
;	main.c:83: static char getch(void)
;	-----------------------------------------
;	 function getch
;	-----------------------------------------
_getch:
;	main.c:85: while (!uart0_rxcount()) {
00103$:
	lcall	_uart0_rxcount
	mov	a,dpl
	jnz	00105$
;	main.c:86: if (uart0_poll())
	lcall	_uart0_poll
	mov	a,dpl
	jnz	00103$
;	main.c:88: enter_standby();
	lcall	_enter_standby
	sjmp	00103$
00105$:
;	main.c:90: return uart0_rx();
	ljmp	_uart0_rx
;------------------------------------------------------------
;Allocation info for local variables in function 'measurevdd'
;------------------------------------------------------------
;vdd                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:93: static uint16_t measurevdd(void)
;	-----------------------------------------
;	 function measurevdd
;	-----------------------------------------
_measurevdd:
;	main.c:96: ADCCLKSRC = 0x30;
	mov	_ADCCLKSRC,#0x30
;	main.c:97: ADCCONV = 0x01;
	mov	_ADCCONV,#0x01
;	main.c:98: while (ADCCLKSRC & 0x80) {
00101$:
	mov	a,_ADCCLKSRC
	jnb	acc.7,00103$
;	main.c:99: uart0_poll();
	lcall	_uart0_poll
	sjmp	00101$
00103$:
;	main.c:101: ADCCLKSRC = 0x07;
	mov	_ADCCLKSRC,#0x07
;	main.c:102: vdd = (ADCCH0VAL >> 2) + (ADCCH1VAL >> 2) + (ADCCH2VAL >> 2) + (ADCCH3VAL >> 2);
	mov	dptr,#_ADCCH0VAL
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	dptr,#_ADCCH1VAL
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_ADCCH2VAL
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_ADCCH3VAL
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
;	main.c:104: vdd >>= 5;
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
;	main.c:105: vdd += vdd >> 2;
	mov	r7,a
	mov	ar4,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	main.c:106: vdd -= 9 << 7;
	mov	a,r6
	add	a,#0x80
	mov	r6,a
	mov	a,r7
	addc	a,#0xfb
;	main.c:107: return vdd;
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'erase_page_write_resetvec'
;------------------------------------------------------------
;st                        Allocated to registers r7 
;pmem                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:110: static int8_t erase_page_write_resetvec(void)
;	-----------------------------------------
;	 function erase_page_write_resetvec
;	-----------------------------------------
_erase_page_write_resetvec:
;	main.c:114: if (measurevdd() < BOOTLDR_MINVDD)
	lcall	_measurevdd
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x02
	jnc	00102$
;	main.c:115: return -4;
	mov	dpl,#0xfc
	ret
00102$:
;	main.c:116: NVADDR0 = 0x00;
	mov	_NVADDR0,#0x00
;	main.c:117: NVSTATUS = 0x20;
	mov	_NVSTATUS,#0x20
;	main.c:118: st = waitflash(65535);
	mov	dptr,#0xffff
	lcall	_waitflash
;	main.c:119: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00104$
;	main.c:120: return st;
	mov	dpl,r7
	ret
00104$:
;	main.c:122: if (measurevdd() < BOOTLDR_MINVDD)
	lcall	_measurevdd
	mov	r5,dpl
	mov	r6,dph
	clr	c
	mov	a,r5
	subb	a,#0x80
	mov	a,r6
	subb	a,#0x02
	jnc	00106$
;	main.c:123: return -4;
	mov	dpl,#0xfc
	ret
00106$:
;	main.c:124: NVADDR0 = 0x02;
	mov	_NVADDR0,#0x02
;	main.c:125: NVDATA0 = bootloader_reset_vector_lo();
	mov	r5,#__sdcc_gsinit_startup
	mov	_NVDATA0,r5
;	main.c:126: NVDATA1 = 0xff;
	mov	_NVDATA1,#0xff
;	main.c:127: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:128: st = waitflash(128);
	mov	dptr,#0x0080
	lcall	_waitflash
;	main.c:129: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00108$
;	main.c:130: return st;
	mov	dpl,r7
	ret
00108$:
;	main.c:131: NVADDR0 = 0x00;
	mov	_NVADDR0,#0x00
;	main.c:132: NVDATA0 = 0x02;
	mov	_NVDATA0,#0x02
;	main.c:133: NVDATA1 = bootloader_reset_vector_hi();
	mov	r6,#(__sdcc_gsinit_startup >> 8)
	mov	_NVDATA1,r6
;	main.c:134: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:135: st = waitflash(128);
	mov	dptr,#0x0080
	lcall	_waitflash
;	main.c:136: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00110$
;	main.c:137: return st;
	mov	dpl,r7
	ret
00110$:
;	main.c:139: const __code uint8_t *pmem = (const __code uint8_t *)(((uint16_t)NVADDR1) << 8);
	mov	r7,_NVADDR1
	mov	r6,#0x00
;	main.c:140: if (*pmem++ != 0x02)
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	cjne	r5,#0x02,00148$
	sjmp	00112$
00148$:
;	main.c:141: return -3;
	mov	dpl,#0xfd
	ret
00112$:
;	main.c:142: if (*pmem++ != bootloader_reset_vector_hi())
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	r3,#__sdcc_gsinit_startup
	mov	r4,#(__sdcc_gsinit_startup >> 8)
	mov	ar2,r4
	mov	a,r5
	cjne	a,ar2,00149$
	sjmp	00114$
00149$:
;	main.c:143: return -3;
	mov	dpl,#0xfd
	ret
00114$:
;	main.c:144: if (*pmem++ != bootloader_reset_vector_lo())
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	a,ar3,00150$
	sjmp	00116$
00150$:
;	main.c:145: return -3;
	mov	dpl,#0xfd
	ret
00116$:
;	main.c:147: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'erase_app'
;------------------------------------------------------------
;st                        Allocated to registers r7 
;pg                        Allocated to registers r6 
;------------------------------------------------------------
;	main.c:150: static int8_t erase_app(void)
;	-----------------------------------------
;	 function erase_app
;	-----------------------------------------
_erase_app:
;	main.c:154: orig_jmp_vector_mask = 0;
	mov	dptr,#_orig_jmp_vector_mask
	clr	a
	movx	@dptr,a
;	main.c:155: flash_unlock();
	lcall	_flash_unlock
;	main.c:156: NVADDR1 = 0x04;
	mov	_NVADDR1,#0x04
;	main.c:157: st = erase_page_write_resetvec();
	lcall	_erase_page_write_resetvec
;	main.c:158: if (st)
	mov	a,dpl
	mov	r7,a
;	main.c:160: NVADDR1 = 0x00;
	jnz	00110$
	mov	_NVADDR1,a
;	main.c:161: st = erase_page_write_resetvec();
	lcall	_erase_page_write_resetvec
;	main.c:162: if (st)
	mov	a,dpl
	mov	r7,a
;	main.c:166: NVADDR0 = 0x00;
	jnz	00110$
	mov	_NVADDR0,a
;	main.c:167: do {
	mov	r6,#0x04
00107$:
;	main.c:168: NVADDR1 = pg;
	mov	_NVADDR1,r6
;	main.c:169: NVSTATUS = 0x20;
	mov	_NVSTATUS,#0x20
;	main.c:170: st = waitflash(65535);
	mov	dptr,#0xffff
	push	ar6
	lcall	_waitflash
	mov	r7,dpl
	pop	ar6
;	main.c:171: if (st)
	mov	a,r7
	jnz	00110$
;	main.c:173: pg += 4;
	mov	a,r6
	add	a,#0x04
	mov	r6,a
;	main.c:174: } while (pg != bootloader_reset_vector_hi());
	mov	r5,#(__sdcc_gsinit_startup >> 8)
	mov	ar4,r5
	mov	a,r6
	cjne	a,ar4,00107$
;	main.c:175: flash_lock();
	lcall	_flash_lock
;	main.c:176: return 0;
	mov	dpl,#0x00
;	main.c:177: ferr:
	ret
00110$:
;	main.c:178: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
;	main.c:179: return st;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_app_erased'
;------------------------------------------------------------
;pmem                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:182: static int8_t check_app_erased(void)
;	-----------------------------------------
;	 function check_app_erased
;	-----------------------------------------
_check_app_erased:
;	main.c:185: if (*pmem++ != 0x02)
	mov	dptr,#0x0000
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x02,00132$
	sjmp	00102$
00132$:
;	main.c:186: return -3;
	mov	dpl,#0xfd
	ret
00102$:
;	main.c:187: if (*pmem++ != bootloader_reset_vector_hi())
	mov	dptr,#0x0001
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#__sdcc_gsinit_startup
	mov	r6,#(__sdcc_gsinit_startup >> 8)
	mov	ar4,r6
	mov	a,r7
	cjne	a,ar4,00133$
	sjmp	00104$
00133$:
;	main.c:188: return -3;
	mov	dpl,#0xfd
	ret
00104$:
;	main.c:189: if (*pmem++ != bootloader_reset_vector_lo())
	mov	dptr,#0x0002
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r2,#0x03
	mov	r3,#0x00
	mov	a,r7
	cjne	a,ar5,00134$
	sjmp	00118$
00134$:
;	main.c:190: return -3;
	mov	dpl,#0xfd
;	main.c:191: do {
	ret
00118$:
	mov	ar6,r2
	mov	ar7,r3
00109$:
;	main.c:192: if (*pmem++ != 0xFF)
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	cjne	r5,#0xff,00135$
	sjmp	00110$
00135$:
;	main.c:193: return -1;
	mov	dpl,#0xff
	ret
00110$:
;	main.c:194: } while ((uint8_t)(((uint16_t)pmem) >> 8) != bootloader_reset_vector_hi());
	mov	ar3,r6
	mov	ar5,r7
	mov	ar3,r5
	mov	a,r3
	cjne	a,ar4,00109$
;	main.c:195: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_line'
;------------------------------------------------------------
;lb                        Allocated with name '_flash_line_lb_1_139'
;addr                      Allocated to registers r5 r6 
;cnt                       Allocated with name '_flash_line_cnt_1_139'
;st                        Allocated to registers r7 
;ch                        Allocated to registers r6 
;------------------------------------------------------------
;	main.c:198: static int8_t flash_line(void)
;	-----------------------------------------
;	 function flash_line
;	-----------------------------------------
_flash_line:
;	main.c:202: uint8_t cnt = line_buffer[0];
	mov	dptr,#_line_buffer
	movx	a,@dptr
;	main.c:204: if (!cnt)
	mov	_flash_line_cnt_1_139,a
;	main.c:205: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	main.c:206: addr = line_buffer[1];
	mov	dptr,#(_line_buffer + 0x0001)
	movx	a,@dptr
;	main.c:207: addr <<= 8;
	mov	r6,a
	mov	r5,#0x00
;	main.c:208: addr |= line_buffer[2];
	mov	dptr,#(_line_buffer + 0x0002)
	movx	a,@dptr
	mov	r3,#0x00
	orl	ar5,a
	mov	a,r3
	orl	ar6,a
;	main.c:209: lb = &line_buffer[4];
	mov	a,#0x04
	add	a,#_line_buffer
	mov	_flash_line_lb_1_139,a
	clr	a
	addc	a,#(_line_buffer >> 8)
	mov	(_flash_line_lb_1_139 + 1),a
;	main.c:210: flash_unlock();
	push	ar6
	push	ar5
	lcall	_flash_unlock
	pop	ar5
	pop	ar6
;	main.c:211: do {
00138$:
;	main.c:212: if (addr < 3) {
	clr	c
	mov	a,r5
	subb	a,#0x03
	mov	a,r6
	subb	a,#0x00
	jc	00230$
	ljmp	00117$
00230$:
;	main.c:213: orig_jmp_vector[(uint8_t)addr] = *lb++;
	mov	ar2,r5
	mov	a,r2
	add	a,#_orig_jmp_vector
	mov	r0,a
	clr	a
	addc	a,#(_orig_jmp_vector >> 8)
	mov	r1,a
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
	mov	dpl,r0
	mov	dph,r1
	mov	a,r7
	movx	@dptr,a
;	main.c:214: orig_jmp_vector_mask |= 1 << (uint8_t)addr;
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00233$
00231$:
	add	a,acc
00233$:
	djnz	b,00231$
	mov	r2,a
	mov	dptr,#_orig_jmp_vector_mask
	movx	a,@dptr
	mov	r7,a
	orl	a,r2
	movx	@dptr,a
;	main.c:215: ++addr;
	inc	r5
	cjne	r5,#0x00,00234$
	inc	r6
00234$:
;	main.c:216: if (3 & (uint8_t)~orig_jmp_vector_mask)
	mov	dptr,#_orig_jmp_vector_mask
	movx	a,@dptr
	cpl	a
	mov	r7,a
	anl	a,#0x03
	jz	00236$
	ljmp	00139$
00236$:
;	main.c:218: if (!((orig_jmp_vector[0] ^ 0x01) & 0x0F)) {
	mov	dptr,#_orig_jmp_vector
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x01
	xrl	a,r2
	anl	a,#0x0f
	jnz	00110$
;	main.c:219: NVDATA0 = orig_jmp_vector[1];
	mov	dptr,#(_orig_jmp_vector + 0x0001)
	movx	a,@dptr
	mov	_NVDATA0,a
;	main.c:220: NVDATA1 = orig_jmp_vector[0] >> 5;
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	mov	_NVDATA1,a
	sjmp	00111$
00110$:
;	main.c:221: } else if (!(7 & (uint8_t)~orig_jmp_vector_mask) && !(0xEF & (0x02 ^ orig_jmp_vector[0]))) {
	mov	a,r7
	anl	a,#0x07
	jz	00240$
	ljmp	00139$
00240$:
	mov	a,#0x02
	xrl	a,r2
	anl	a,#0xef
	jz	00242$
	ljmp	00139$
00242$:
;	main.c:222: NVDATA0 = orig_jmp_vector[2];
	mov	dptr,#(_orig_jmp_vector + 0x0002)
	movx	a,@dptr
	mov	_NVDATA0,a
;	main.c:223: NVDATA1 = orig_jmp_vector[1];
	mov	dptr,#(_orig_jmp_vector + 0x0001)
	movx	a,@dptr
	mov	_NVDATA1,a
;	main.c:225: continue;
00111$:
;	main.c:227: NVADDR0 = (uint16_t)&jmp_vector;
	mov	r2,#_jmp_vector
	mov	r7,#(_jmp_vector >> 8)
	mov	_NVADDR0,r2
;	main.c:228: NVADDR1 = ((uint16_t)&jmp_vector) >> 8;
	mov	r2,#_jmp_vector
	mov	r7,#(_jmp_vector >> 8)
	mov	_NVADDR1,r7
;	main.c:229: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:230: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	main.c:231: if (st) {
	mov	a,r7
	jz	00113$
;	main.c:232: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
;	main.c:233: return st;
	mov	dpl,r7
	ret
00113$:
;	main.c:235: if (((uint16_t)NVDATA1) ^ NVDATA0 ^ jmp_vector)
	mov	r1,_NVDATA1
	mov	r2,#0x00
	mov	r0,_NVDATA0
	mov	r4,#0x00
	mov	a,r0
	xrl	ar1,a
	mov	a,r4
	xrl	ar2,a
	mov	dptr,#_jmp_vector
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r3
	xrl	ar1,a
	mov	a,r4
	xrl	ar2,a
	mov	a,r1
	orl	a,r2
	jnz	00244$
	ljmp	00139$
00244$:
;	main.c:236: goto cmperr;
	ljmp	00148$
;	main.c:237: continue;
00117$:
;	main.c:239: NVADDR0 = (uint8_t)addr & (uint8_t)~1;
	mov	ar4,r5
	mov	a,#0xfe
	anl	a,r4
	mov	_NVADDR0,a
;	main.c:240: NVADDR1 = addr >> 8;
	mov	ar4,r6
	mov	_NVADDR1,r4
;	main.c:241: if ((uint8_t)(addr >> 8) >= bootloader_reset_vector_hi())
	mov	r3,#(__sdcc_gsinit_startup >> 8)
	mov	ar2,r3
	clr	c
	mov	a,r4
	subb	a,r2
	jc	00245$
	ljmp	00148$
00245$:
;	main.c:243: if (addr & 1) {
	mov	a,r5
	jnb	acc.0,00125$
;	main.c:244: NVDATA0 = 0xff;
	mov	_NVDATA0,#0xff
;	main.c:245: NVDATA1 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA1,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
;	main.c:246: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:247: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	main.c:248: if (st)
	mov	a,r7
	jz	00247$
	ljmp	00149$
00247$:
;	main.c:250: if (NVDATA1 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA1,00248$
	sjmp	00249$
00248$:
	ljmp	00148$
00249$:
;	main.c:252: ++addr;
	inc	r5
	cjne	r5,#0x00,00250$
	inc	r6
00250$:
;	main.c:253: continue;
	ljmp	00139$
00125$:
;	main.c:255: if (!(cnt & (uint8_t)~1)) {
	mov	a,_flash_line_cnt_1_139
	anl	a,#0xfe
	jnz	00131$
;	main.c:256: NVDATA0 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA0,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
;	main.c:257: NVDATA1 = 0xff;
	mov	_NVDATA1,#0xff
;	main.c:258: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:259: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	main.c:260: if (st)
	mov	a,r7
	jz	00253$
	ljmp	00149$
00253$:
;	main.c:262: if (NVDATA0 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA0,00254$
	sjmp	00255$
00254$:
	ljmp	00148$
00255$:
;	main.c:264: ++addr;
	inc	r5
;	main.c:265: continue;
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00131$:
;	main.c:267: NVDATA0 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA0,a
	inc	dptr
;	main.c:268: NVDATA1 = *lb++;
	mov	_flash_line_lb_1_139,dpl
	mov  (_flash_line_lb_1_139 + 1),dph
	movx	a,@dptr
	mov	_NVDATA1,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
;	main.c:269: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
;	main.c:270: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	main.c:271: if (st)
	mov	a,r7
	jnz	00149$
;	main.c:273: if (NVDATA0 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA0,00148$
;	main.c:275: ++addr;
	inc	r5
	cjne	r5,#0x00,00260$
	inc	r6
00260$:
;	main.c:276: if (NVDATA1 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA1,00148$
;	main.c:278: ++addr;
	inc	r5
	cjne	r5,#0x00,00263$
	inc	r6
00263$:
;	main.c:279: --cnt;
	dec	_flash_line_cnt_1_139
00139$:
;	main.c:280: } while (--cnt);
	djnz	_flash_line_cnt_1_139,00264$
	sjmp	00265$
00264$:
	ljmp	00138$
00265$:
;	main.c:281: flash_lock();
	lcall	_flash_lock
;	main.c:282: st = 0;
	mov	r7,#0x00
00150$:
;	main.c:284: char ch = getch();
	push	ar7
	lcall	_getch
	mov	r6,dpl
	pop	ar7
;	main.c:285: switch (ch) {
	cjne	r6,#0x09,00266$
	sjmp	00150$
00266$:
	cjne	r6,#0x0a,00267$
	sjmp	00142$
00267$:
	cjne	r6,#0x0d,00268$
	sjmp	00142$
00268$:
;	main.c:287: case '\r':
	cjne	r6,#0x20,00145$
	sjmp	00150$
00142$:
;	main.c:288: return st;
	mov	dpl,r7
;	main.c:294: default:
	ret
00145$:
;	main.c:295: st = -7;
	mov	r7,#0xf9
;	main.c:297: }
;	main.c:300: cmperr:
	sjmp	00150$
00148$:
;	main.c:301: flash_lock();
	lcall	_flash_lock
;	main.c:302: return -6;
	mov	dpl,#0xfa
;	main.c:304: ferr:
	ret
00149$:
;	main.c:305: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
;	main.c:306: return st;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_ihex'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 
;s                         Allocated to registers r7 
;val                       Allocated to registers r4 
;cnt                       Allocated to registers r3 
;ch                        Allocated to registers r2 
;------------------------------------------------------------
;	main.c:309: static int8_t parse_ihex(void)
;	-----------------------------------------
;	 function parse_ihex
;	-----------------------------------------
_parse_ihex:
;	main.c:312: uint8_t s = 0;
	mov	r7,#0x00
;	main.c:313: do {
	mov	r5,#0x00
	mov	r6,#0x00
00110$:
;	main.c:314: uint8_t val = 0;
	mov	r4,#0x00
;	main.c:315: uint8_t cnt = 2;
	mov	r3,#0x02
;	main.c:316: do {
00107$:
;	main.c:317: uint8_t ch = getch();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getch
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:318: val <<= 4;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	main.c:319: ch -= '0';
	mov	ar1,r2
	mov	a,r1
	add	a,#0xd0
	mov	r2,a
;	main.c:320: if (ch < 10) {
	cjne	r2,#0x0a,00151$
00151$:
	jnc	00102$
;	main.c:321: val |= ch;
	mov	a,r2
	orl	ar4,a
;	main.c:322: continue;
	sjmp	00108$
00102$:
;	main.c:324: ch -= ('A' - '0');
	mov	ar1,r2
	mov	a,r1
	add	a,#0xef
	mov	r2,a
;	main.c:325: if (ch < 6) {
	cjne	r2,#0x06,00153$
00153$:
	jnc	00104$
;	main.c:326: val |= ch + 10;
	mov	a,#0x0a
	add	a,r2
	orl	ar4,a
;	main.c:327: continue;
	sjmp	00108$
00104$:
;	main.c:329: ch -= ('a' - 'A');
	mov	ar1,r2
	mov	a,r1
	add	a,#0xe0
	mov	r2,a
;	main.c:330: if (ch < 6) {
	cjne	r2,#0x06,00155$
00155$:
	jnc	00106$
;	main.c:331: val |= ch + 10;
	mov	a,#0x0a
	add	a,r2
	orl	ar4,a
;	main.c:332: continue;
	sjmp	00108$
00106$:
;	main.c:334: return -3;
	mov	dpl,#0xfd
	ret
00108$:
;	main.c:335: } while (--cnt);
	mov	a,r3
	dec	a
	mov	r2,a
	mov	r3,a
	jnz	00107$
;	main.c:336: line_buffer[i++] = val;
	mov	ar2,r5
	mov	ar3,r6
	inc	r5
	cjne	r5,#0x00,00158$
	inc	r6
00158$:
	mov	a,r2
	add	a,#_line_buffer
	mov	dpl,a
	mov	a,r3
	addc	a,#(_line_buffer >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	main.c:337: s += val;
	mov	a,r4
	add	a,r7
	mov	r7,a
;	main.c:338: } while (i < 5 + line_buffer[0]);
	mov	dptr,#_line_buffer
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x05
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r4
	mov	a,r6
	subb	a,r3
	jnc	00159$
	ljmp	00110$
00159$:
;	main.c:339: if (s)
	mov	a,r7
	jz	00114$
;	main.c:340: return -4;
	mov	dpl,#0xfc
	ret
00114$:
;	main.c:341: if (line_buffer[3])
	mov	dptr,#(_line_buffer + 0x0003)
	movx	a,@dptr
	mov	r7,a
	jz	00116$
;	main.c:342: return (line_buffer[3] == 1) ? 0 : -5;
	cjne	r7,#0x01,00119$
	mov	r7,#0x00
	sjmp	00120$
00119$:
	mov	r7,#0xfb
00120$:
	mov	dpl,r7
	ret
00116$:
;	main.c:343: return flash_line();
	ljmp	_flash_line
;------------------------------------------------------------
;Allocation info for local variables in function 'write_banner'
;------------------------------------------------------------
;crc                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:346: static void write_banner(void)
;	-----------------------------------------
;	 function write_banner
;	-----------------------------------------
_write_banner:
;	main.c:350: uint16_t crc = crc_crc16((const __code uint8_t *)(((uint16_t)bootloader_reset_vector_hi()) << 8),
	mov	r7,#(__sdcc_gsinit_startup >> 8)
	mov	ar6,r7
	mov	a,#0xfc
	clr	c
	subb	a,r6
	mov	r5,a
	mov	r7,#0x00
	mov	ar4,r6
	mov	r6,#0x00
	mov	r3,#0x80
	mov	a,#0xff
	push	acc
	push	acc
	push	ar7
	push	ar5
	mov	dpl,r6
	mov	dph,r4
	mov	b,r3
	lcall	_crc_crc16
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:352: uart0_writestr(uart_banner);
	mov	dptr,#_write_banner_uart_banner_1_158
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_uart0_writestr
	pop	ar6
	pop	ar7
;	main.c:353: uart0_writehex16(crc, 4, WRNUM_PADZERO);
	mov	a,#0x08
	push	acc
	rr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_uart0_writehex16
	dec	sp
	dec	sp
;	main.c:354: uart0_writestr(uart_crlf);
	mov	dptr,#_write_banner_uart_crlf_1_158
	mov	b,#0x80
	ljmp	_uart0_writestr
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:357: uint8_t _sdcc_external_startup(void)
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	main.c:359: DPS = 0x00;
	mov	_DPS,#0x00
;	main.c:360: ANALOGA = 0x3F;
	mov	dptr,#_ANALOGA
	mov	a,#0x3f
	movx	@dptr,a
;	main.c:361: PORTA = 0xC0;
	mov	_PORTA,#0xc0
;	main.c:362: DIRA = 0x00;
	mov	_DIRA,#0x00
;	main.c:363: PORTB = 0xFC;
	mov	_PORTB,#0xfc
;	main.c:364: DIRB = 0x13;
	mov	_DIRB,#0x13
;	main.c:365: PALTB = 0x10;
	mov	dptr,#_PALTB
	mov	a,#0x10
	movx	@dptr,a
;	main.c:366: PORTC = 0xF3;
	mov	_PORTC,#0xf3
;	main.c:367: DIRC = 0x0F;
	mov	_DIRC,#0x0f
;	main.c:368: PORTR = 0xFF;
	mov	_PORTR,#0xff
;	main.c:369: DIRR = 0x15;
	mov	_DIRR,#0x15
;	main.c:370: RADIOMUX = 0x47;
	mov	dptr,#_RADIOMUX
	mov	a,#0x47
	movx	@dptr,a
;	main.c:371: RADIOACC = 0x00;
	mov	_RADIOACC,#0x00
;	main.c:372: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bootloader'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;oc                        Allocated to registers r6 
;ch                        Allocated to registers r7 
;st                        Allocated to registers r7 
;st                        Allocated to registers r7 
;st                        Allocated to registers r7 
;vdd                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:379: void bootloader(void)
;	-----------------------------------------
;	 function bootloader
;	-----------------------------------------
_bootloader:
;	main.c:424: __endasm;
	.area	HOME (CODE)
	.area	UART0S0 (CODE)
	.area	UART0S1 (CODE)
	.area	UART0S2 (CODE)
	.area	UART0S3 (CODE)
	.area	UART0S4 (CODE)
	.area	UART0S5 (CODE)
	.area	WTCANSLP0 (CODE)
	.area	WTCANSLP1 (CODE)
	.area	WTCANSLP2 (CODE)
	.area	WTSTDBY0 (CODE)
	.area	WTSTDBY1 (CODE)
	.area	WTSTDBY2 (CODE)
	.area	SSEG (DATA)
	__start__stack:
	.ds	1
	.area	CSEG (CODE)
	G$_start__stack$0$0	= __start__stack
	.globl	G$_start__stack$0$0
;	main.c:427: flash_apply_calibration();
	lcall	_flash_apply_calibration
;	main.c:428: CLKCON = 0x00;
	mov	_CLKCON,#0x00
;	main.c:431: if (PINB & 0x08 && jmp_vector != 0xFFFF) {
	mov	a,_PINB
	jnb	acc.3,00102$
	mov	dptr,#_jmp_vector
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0xff,00252$
	cjne	r7,#0xff,00252$
	sjmp	00102$
00252$:
;	main.c:432: run_application();
	lcall	_run_application
00102$:
;	main.c:437: FRCOSCREF = 19531;
	mov	dptr,#_FRCOSCREF
	mov	a,#0x4b
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
;	main.c:438: FRCOSCKFILT = 2800; /* theoretical maximum is 71582 */
	mov	dptr,#_FRCOSCKFILT
	mov	a,#0xf0
	movx	@dptr,a
	mov	a,#0x0a
	inc	dptr
	movx	@dptr,a
;	main.c:439: LPXOSCGM = 0x90;
	mov	dptr,#_LPXOSCGM
	mov	a,#0x90
	movx	@dptr,a
;	main.c:440: OSCFORCERUN |= 0x04;
	mov	dptr,#_OSCFORCERUN
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	orl	a,r7
	movx	@dptr,a
;	main.c:441: FRCOSCCONFIG = (6 << 3) | CLKSRC_LPXOSC;
	mov	dptr,#_FRCOSCCONFIG
	mov	a,#0x33
	movx	@dptr,a
;	main.c:443: WTCFGB = (1 << 3) | CLKSRC_LPXOSC;
	mov	_WTCFGB,#0x0b
;	main.c:446: uint8_t i = 128;
	mov	r7,#0x80
;	main.c:447: PORTC_3 = 1;
	setb	_PORTC_3
;	main.c:448: OSCCALIB = 0x01;
	mov	dptr,#_OSCCALIB
	mov	a,#0x01
	movx	@dptr,a
;	main.c:449: IE_5 = 1;
	setb	_IE_5
;	main.c:457: FRCOSCFREQ1;
00149$:
;	main.c:452: uint8_t oc = OSCCALIB;
	mov	dptr,#_OSCCALIB
	movx	a,@dptr
;	main.c:453: if (oc & 0x40)
	mov	r6,a
	jb	acc.6,00106$
;	main.c:455: enter_standby();
	lcall	_enter_standby
	sjmp	00149$
00106$:
;	main.c:457: FRCOSCFREQ1;
	mov	dptr,#_FRCOSCFREQ1
	movx	a,@dptr
;	main.c:458: } while (--i);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00149$
;	main.c:459: IE_5 = 0;
	clr	_IE_5
;	main.c:460: OSCCALIB = 0x00;
	mov	dptr,#_OSCCALIB
	clr	a
	movx	@dptr,a
;	main.c:461: PORTC_3 = 0;
	clr	_PORTC_3
;	main.c:465: ADCCH0CONFIG = 0xD9;
	mov	_ADCCH0CONFIG,#0xd9
;	main.c:466: ADCCH1CONFIG = 0xD9;
	mov	_ADCCH1CONFIG,#0xd9
;	main.c:467: ADCCH2CONFIG = 0xD9;
	mov	_ADCCH2CONFIG,#0xd9
;	main.c:468: ADCCH3CONFIG = 0xD9;
	mov	_ADCCH3CONFIG,#0xd9
;	main.c:470: orig_jmp_vector_mask = 0;
	mov	dptr,#_orig_jmp_vector_mask
	clr	a
	movx	@dptr,a
;	main.c:472: uart_timer0_baud(CLKSRC_FRCOSC, 38400, 20000000);
	push	acc
	mov	a,#0x2d
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x96
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_uart_timer0_baud
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:473: uart0_init(0, 8, 1);
	mov	_uart0_init_PARM_2,#0x08
	mov	_uart0_init_PARM_3,#0x01
	mov	dpl,#0x00
	lcall	_uart0_init
;	main.c:481: write_banner();
	lcall	_write_banner
00151$:
;	main.c:484: char ch = getch();
	lcall	_getch
	mov	r7,dpl
;	main.c:485: switch (ch) {
	cjne	r7,#0x0a,00255$
	sjmp	00151$
00255$:
	cjne	r7,#0x0d,00256$
	sjmp	00151$
00256$:
	cjne	r7,#0x20,00257$
	sjmp	00151$
00257$:
	cjne	r7,#0x3a,00258$
	ljmp	00134$
00258$:
	cjne	r7,#0x3f,00259$
	sjmp	00113$
00259$:
	cjne	r7,#0x4b,00260$
	sjmp	00114$
00260$:
	cjne	r7,#0x52,00261$
	ljmp	00128$
00261$:
	cjne	r7,#0x56,00262$
	ljmp	00145$
00262$:
	cjne	r7,#0x5a,00263$
	ljmp	00123$
00263$:
	ljmp	00146$
;	main.c:491: case '?':
00113$:
;	main.c:492: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:493: write_banner();
	lcall	_write_banner
;	main.c:494: break;
;	main.c:496: case 'K':
	sjmp	00151$
00114$:
;	main.c:498: int8_t st = erase_app();
	lcall	_erase_app
;	main.c:499: if (!st)
	mov	a,dpl
	mov	r7,a
	jnz	00116$
;	main.c:500: st = check_app_erased();
	lcall	_check_app_erased
	mov	r7,dpl
00116$:
;	main.c:501: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:502: switch (st) {
	cjne	r7,#0xfc,00265$
	sjmp	00120$
00265$:
	cjne	r7,#0xfd,00266$
	sjmp	00119$
00266$:
	cjne	r7,#0xfe,00267$
	sjmp	00118$
00267$:
	cjne	r7,#0x00,00121$
;	main.c:504: uart0_writestr(uart_okflasherase);
	mov	dptr,#_bootloader_uart_okflasherase_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:505: break;
;	main.c:507: case -2:
	sjmp	00151$
00118$:
;	main.c:508: uart0_writestr(uart_errflashlock);
	mov	dptr,#_bootloader_uart_errflashlock_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:509: break;
	ljmp	00151$
;	main.c:511: case -3:
00119$:
;	main.c:512: uart0_writestr(uart_errflashvector);
	mov	dptr,#_bootloader_uart_errflashvector_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:513: break;
	ljmp	00151$
;	main.c:515: case -4:
00120$:
;	main.c:516: uart0_writestr(uart_errflashvdd);
	mov	dptr,#_bootloader_uart_errflashvdd_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:517: break;
	ljmp	00151$
;	main.c:519: default:
00121$:
;	main.c:520: uart0_writestr(uart_errflashtimeout);
	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:523: break;
	ljmp	00151$
;	main.c:526: case 'Z':
00123$:
;	main.c:528: int8_t st = check_app_erased();
	lcall	_check_app_erased
	mov	r7,dpl
;	main.c:529: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:530: switch (st) {
	cjne	r7,#0xfd,00270$
	sjmp	00125$
00270$:
	cjne	r7,#0x00,00126$
;	main.c:532: uart0_writestr(uart_okflasherasecheck);
	mov	dptr,#_bootloader_uart_okflasherasecheck_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:533: break;
	ljmp	00151$
;	main.c:535: case -3:
00125$:
;	main.c:536: uart0_writestr(uart_errflashvector);
	mov	dptr,#_bootloader_uart_errflashvector_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:537: break;
	ljmp	00151$
;	main.c:539: default:
00126$:
;	main.c:540: uart0_writestr(uart_errflasherasecheck);
	mov	dptr,#_bootloader_uart_errflasherasecheck_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:543: break;
	ljmp	00151$
;	main.c:546: case 'R':
00128$:
;	main.c:548: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:549: if (jmp_vector == 0xFFFF) {
	mov	dptr,#_jmp_vector
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0xff,00130$
	cjne	r7,#0xff,00130$
;	main.c:550: uart0_writestr(uart_errrunapp);
	mov	dptr,#_bootloader_uart_errrunapp_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:551: break;
	ljmp	00151$
00130$:
;	main.c:553: uart0_writestr(uart_okrunapp);
	mov	dptr,#_bootloader_uart_okrunapp_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:554: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:556: while (0x44 & (uint8_t)~U0STATUS);
00131$:
	mov	a,_U0STATUS
	cpl	a
	mov	r7,a
	anl	a,#0x44
	jz	00276$
	sjmp	00131$
00276$:
;	main.c:557: run_application();
	lcall	_run_application
;	main.c:558: break;
	ljmp	00151$
;	main.c:561: case ':':
00134$:
;	main.c:563: int8_t st = parse_ihex();
	lcall	_parse_ihex
;	main.c:564: if (!st)
	mov	a,dpl
	mov	r7,a
	jnz	00277$
	ljmp	00151$
00277$:
;	main.c:566: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:567: switch (st) {
	cjne	r7,#0xf9,00278$
	sjmp	00142$
00278$:
	cjne	r7,#0xfa,00279$
	sjmp	00141$
00279$:
	cjne	r7,#0xfb,00280$
	sjmp	00140$
00280$:
	cjne	r7,#0xfc,00281$
	sjmp	00139$
00281$:
	cjne	r7,#0xfd,00282$
	sjmp	00138$
00282$:
	cjne	r7,#0xfe,00143$
;	main.c:569: uart0_writestr(uart_errflashlock);
	mov	dptr,#_bootloader_uart_errflashlock_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:570: break;
	ljmp	00151$
;	main.c:572: case -3:
00138$:
;	main.c:573: uart0_writestr(uart_errhexinvalidchar);
	mov	dptr,#_bootloader_uart_errhexinvalidchar_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:574: break;
	ljmp	00151$
;	main.c:576: case -4:
00139$:
;	main.c:577: uart0_writestr(uart_errhexchksum);
	mov	dptr,#_bootloader_uart_errhexchksum_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:578: break;
	ljmp	00151$
;	main.c:580: case -5:
00140$:
;	main.c:581: uart0_writestr(uart_errhexrectype);
	mov	dptr,#_bootloader_uart_errhexrectype_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:582: break;
	ljmp	00151$
;	main.c:584: case -6:
00141$:
;	main.c:585: uart0_writestr(uart_errhexflashwrite);
	mov	dptr,#_bootloader_uart_errhexflashwrite_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:586: break;
	ljmp	00151$
;	main.c:588: case -7:
00142$:
;	main.c:589: uart0_writestr(uart_errhexgarbagechar);
	mov	dptr,#_bootloader_uart_errhexgarbagechar_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:590: break;
	ljmp	00151$
;	main.c:592: default:
00143$:
;	main.c:593: uart0_writestr(uart_errflashtimeout);
	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:596: break;
	ljmp	00151$
;	main.c:599: case 'V':
00145$:
;	main.c:601: uint16_t vdd = measurevdd();
	lcall	_measurevdd
	mov	r6,dpl
	mov	r7,dph
;	main.c:602: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:603: uart0_writestr(uart_vdd1);
	mov	dptr,#_bootloader_uart_vdd1_1_162
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_uart0_writestr
	pop	ar6
	pop	ar7
;	main.c:604: uart0_writenum16(vdd >> 8, 1, 0);
	mov	dpl,r7
	mov	dph,#0x00
	push	ar7
	push	ar6
	clr	a
	push	acc
	inc	a
	push	acc
	lcall	_uart0_writenum16
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:605: uart0_tx('.');
	mov	dpl,#0x2e
	lcall	_uart0_tx
;	main.c:606: vdd &= 0xff;
	mov	r7,#0x00
;	main.c:607: vdd *= 100;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r7,dph
;	main.c:608: uart0_writenum16(vdd >> 8, 2, WRNUM_PADZERO);
	mov	dpl,r7
	mov	dph,#0x00
	mov	a,#0x08
	push	acc
	mov	a,#0x02
	push	acc
	lcall	_uart0_writenum16
	dec	sp
	dec	sp
;	main.c:609: uart0_writestr(uart_vdd2);
	mov	dptr,#_bootloader_uart_vdd2_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:610: break;
	ljmp	00151$
;	main.c:613: default:
00146$:
;	main.c:615: uart0_rxadvance(uart0_rxcount());
	lcall	_uart0_rxcount
	lcall	_uart0_rxadvance
;	main.c:616: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
;	main.c:617: uart0_writestr(uart_errunknowncmd);
	mov	dptr,#_bootloader_uart_errunknowncmd_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
;	main.c:619: }
	ljmp	00151$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_jmp_vector	=	0xe3fe
_write_banner_uart_banner_1_158:
	.ascii "AX8052 Bootloader V1.1 Checksum 0x"
	.db 0x00
_write_banner_uart_crlf_1_158:
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errunknowncmd_1_162:
	.ascii "ERR-Unknown Command"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errflashtimeout_1_162:
	.ascii "ERR-FLASH Timeout"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errflashlock_1_162:
	.ascii "ERR-FLASH Locked"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errflashvector_1_162:
	.ascii "ERR-FLASH Vector"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errflashvdd_1_162:
	.ascii "ERR-VDD low"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_okflasherase_1_162:
	.ascii "OK-FLASH Erase"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_okflasherasecheck_1_162:
	.ascii "OK-FLASH Erase Check"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errflasherasecheck_1_162:
	.ascii "ERR-FLASH not Erased"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_okrunapp_1_162:
	.ascii "OK-Running Application"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errrunapp_1_162:
	.ascii "ERR-no Application"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errhexinvalidchar_1_162:
	.ascii "ERR-Invalid Hex Character"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errhexchksum_1_162:
	.ascii "ERR-Hex Checksum Error"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errhexrectype_1_162:
	.ascii "ERR-Unknown Record Type ignored"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errhexflashwrite_1_162:
	.ascii "ERR-FLASH write error"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_errhexgarbagechar_1_162:
	.ascii "ERR-Garbage Characters ignored"
	.db 0x0d
	.db 0x0a
	.db 0x00
_bootloader_uart_vdd1_1_162:
	.ascii "VDD "
	.db 0x00
_bootloader_uart_vdd2_1_162:
	.ascii "V"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
