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
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
G$DPTR0$0$0 == 0x8382
_DPTR0	=	0x8382
G$DPTR1$0$0 == 0x8584
_DPTR1	=	0x8584
G$DPS$0$0 == 0x0086
_DPS	=	0x0086
G$E2IE$0$0 == 0x00a0
_E2IE	=	0x00a0
G$E2IP$0$0 == 0x00c0
_E2IP	=	0x00c0
G$EIE$0$0 == 0x0098
_EIE	=	0x0098
G$EIP$0$0 == 0x00b0
_EIP	=	0x00b0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$XPAGE$0$0 == 0x00d9
_XPAGE	=	0x00d9
G$_XPAGE$0$0 == 0x00d9
__XPAGE	=	0x00d9
G$ADCCH0CONFIG$0$0 == 0x00ca
_ADCCH0CONFIG	=	0x00ca
G$ADCCH1CONFIG$0$0 == 0x00cb
_ADCCH1CONFIG	=	0x00cb
G$ADCCH2CONFIG$0$0 == 0x00d2
_ADCCH2CONFIG	=	0x00d2
G$ADCCH3CONFIG$0$0 == 0x00d3
_ADCCH3CONFIG	=	0x00d3
G$ADCCLKSRC$0$0 == 0x00d1
_ADCCLKSRC	=	0x00d1
G$ADCCONV$0$0 == 0x00c9
_ADCCONV	=	0x00c9
G$ANALOGCOMP$0$0 == 0x00e1
_ANALOGCOMP	=	0x00e1
G$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
G$CLKSTAT$0$0 == 0x00c7
_CLKSTAT	=	0x00c7
G$CODECONFIG$0$0 == 0x0097
_CODECONFIG	=	0x0097
G$DBGLNKBUF$0$0 == 0x00e3
_DBGLNKBUF	=	0x00e3
G$DBGLNKSTAT$0$0 == 0x00e2
_DBGLNKSTAT	=	0x00e2
G$DIRA$0$0 == 0x0089
_DIRA	=	0x0089
G$DIRB$0$0 == 0x008a
_DIRB	=	0x008a
G$DIRC$0$0 == 0x008b
_DIRC	=	0x008b
G$DIRR$0$0 == 0x008e
_DIRR	=	0x008e
G$PINA$0$0 == 0x00c8
_PINA	=	0x00c8
G$PINB$0$0 == 0x00e8
_PINB	=	0x00e8
G$PINC$0$0 == 0x00f8
_PINC	=	0x00f8
G$PINR$0$0 == 0x008d
_PINR	=	0x008d
G$PORTA$0$0 == 0x0080
_PORTA	=	0x0080
G$PORTB$0$0 == 0x0088
_PORTB	=	0x0088
G$PORTC$0$0 == 0x0090
_PORTC	=	0x0090
G$PORTR$0$0 == 0x008c
_PORTR	=	0x008c
G$IC0CAPT0$0$0 == 0x00ce
_IC0CAPT0	=	0x00ce
G$IC0CAPT1$0$0 == 0x00cf
_IC0CAPT1	=	0x00cf
G$IC0CAPT$0$0 == 0xcfce
_IC0CAPT	=	0xcfce
G$IC0MODE$0$0 == 0x00cc
_IC0MODE	=	0x00cc
G$IC0STATUS$0$0 == 0x00cd
_IC0STATUS	=	0x00cd
G$IC1CAPT0$0$0 == 0x00d6
_IC1CAPT0	=	0x00d6
G$IC1CAPT1$0$0 == 0x00d7
_IC1CAPT1	=	0x00d7
G$IC1CAPT$0$0 == 0xd7d6
_IC1CAPT	=	0xd7d6
G$IC1MODE$0$0 == 0x00d4
_IC1MODE	=	0x00d4
G$IC1STATUS$0$0 == 0x00d5
_IC1STATUS	=	0x00d5
G$NVADDR0$0$0 == 0x0092
_NVADDR0	=	0x0092
G$NVADDR1$0$0 == 0x0093
_NVADDR1	=	0x0093
G$NVADDR$0$0 == 0x9392
_NVADDR	=	0x9392
G$NVDATA0$0$0 == 0x0094
_NVDATA0	=	0x0094
G$NVDATA1$0$0 == 0x0095
_NVDATA1	=	0x0095
G$NVDATA$0$0 == 0x9594
_NVDATA	=	0x9594
G$NVKEY$0$0 == 0x0096
_NVKEY	=	0x0096
G$NVSTATUS$0$0 == 0x0091
_NVSTATUS	=	0x0091
G$OC0COMP0$0$0 == 0x00bc
_OC0COMP0	=	0x00bc
G$OC0COMP1$0$0 == 0x00bd
_OC0COMP1	=	0x00bd
G$OC0COMP$0$0 == 0xbdbc
_OC0COMP	=	0xbdbc
G$OC0MODE$0$0 == 0x00b9
_OC0MODE	=	0x00b9
G$OC0PIN$0$0 == 0x00ba
_OC0PIN	=	0x00ba
G$OC0STATUS$0$0 == 0x00bb
_OC0STATUS	=	0x00bb
G$OC1COMP0$0$0 == 0x00c4
_OC1COMP0	=	0x00c4
G$OC1COMP1$0$0 == 0x00c5
_OC1COMP1	=	0x00c5
G$OC1COMP$0$0 == 0xc5c4
_OC1COMP	=	0xc5c4
G$OC1MODE$0$0 == 0x00c1
_OC1MODE	=	0x00c1
G$OC1PIN$0$0 == 0x00c2
_OC1PIN	=	0x00c2
G$OC1STATUS$0$0 == 0x00c3
_OC1STATUS	=	0x00c3
G$RADIOACC$0$0 == 0x00b1
_RADIOACC	=	0x00b1
G$RADIOADDR0$0$0 == 0x00b3
_RADIOADDR0	=	0x00b3
G$RADIOADDR1$0$0 == 0x00b2
_RADIOADDR1	=	0x00b2
G$RADIOADDR$0$0 == 0xb2b3
_RADIOADDR	=	0xb2b3
G$RADIODATA0$0$0 == 0x00b7
_RADIODATA0	=	0x00b7
G$RADIODATA1$0$0 == 0x00b6
_RADIODATA1	=	0x00b6
G$RADIODATA2$0$0 == 0x00b5
_RADIODATA2	=	0x00b5
G$RADIODATA3$0$0 == 0x00b4
_RADIODATA3	=	0x00b4
G$RADIODATA$0$0 == 0xb4b5b6b7
_RADIODATA	=	0xb4b5b6b7
G$RADIOSTAT0$0$0 == 0x00be
_RADIOSTAT0	=	0x00be
G$RADIOSTAT1$0$0 == 0x00bf
_RADIOSTAT1	=	0x00bf
G$RADIOSTAT$0$0 == 0xbfbe
_RADIOSTAT	=	0xbfbe
G$SPCLKSRC$0$0 == 0x00df
_SPCLKSRC	=	0x00df
G$SPMODE$0$0 == 0x00dc
_SPMODE	=	0x00dc
G$SPSHREG$0$0 == 0x00de
_SPSHREG	=	0x00de
G$SPSTATUS$0$0 == 0x00dd
_SPSTATUS	=	0x00dd
G$T0CLKSRC$0$0 == 0x009a
_T0CLKSRC	=	0x009a
G$T0CNT0$0$0 == 0x009c
_T0CNT0	=	0x009c
G$T0CNT1$0$0 == 0x009d
_T0CNT1	=	0x009d
G$T0CNT$0$0 == 0x9d9c
_T0CNT	=	0x9d9c
G$T0MODE$0$0 == 0x0099
_T0MODE	=	0x0099
G$T0PERIOD0$0$0 == 0x009e
_T0PERIOD0	=	0x009e
G$T0PERIOD1$0$0 == 0x009f
_T0PERIOD1	=	0x009f
G$T0PERIOD$0$0 == 0x9f9e
_T0PERIOD	=	0x9f9e
G$T0STATUS$0$0 == 0x009b
_T0STATUS	=	0x009b
G$T1CLKSRC$0$0 == 0x00a2
_T1CLKSRC	=	0x00a2
G$T1CNT0$0$0 == 0x00a4
_T1CNT0	=	0x00a4
G$T1CNT1$0$0 == 0x00a5
_T1CNT1	=	0x00a5
G$T1CNT$0$0 == 0xa5a4
_T1CNT	=	0xa5a4
G$T1MODE$0$0 == 0x00a1
_T1MODE	=	0x00a1
G$T1PERIOD0$0$0 == 0x00a6
_T1PERIOD0	=	0x00a6
G$T1PERIOD1$0$0 == 0x00a7
_T1PERIOD1	=	0x00a7
G$T1PERIOD$0$0 == 0xa7a6
_T1PERIOD	=	0xa7a6
G$T1STATUS$0$0 == 0x00a3
_T1STATUS	=	0x00a3
G$T2CLKSRC$0$0 == 0x00aa
_T2CLKSRC	=	0x00aa
G$T2CNT0$0$0 == 0x00ac
_T2CNT0	=	0x00ac
G$T2CNT1$0$0 == 0x00ad
_T2CNT1	=	0x00ad
G$T2CNT$0$0 == 0xadac
_T2CNT	=	0xadac
G$T2MODE$0$0 == 0x00a9
_T2MODE	=	0x00a9
G$T2PERIOD0$0$0 == 0x00ae
_T2PERIOD0	=	0x00ae
G$T2PERIOD1$0$0 == 0x00af
_T2PERIOD1	=	0x00af
G$T2PERIOD$0$0 == 0xafae
_T2PERIOD	=	0xafae
G$T2STATUS$0$0 == 0x00ab
_T2STATUS	=	0x00ab
G$U0CTRL$0$0 == 0x00e4
_U0CTRL	=	0x00e4
G$U0MODE$0$0 == 0x00e7
_U0MODE	=	0x00e7
G$U0SHREG$0$0 == 0x00e6
_U0SHREG	=	0x00e6
G$U0STATUS$0$0 == 0x00e5
_U0STATUS	=	0x00e5
G$U1CTRL$0$0 == 0x00ec
_U1CTRL	=	0x00ec
G$U1MODE$0$0 == 0x00ef
_U1MODE	=	0x00ef
G$U1SHREG$0$0 == 0x00ee
_U1SHREG	=	0x00ee
G$U1STATUS$0$0 == 0x00ed
_U1STATUS	=	0x00ed
G$WDTCFG$0$0 == 0x00da
_WDTCFG	=	0x00da
G$WDTRESET$0$0 == 0x00db
_WDTRESET	=	0x00db
G$WTCFGA$0$0 == 0x00f1
_WTCFGA	=	0x00f1
G$WTCFGB$0$0 == 0x00f9
_WTCFGB	=	0x00f9
G$WTCNTA0$0$0 == 0x00f2
_WTCNTA0	=	0x00f2
G$WTCNTA1$0$0 == 0x00f3
_WTCNTA1	=	0x00f3
G$WTCNTA$0$0 == 0xf3f2
_WTCNTA	=	0xf3f2
G$WTCNTB0$0$0 == 0x00fa
_WTCNTB0	=	0x00fa
G$WTCNTB1$0$0 == 0x00fb
_WTCNTB1	=	0x00fb
G$WTCNTB$0$0 == 0xfbfa
_WTCNTB	=	0xfbfa
G$WTCNTR1$0$0 == 0x00eb
_WTCNTR1	=	0x00eb
G$WTEVTA0$0$0 == 0x00f4
_WTEVTA0	=	0x00f4
G$WTEVTA1$0$0 == 0x00f5
_WTEVTA1	=	0x00f5
G$WTEVTA$0$0 == 0xf5f4
_WTEVTA	=	0xf5f4
G$WTEVTB0$0$0 == 0x00f6
_WTEVTB0	=	0x00f6
G$WTEVTB1$0$0 == 0x00f7
_WTEVTB1	=	0x00f7
G$WTEVTB$0$0 == 0xf7f6
_WTEVTB	=	0xf7f6
G$WTEVTC0$0$0 == 0x00fc
_WTEVTC0	=	0x00fc
G$WTEVTC1$0$0 == 0x00fd
_WTEVTC1	=	0x00fd
G$WTEVTC$0$0 == 0xfdfc
_WTEVTC	=	0xfdfc
G$WTEVTD0$0$0 == 0x00fe
_WTEVTD0	=	0x00fe
G$WTEVTD1$0$0 == 0x00ff
_WTEVTD1	=	0x00ff
G$WTEVTD$0$0 == 0xfffe
_WTEVTD	=	0xfffe
G$WTIRQEN$0$0 == 0x00e9
_WTIRQEN	=	0x00e9
G$WTSTAT$0$0 == 0x00ea
_WTSTAT	=	0x00ea
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
G$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
G$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
G$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
G$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
G$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
G$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
G$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
G$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
G$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
G$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
G$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
G$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
G$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
G$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
G$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
G$E2IE_0$0$0 == 0x00a0
_E2IE_0	=	0x00a0
G$E2IE_1$0$0 == 0x00a1
_E2IE_1	=	0x00a1
G$E2IE_2$0$0 == 0x00a2
_E2IE_2	=	0x00a2
G$E2IE_3$0$0 == 0x00a3
_E2IE_3	=	0x00a3
G$E2IE_4$0$0 == 0x00a4
_E2IE_4	=	0x00a4
G$E2IE_5$0$0 == 0x00a5
_E2IE_5	=	0x00a5
G$E2IE_6$0$0 == 0x00a6
_E2IE_6	=	0x00a6
G$E2IE_7$0$0 == 0x00a7
_E2IE_7	=	0x00a7
G$E2IP_0$0$0 == 0x00c0
_E2IP_0	=	0x00c0
G$E2IP_1$0$0 == 0x00c1
_E2IP_1	=	0x00c1
G$E2IP_2$0$0 == 0x00c2
_E2IP_2	=	0x00c2
G$E2IP_3$0$0 == 0x00c3
_E2IP_3	=	0x00c3
G$E2IP_4$0$0 == 0x00c4
_E2IP_4	=	0x00c4
G$E2IP_5$0$0 == 0x00c5
_E2IP_5	=	0x00c5
G$E2IP_6$0$0 == 0x00c6
_E2IP_6	=	0x00c6
G$E2IP_7$0$0 == 0x00c7
_E2IP_7	=	0x00c7
G$EIE_0$0$0 == 0x0098
_EIE_0	=	0x0098
G$EIE_1$0$0 == 0x0099
_EIE_1	=	0x0099
G$EIE_2$0$0 == 0x009a
_EIE_2	=	0x009a
G$EIE_3$0$0 == 0x009b
_EIE_3	=	0x009b
G$EIE_4$0$0 == 0x009c
_EIE_4	=	0x009c
G$EIE_5$0$0 == 0x009d
_EIE_5	=	0x009d
G$EIE_6$0$0 == 0x009e
_EIE_6	=	0x009e
G$EIE_7$0$0 == 0x009f
_EIE_7	=	0x009f
G$EIP_0$0$0 == 0x00b0
_EIP_0	=	0x00b0
G$EIP_1$0$0 == 0x00b1
_EIP_1	=	0x00b1
G$EIP_2$0$0 == 0x00b2
_EIP_2	=	0x00b2
G$EIP_3$0$0 == 0x00b3
_EIP_3	=	0x00b3
G$EIP_4$0$0 == 0x00b4
_EIP_4	=	0x00b4
G$EIP_5$0$0 == 0x00b5
_EIP_5	=	0x00b5
G$EIP_6$0$0 == 0x00b6
_EIP_6	=	0x00b6
G$EIP_7$0$0 == 0x00b7
_EIP_7	=	0x00b7
G$IE_0$0$0 == 0x00a8
_IE_0	=	0x00a8
G$IE_1$0$0 == 0x00a9
_IE_1	=	0x00a9
G$IE_2$0$0 == 0x00aa
_IE_2	=	0x00aa
G$IE_3$0$0 == 0x00ab
_IE_3	=	0x00ab
G$IE_4$0$0 == 0x00ac
_IE_4	=	0x00ac
G$IE_5$0$0 == 0x00ad
_IE_5	=	0x00ad
G$IE_6$0$0 == 0x00ae
_IE_6	=	0x00ae
G$IE_7$0$0 == 0x00af
_IE_7	=	0x00af
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$IP_0$0$0 == 0x00b8
_IP_0	=	0x00b8
G$IP_1$0$0 == 0x00b9
_IP_1	=	0x00b9
G$IP_2$0$0 == 0x00ba
_IP_2	=	0x00ba
G$IP_3$0$0 == 0x00bb
_IP_3	=	0x00bb
G$IP_4$0$0 == 0x00bc
_IP_4	=	0x00bc
G$IP_5$0$0 == 0x00bd
_IP_5	=	0x00bd
G$IP_6$0$0 == 0x00be
_IP_6	=	0x00be
G$IP_7$0$0 == 0x00bf
_IP_7	=	0x00bf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$PINA_0$0$0 == 0x00c8
_PINA_0	=	0x00c8
G$PINA_1$0$0 == 0x00c9
_PINA_1	=	0x00c9
G$PINA_2$0$0 == 0x00ca
_PINA_2	=	0x00ca
G$PINA_3$0$0 == 0x00cb
_PINA_3	=	0x00cb
G$PINA_4$0$0 == 0x00cc
_PINA_4	=	0x00cc
G$PINA_5$0$0 == 0x00cd
_PINA_5	=	0x00cd
G$PINA_6$0$0 == 0x00ce
_PINA_6	=	0x00ce
G$PINA_7$0$0 == 0x00cf
_PINA_7	=	0x00cf
G$PINB_0$0$0 == 0x00e8
_PINB_0	=	0x00e8
G$PINB_1$0$0 == 0x00e9
_PINB_1	=	0x00e9
G$PINB_2$0$0 == 0x00ea
_PINB_2	=	0x00ea
G$PINB_3$0$0 == 0x00eb
_PINB_3	=	0x00eb
G$PINB_4$0$0 == 0x00ec
_PINB_4	=	0x00ec
G$PINB_5$0$0 == 0x00ed
_PINB_5	=	0x00ed
G$PINB_6$0$0 == 0x00ee
_PINB_6	=	0x00ee
G$PINB_7$0$0 == 0x00ef
_PINB_7	=	0x00ef
G$PINC_0$0$0 == 0x00f8
_PINC_0	=	0x00f8
G$PINC_1$0$0 == 0x00f9
_PINC_1	=	0x00f9
G$PINC_2$0$0 == 0x00fa
_PINC_2	=	0x00fa
G$PINC_3$0$0 == 0x00fb
_PINC_3	=	0x00fb
G$PINC_4$0$0 == 0x00fc
_PINC_4	=	0x00fc
G$PINC_5$0$0 == 0x00fd
_PINC_5	=	0x00fd
G$PINC_6$0$0 == 0x00fe
_PINC_6	=	0x00fe
G$PINC_7$0$0 == 0x00ff
_PINC_7	=	0x00ff
G$PORTA_0$0$0 == 0x0080
_PORTA_0	=	0x0080
G$PORTA_1$0$0 == 0x0081
_PORTA_1	=	0x0081
G$PORTA_2$0$0 == 0x0082
_PORTA_2	=	0x0082
G$PORTA_3$0$0 == 0x0083
_PORTA_3	=	0x0083
G$PORTA_4$0$0 == 0x0084
_PORTA_4	=	0x0084
G$PORTA_5$0$0 == 0x0085
_PORTA_5	=	0x0085
G$PORTA_6$0$0 == 0x0086
_PORTA_6	=	0x0086
G$PORTA_7$0$0 == 0x0087
_PORTA_7	=	0x0087
G$PORTB_0$0$0 == 0x0088
_PORTB_0	=	0x0088
G$PORTB_1$0$0 == 0x0089
_PORTB_1	=	0x0089
G$PORTB_2$0$0 == 0x008a
_PORTB_2	=	0x008a
G$PORTB_3$0$0 == 0x008b
_PORTB_3	=	0x008b
G$PORTB_4$0$0 == 0x008c
_PORTB_4	=	0x008c
G$PORTB_5$0$0 == 0x008d
_PORTB_5	=	0x008d
G$PORTB_6$0$0 == 0x008e
_PORTB_6	=	0x008e
G$PORTB_7$0$0 == 0x008f
_PORTB_7	=	0x008f
G$PORTC_0$0$0 == 0x0090
_PORTC_0	=	0x0090
G$PORTC_1$0$0 == 0x0091
_PORTC_1	=	0x0091
G$PORTC_2$0$0 == 0x0092
_PORTC_2	=	0x0092
G$PORTC_3$0$0 == 0x0093
_PORTC_3	=	0x0093
G$PORTC_4$0$0 == 0x0094
_PORTC_4	=	0x0094
G$PORTC_5$0$0 == 0x0095
_PORTC_5	=	0x0095
G$PORTC_6$0$0 == 0x0096
_PORTC_6	=	0x0096
G$PORTC_7$0$0 == 0x0097
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
Lmain.flash_line$lb$1$139==.
_flash_line_lb_1_139:
	.ds 2
Lmain.flash_line$cnt$1$139==.
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
G$ADCCH0VAL0$0$0 == 0x7020
_ADCCH0VAL0	=	0x7020
G$ADCCH0VAL1$0$0 == 0x7021
_ADCCH0VAL1	=	0x7021
G$ADCCH0VAL$0$0 == 0x7020
_ADCCH0VAL	=	0x7020
G$ADCCH1VAL0$0$0 == 0x7022
_ADCCH1VAL0	=	0x7022
G$ADCCH1VAL1$0$0 == 0x7023
_ADCCH1VAL1	=	0x7023
G$ADCCH1VAL$0$0 == 0x7022
_ADCCH1VAL	=	0x7022
G$ADCCH2VAL0$0$0 == 0x7024
_ADCCH2VAL0	=	0x7024
G$ADCCH2VAL1$0$0 == 0x7025
_ADCCH2VAL1	=	0x7025
G$ADCCH2VAL$0$0 == 0x7024
_ADCCH2VAL	=	0x7024
G$ADCCH3VAL0$0$0 == 0x7026
_ADCCH3VAL0	=	0x7026
G$ADCCH3VAL1$0$0 == 0x7027
_ADCCH3VAL1	=	0x7027
G$ADCCH3VAL$0$0 == 0x7026
_ADCCH3VAL	=	0x7026
G$ADCTUNE0$0$0 == 0x7028
_ADCTUNE0	=	0x7028
G$ADCTUNE1$0$0 == 0x7029
_ADCTUNE1	=	0x7029
G$ADCTUNE2$0$0 == 0x702a
_ADCTUNE2	=	0x702a
G$DMA0ADDR0$0$0 == 0x7010
_DMA0ADDR0	=	0x7010
G$DMA0ADDR1$0$0 == 0x7011
_DMA0ADDR1	=	0x7011
G$DMA0ADDR$0$0 == 0x7010
_DMA0ADDR	=	0x7010
G$DMA0CONFIG$0$0 == 0x7014
_DMA0CONFIG	=	0x7014
G$DMA1ADDR0$0$0 == 0x7012
_DMA1ADDR0	=	0x7012
G$DMA1ADDR1$0$0 == 0x7013
_DMA1ADDR1	=	0x7013
G$DMA1ADDR$0$0 == 0x7012
_DMA1ADDR	=	0x7012
G$DMA1CONFIG$0$0 == 0x7015
_DMA1CONFIG	=	0x7015
G$FRCOSCCONFIG$0$0 == 0x7070
_FRCOSCCONFIG	=	0x7070
G$FRCOSCCTRL$0$0 == 0x7071
_FRCOSCCTRL	=	0x7071
G$FRCOSCFREQ0$0$0 == 0x7076
_FRCOSCFREQ0	=	0x7076
G$FRCOSCFREQ1$0$0 == 0x7077
_FRCOSCFREQ1	=	0x7077
G$FRCOSCFREQ$0$0 == 0x7076
_FRCOSCFREQ	=	0x7076
G$FRCOSCKFILT0$0$0 == 0x7072
_FRCOSCKFILT0	=	0x7072
G$FRCOSCKFILT1$0$0 == 0x7073
_FRCOSCKFILT1	=	0x7073
G$FRCOSCKFILT$0$0 == 0x7072
_FRCOSCKFILT	=	0x7072
G$FRCOSCPER0$0$0 == 0x7078
_FRCOSCPER0	=	0x7078
G$FRCOSCPER1$0$0 == 0x7079
_FRCOSCPER1	=	0x7079
G$FRCOSCPER$0$0 == 0x7078
_FRCOSCPER	=	0x7078
G$FRCOSCREF0$0$0 == 0x7074
_FRCOSCREF0	=	0x7074
G$FRCOSCREF1$0$0 == 0x7075
_FRCOSCREF1	=	0x7075
G$FRCOSCREF$0$0 == 0x7074
_FRCOSCREF	=	0x7074
G$ANALOGA$0$0 == 0x7007
_ANALOGA	=	0x7007
G$GPIOENABLE$0$0 == 0x700c
_GPIOENABLE	=	0x700c
G$EXTIRQ$0$0 == 0x7003
_EXTIRQ	=	0x7003
G$INTCHGA$0$0 == 0x7000
_INTCHGA	=	0x7000
G$INTCHGB$0$0 == 0x7001
_INTCHGB	=	0x7001
G$INTCHGC$0$0 == 0x7002
_INTCHGC	=	0x7002
G$PALTA$0$0 == 0x7008
_PALTA	=	0x7008
G$PALTB$0$0 == 0x7009
_PALTB	=	0x7009
G$PALTC$0$0 == 0x700a
_PALTC	=	0x700a
G$PALTRADIO$0$0 == 0x7046
_PALTRADIO	=	0x7046
G$PINCHGA$0$0 == 0x7004
_PINCHGA	=	0x7004
G$PINCHGB$0$0 == 0x7005
_PINCHGB	=	0x7005
G$PINCHGC$0$0 == 0x7006
_PINCHGC	=	0x7006
G$PINSEL$0$0 == 0x700b
_PINSEL	=	0x700b
G$LPOSCCONFIG$0$0 == 0x7060
_LPOSCCONFIG	=	0x7060
G$LPOSCFREQ0$0$0 == 0x7066
_LPOSCFREQ0	=	0x7066
G$LPOSCFREQ1$0$0 == 0x7067
_LPOSCFREQ1	=	0x7067
G$LPOSCFREQ$0$0 == 0x7066
_LPOSCFREQ	=	0x7066
G$LPOSCKFILT0$0$0 == 0x7062
_LPOSCKFILT0	=	0x7062
G$LPOSCKFILT1$0$0 == 0x7063
_LPOSCKFILT1	=	0x7063
G$LPOSCKFILT$0$0 == 0x7062
_LPOSCKFILT	=	0x7062
G$LPOSCPER0$0$0 == 0x7068
_LPOSCPER0	=	0x7068
G$LPOSCPER1$0$0 == 0x7069
_LPOSCPER1	=	0x7069
G$LPOSCPER$0$0 == 0x7068
_LPOSCPER	=	0x7068
G$LPOSCREF0$0$0 == 0x7064
_LPOSCREF0	=	0x7064
G$LPOSCREF1$0$0 == 0x7065
_LPOSCREF1	=	0x7065
G$LPOSCREF$0$0 == 0x7064
_LPOSCREF	=	0x7064
G$LPXOSCGM$0$0 == 0x7054
_LPXOSCGM	=	0x7054
G$MISCCTRL$0$0 == 0x7f01
_MISCCTRL	=	0x7f01
G$OSCCALIB$0$0 == 0x7053
_OSCCALIB	=	0x7053
G$OSCFORCERUN$0$0 == 0x7050
_OSCFORCERUN	=	0x7050
G$OSCREADY$0$0 == 0x7052
_OSCREADY	=	0x7052
G$OSCRUN$0$0 == 0x7051
_OSCRUN	=	0x7051
G$RADIOFDATAADDR0$0$0 == 0x7040
_RADIOFDATAADDR0	=	0x7040
G$RADIOFDATAADDR1$0$0 == 0x7041
_RADIOFDATAADDR1	=	0x7041
G$RADIOFDATAADDR$0$0 == 0x7040
_RADIOFDATAADDR	=	0x7040
G$RADIOFSTATADDR0$0$0 == 0x7042
_RADIOFSTATADDR0	=	0x7042
G$RADIOFSTATADDR1$0$0 == 0x7043
_RADIOFSTATADDR1	=	0x7043
G$RADIOFSTATADDR$0$0 == 0x7042
_RADIOFSTATADDR	=	0x7042
G$RADIOMUX$0$0 == 0x7044
_RADIOMUX	=	0x7044
G$SCRATCH0$0$0 == 0x7084
_SCRATCH0	=	0x7084
G$SCRATCH1$0$0 == 0x7085
_SCRATCH1	=	0x7085
G$SCRATCH2$0$0 == 0x7086
_SCRATCH2	=	0x7086
G$SCRATCH3$0$0 == 0x7087
_SCRATCH3	=	0x7087
G$SILICONREV$0$0 == 0x7f00
_SILICONREV	=	0x7f00
G$XTALAMPL$0$0 == 0x7f19
_XTALAMPL	=	0x7f19
G$XTALOSC$0$0 == 0x7f18
_XTALOSC	=	0x7f18
G$XTALREADY$0$0 == 0x7f1a
_XTALREADY	=	0x7f1a
Fmain$flash_deviceid$0$0 == 0xfc06
_flash_deviceid	=	0xfc06
G$orig_jmp_vector$0$0==.
_orig_jmp_vector::
	.ds 3
G$orig_jmp_vector_mask$0$0==.
_orig_jmp_vector_mask::
	.ds 1
G$line_buffer$0$0==.
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
	Fmain$run_application$0$0 ==.
	C$main.c$39$0$0 ==.
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
	C$main.c$41$1$118 ==.
;	main.c:41: OSCFORCERUN = 0x00;
	mov	dptr,#_OSCFORCERUN
	clr	a
	movx	@dptr,a
	C$main.c$42$1$118 ==.
;	main.c:42: FRCOSCCONFIG = 0x01;
	mov	dptr,#_FRCOSCCONFIG
	inc	a
	movx	@dptr,a
	C$main.c$43$1$118 ==.
;	main.c:43: WTCFGB = 0x0F;
	mov	_WTCFGB,#0x0f
	C$main.c$44$1$118 ==.
;	main.c:44: IE = EIE = E2IE = 0;
	mov	_E2IE,#0x00
	mov	_EIE,#0x00
	mov	_IE,#0x00
	C$main.c$45$1$118 ==.
;	main.c:45: CLKCON = 0x08;
	mov	_CLKCON,#0x08
	C$main.c$57$1$118 ==.
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
	C$main.c$58$1$118 ==.
	XFmain$run_application$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitflash'
;------------------------------------------------------------
;timeout                   Allocated to registers r6 r7 
;cnth                      Allocated to registers r5 
;cntl                      Allocated to registers r6 
;st                        Allocated to registers r5 
;------------------------------------------------------------
	Fmain$waitflash$0$0 ==.
	C$main.c$60$1$118 ==.
;	main.c:60: static int8_t waitflash(uint16_t timeout)
;	-----------------------------------------
;	 function waitflash
;	-----------------------------------------
_waitflash:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$62$1$118 ==.
;	main.c:62: uint8_t cnth = timeout >> 8;
	mov	ar5,r7
	C$main.c$63$1$118 ==.
;	main.c:63: uint8_t cntl = timeout;
	C$main.c$64$1$120 ==.
;	main.c:64: ++cnth;
	mov	a,r5
	inc	a
	mov	r7,a
	C$main.c$65$1$120 ==.
;	main.c:65: ++cntl;
	inc	r6
	C$main.c$67$2$121 ==.
;	main.c:67: do {
00105$:
	C$main.c$68$3$121 ==.
;	main.c:68: uint8_t st = NVSTATUS;
	C$main.c$69$3$122 ==.
;	main.c:69: if (!(st & 2))
	mov	a,_NVSTATUS
	mov	r5,a
	jb	acc.1,00102$
	C$main.c$70$3$122 ==.
;	main.c:70: return -2;
	mov	dpl,#0xfe
	sjmp	00111$
00102$:
	C$main.c$71$3$122 ==.
;	main.c:71: if (!(st & 1))
	mov	a,r5
	jb	acc.0,00104$
	C$main.c$72$3$122 ==.
;	main.c:72: return 0;
	mov	dpl,#0x00
	sjmp	00111$
00104$:
	C$main.c$73$3$122 ==.
;	main.c:73: uart0_poll();
	lcall	_uart0_poll
	C$main.c$74$3$122 ==.
;	main.c:74: --cntl;
	C$main.c$76$2$121 ==.
;	main.c:76: while (cntl);
	djnz	r6,00105$
	C$main.c$77$2$121 ==.
;	main.c:77: --cnth;
	djnz	r7,00105$
	C$main.c$79$1$120 ==.
;	main.c:79: while (cnth);
	C$main.c$80$1$120 ==.
;	main.c:80: return -1;
	mov	dpl,#0xff
00111$:
	C$main.c$81$1$120 ==.
	XFmain$waitflash$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getch'
;------------------------------------------------------------
	Fmain$getch$0$0 ==.
	C$main.c$83$1$120 ==.
;	main.c:83: static char getch(void)
;	-----------------------------------------
;	 function getch
;	-----------------------------------------
_getch:
	C$main.c$85$1$124 ==.
;	main.c:85: while (!uart0_rxcount()) {
00103$:
	lcall	_uart0_rxcount
	mov	a,dpl
	jnz	00105$
	C$main.c$86$2$125 ==.
;	main.c:86: if (uart0_poll())
	lcall	_uart0_poll
	mov	a,dpl
	jnz	00103$
	C$main.c$88$2$125 ==.
;	main.c:88: enter_standby();
	lcall	_enter_standby
	sjmp	00103$
00105$:
	C$main.c$90$1$124 ==.
;	main.c:90: return uart0_rx();
	lcall	_uart0_rx
	C$main.c$91$1$124 ==.
	XFmain$getch$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'measurevdd'
;------------------------------------------------------------
;vdd                       Allocated to registers r6 r7 
;------------------------------------------------------------
	Fmain$measurevdd$0$0 ==.
	C$main.c$93$1$124 ==.
;	main.c:93: static uint16_t measurevdd(void)
;	-----------------------------------------
;	 function measurevdd
;	-----------------------------------------
_measurevdd:
	C$main.c$96$1$127 ==.
;	main.c:96: ADCCLKSRC = 0x30;
	mov	_ADCCLKSRC,#0x30
	C$main.c$97$1$127 ==.
;	main.c:97: ADCCONV = 0x01;
	mov	_ADCCONV,#0x01
	C$main.c$98$1$127 ==.
;	main.c:98: while (ADCCLKSRC & 0x80) {
00101$:
	mov	a,_ADCCLKSRC
	jnb	acc.7,00103$
	C$main.c$99$2$128 ==.
;	main.c:99: uart0_poll();
	lcall	_uart0_poll
	sjmp	00101$
00103$:
	C$main.c$101$1$127 ==.
;	main.c:101: ADCCLKSRC = 0x07;
	mov	_ADCCLKSRC,#0x07
	C$main.c$102$1$127 ==.
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
	C$main.c$104$1$127 ==.
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
	C$main.c$105$1$127 ==.
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
	C$main.c$106$1$127 ==.
;	main.c:106: vdd -= 9 << 7;
	mov	a,r6
	add	a,#0x80
	mov	r6,a
	mov	a,r7
	addc	a,#0xfb
	C$main.c$107$1$127 ==.
;	main.c:107: return vdd;
	C$main.c$108$1$127 ==.
	XFmain$measurevdd$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'erase_page_write_resetvec'
;------------------------------------------------------------
;st                        Allocated to registers r7 
;pmem                      Allocated to registers r6 r7 
;------------------------------------------------------------
	Fmain$erase_page_write_resetvec$0$0 ==.
	C$main.c$110$1$127 ==.
;	main.c:110: static int8_t erase_page_write_resetvec(void)
;	-----------------------------------------
;	 function erase_page_write_resetvec
;	-----------------------------------------
_erase_page_write_resetvec:
	C$main.c$114$1$130 ==.
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
	C$main.c$115$1$130 ==.
;	main.c:115: return -4;
	mov	dpl,#0xfc
	ljmp	00117$
00102$:
	C$main.c$116$1$130 ==.
;	main.c:116: NVADDR0 = 0x00;
	mov	_NVADDR0,#0x00
	C$main.c$117$1$130 ==.
;	main.c:117: NVSTATUS = 0x20;
	mov	_NVSTATUS,#0x20
	C$main.c$118$1$130 ==.
;	main.c:118: st = waitflash(65535);
	mov	dptr,#0xffff
	lcall	_waitflash
	C$main.c$119$1$130 ==.
;	main.c:119: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00104$
	C$main.c$120$1$130 ==.
;	main.c:120: return st;
	mov	dpl,r7
	ljmp	00117$
00104$:
	C$main.c$122$1$130 ==.
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
	C$main.c$123$1$130 ==.
;	main.c:123: return -4;
	mov	dpl,#0xfc
	ljmp	00117$
00106$:
	C$main.c$124$1$130 ==.
;	main.c:124: NVADDR0 = 0x02;
	mov	_NVADDR0,#0x02
	C$main.c$125$1$130 ==.
;	main.c:125: NVDATA0 = bootloader_reset_vector_lo();
	mov	r5,#__sdcc_gsinit_startup
	mov	_NVDATA0,r5
	C$main.c$126$1$130 ==.
;	main.c:126: NVDATA1 = 0xff;
	mov	_NVDATA1,#0xff
	C$main.c$127$1$130 ==.
;	main.c:127: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$128$1$130 ==.
;	main.c:128: st = waitflash(128);
	mov	dptr,#0x0080
	lcall	_waitflash
	C$main.c$129$1$130 ==.
;	main.c:129: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00108$
	C$main.c$130$1$130 ==.
;	main.c:130: return st;
	mov	dpl,r7
	sjmp	00117$
00108$:
	C$main.c$131$1$130 ==.
;	main.c:131: NVADDR0 = 0x00;
	mov	_NVADDR0,#0x00
	C$main.c$132$1$130 ==.
;	main.c:132: NVDATA0 = 0x02;
	mov	_NVDATA0,#0x02
	C$main.c$133$1$130 ==.
;	main.c:133: NVDATA1 = bootloader_reset_vector_hi();
	mov	r6,#(__sdcc_gsinit_startup >> 8)
	mov	_NVDATA1,r6
	C$main.c$134$1$130 ==.
;	main.c:134: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$135$1$130 ==.
;	main.c:135: st = waitflash(128);
	mov	dptr,#0x0080
	lcall	_waitflash
	C$main.c$136$1$130 ==.
;	main.c:136: if (st)
	mov	a,dpl
	mov	r7,a
	jz	00110$
	C$main.c$137$1$130 ==.
;	main.c:137: return st;
	mov	dpl,r7
	sjmp	00117$
00110$:
	C$main.c$139$2$131 ==.
;	main.c:139: const __code uint8_t *pmem = (const __code uint8_t *)(((uint16_t)NVADDR1) << 8);
	mov	r7,_NVADDR1
	mov	r6,#0x00
	C$main.c$140$2$131 ==.
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
	C$main.c$141$2$131 ==.
;	main.c:141: return -3;
	mov	dpl,#0xfd
	sjmp	00117$
00112$:
	C$main.c$142$2$131 ==.
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
	C$main.c$143$2$131 ==.
;	main.c:143: return -3;
	mov	dpl,#0xfd
	sjmp	00117$
00114$:
	C$main.c$144$2$131 ==.
;	main.c:144: if (*pmem++ != bootloader_reset_vector_lo())
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	a,ar3,00150$
	sjmp	00116$
00150$:
	C$main.c$145$2$131 ==.
;	main.c:145: return -3;
	mov	dpl,#0xfd
	sjmp	00117$
00116$:
	C$main.c$147$1$130 ==.
;	main.c:147: return 0;
	mov	dpl,#0x00
00117$:
	C$main.c$148$1$130 ==.
	XFmain$erase_page_write_resetvec$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'erase_app'
;------------------------------------------------------------
;st                        Allocated to registers r7 
;pg                        Allocated to registers r6 
;------------------------------------------------------------
	Fmain$erase_app$0$0 ==.
	C$main.c$150$1$130 ==.
;	main.c:150: static int8_t erase_app(void)
;	-----------------------------------------
;	 function erase_app
;	-----------------------------------------
_erase_app:
	C$main.c$154$1$133 ==.
;	main.c:154: orig_jmp_vector_mask = 0;
	mov	dptr,#_orig_jmp_vector_mask
	clr	a
	movx	@dptr,a
	C$main.c$155$1$133 ==.
;	main.c:155: flash_unlock();
	lcall	_flash_unlock
	C$main.c$156$1$133 ==.
;	main.c:156: NVADDR1 = 0x04;
	mov	_NVADDR1,#0x04
	C$main.c$157$1$133 ==.
;	main.c:157: st = erase_page_write_resetvec();
	lcall	_erase_page_write_resetvec
	C$main.c$158$1$133 ==.
;	main.c:158: if (st)
	mov	a,dpl
	mov	r7,a
	C$main.c$160$1$133 ==.
;	main.c:160: NVADDR1 = 0x00;
	jnz	00110$
	mov	_NVADDR1,a
	C$main.c$161$1$133 ==.
;	main.c:161: st = erase_page_write_resetvec();
	lcall	_erase_page_write_resetvec
	C$main.c$162$1$133 ==.
;	main.c:162: if (st)
	mov	a,dpl
	mov	r7,a
	C$main.c$166$1$133 ==.
;	main.c:166: NVADDR0 = 0x00;
	jnz	00110$
	mov	_NVADDR0,a
	C$main.c$167$1$133 ==.
;	main.c:167: do {
	mov	r6,#0x04
00107$:
	C$main.c$168$2$134 ==.
;	main.c:168: NVADDR1 = pg;
	mov	_NVADDR1,r6
	C$main.c$169$2$134 ==.
;	main.c:169: NVSTATUS = 0x20;
	mov	_NVSTATUS,#0x20
	C$main.c$170$2$134 ==.
;	main.c:170: st = waitflash(65535);
	mov	dptr,#0xffff
	push	ar6
	lcall	_waitflash
	mov	r7,dpl
	pop	ar6
	C$main.c$171$2$134 ==.
;	main.c:171: if (st)
	mov	a,r7
	jnz	00110$
	C$main.c$173$2$134 ==.
;	main.c:173: pg += 4;
	mov	a,r6
	add	a,#0x04
	mov	r6,a
	C$main.c$174$1$133 ==.
;	main.c:174: } while (pg != bootloader_reset_vector_hi());
	mov	r5,#(__sdcc_gsinit_startup >> 8)
	mov	ar4,r5
	mov	a,r6
	cjne	a,ar4,00107$
	C$main.c$175$1$133 ==.
;	main.c:175: flash_lock();
	lcall	_flash_lock
	C$main.c$176$1$133 ==.
;	main.c:176: return 0;
	mov	dpl,#0x00
	C$main.c$177$1$133 ==.
;	main.c:177: ferr:
	sjmp	00111$
00110$:
	C$main.c$178$1$133 ==.
;	main.c:178: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
	C$main.c$179$1$133 ==.
;	main.c:179: return st;
	mov	dpl,r7
00111$:
	C$main.c$180$1$133 ==.
	XFmain$erase_app$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_app_erased'
;------------------------------------------------------------
;pmem                      Allocated to registers r2 r3 
;------------------------------------------------------------
	Fmain$check_app_erased$0$0 ==.
	C$main.c$182$1$133 ==.
;	main.c:182: static int8_t check_app_erased(void)
;	-----------------------------------------
;	 function check_app_erased
;	-----------------------------------------
_check_app_erased:
	C$main.c$185$1$136 ==.
;	main.c:185: if (*pmem++ != 0x02)
	mov	dptr,#0x0000
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x02,00132$
	sjmp	00102$
00132$:
	C$main.c$186$1$136 ==.
;	main.c:186: return -3;
	mov	dpl,#0xfd
	sjmp	00112$
00102$:
	C$main.c$187$1$136 ==.
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
	C$main.c$188$1$136 ==.
;	main.c:188: return -3;
	mov	dpl,#0xfd
	sjmp	00112$
00104$:
	C$main.c$189$1$136 ==.
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
	C$main.c$190$1$136 ==.
;	main.c:190: return -3;
	mov	dpl,#0xfd
	C$main.c$191$1$136 ==.
;	main.c:191: do {
	sjmp	00112$
00118$:
	mov	ar6,r2
	mov	ar7,r3
00109$:
	C$main.c$192$2$137 ==.
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
	C$main.c$193$2$137 ==.
;	main.c:193: return -1;
	mov	dpl,#0xff
	sjmp	00112$
00110$:
	C$main.c$194$1$136 ==.
;	main.c:194: } while ((uint8_t)(((uint16_t)pmem) >> 8) != bootloader_reset_vector_hi());
	mov	ar3,r6
	mov	ar5,r7
	mov	ar3,r5
	mov	a,r3
	cjne	a,ar4,00109$
	C$main.c$195$1$136 ==.
;	main.c:195: return 0;
	mov	dpl,#0x00
00112$:
	C$main.c$196$1$136 ==.
	XFmain$check_app_erased$0$0 ==.
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
	Fmain$flash_line$0$0 ==.
	C$main.c$198$1$136 ==.
;	main.c:198: static int8_t flash_line(void)
;	-----------------------------------------
;	 function flash_line
;	-----------------------------------------
_flash_line:
	C$main.c$202$1$139 ==.
;	main.c:202: uint8_t cnt = line_buffer[0];
	mov	dptr,#_line_buffer
	movx	a,@dptr
	C$main.c$204$1$139 ==.
;	main.c:204: if (!cnt)
	mov	_flash_line_cnt_1_139,a
	C$main.c$205$1$139 ==.
;	main.c:205: return 0;
	jnz	00102$
	mov	dpl,a
	ljmp	00152$
00102$:
	C$main.c$206$1$139 ==.
;	main.c:206: addr = line_buffer[1];
	mov	dptr,#(_line_buffer + 0x0001)
	movx	a,@dptr
	C$main.c$207$1$139 ==.
;	main.c:207: addr <<= 8;
	mov	r6,a
	mov	r5,#0x00
	C$main.c$208$1$139 ==.
;	main.c:208: addr |= line_buffer[2];
	mov	dptr,#(_line_buffer + 0x0002)
	movx	a,@dptr
	mov	r3,#0x00
	orl	ar5,a
	mov	a,r3
	orl	ar6,a
	C$main.c$209$1$139 ==.
;	main.c:209: lb = &line_buffer[4];
	mov	a,#0x04
	add	a,#_line_buffer
	mov	_flash_line_lb_1_139,a
	clr	a
	addc	a,#(_line_buffer >> 8)
	mov	(_flash_line_lb_1_139 + 1),a
	C$main.c$210$1$139 ==.
;	main.c:210: flash_unlock();
	push	ar6
	push	ar5
	lcall	_flash_unlock
	pop	ar5
	pop	ar6
	C$main.c$211$3$141 ==.
;	main.c:211: do {
00138$:
	C$main.c$212$2$140 ==.
;	main.c:212: if (addr < 3) {
	clr	c
	mov	a,r5
	subb	a,#0x03
	mov	a,r6
	subb	a,#0x00
	jc	00230$
	ljmp	00117$
00230$:
	C$main.c$213$3$141 ==.
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
	C$main.c$214$3$141 ==.
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
	C$main.c$215$3$141 ==.
;	main.c:215: ++addr;
	inc	r5
	cjne	r5,#0x00,00234$
	inc	r6
00234$:
	C$main.c$216$3$141 ==.
;	main.c:216: if (3 & (uint8_t)~orig_jmp_vector_mask)
	mov	dptr,#_orig_jmp_vector_mask
	movx	a,@dptr
	cpl	a
	mov	r7,a
	anl	a,#0x03
	jz	00236$
	ljmp	00139$
00236$:
	C$main.c$218$3$141 ==.
;	main.c:218: if (!((orig_jmp_vector[0] ^ 0x01) & 0x0F)) {
	mov	dptr,#_orig_jmp_vector
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x01
	xrl	a,r2
	anl	a,#0x0f
	jnz	00110$
	C$main.c$219$4$142 ==.
;	main.c:219: NVDATA0 = orig_jmp_vector[1];
	mov	dptr,#(_orig_jmp_vector + 0x0001)
	movx	a,@dptr
	mov	_NVDATA0,a
	C$main.c$220$4$142 ==.
;	main.c:220: NVDATA1 = orig_jmp_vector[0] >> 5;
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	mov	_NVDATA1,a
	sjmp	00111$
00110$:
	C$main.c$221$3$141 ==.
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
	C$main.c$222$4$143 ==.
;	main.c:222: NVDATA0 = orig_jmp_vector[2];
	mov	dptr,#(_orig_jmp_vector + 0x0002)
	movx	a,@dptr
	mov	_NVDATA0,a
	C$main.c$223$4$143 ==.
;	main.c:223: NVDATA1 = orig_jmp_vector[1];
	mov	dptr,#(_orig_jmp_vector + 0x0001)
	movx	a,@dptr
	mov	_NVDATA1,a
	C$main.c$225$3$141 ==.
;	main.c:225: continue;
00111$:
	C$main.c$227$3$141 ==.
;	main.c:227: NVADDR0 = (uint16_t)&jmp_vector;
	mov	r2,#_jmp_vector
	mov	r7,#(_jmp_vector >> 8)
	mov	_NVADDR0,r2
	C$main.c$228$3$141 ==.
;	main.c:228: NVADDR1 = ((uint16_t)&jmp_vector) >> 8;
	mov	r2,#_jmp_vector
	mov	r7,#(_jmp_vector >> 8)
	mov	_NVADDR1,r7
	C$main.c$229$3$141 ==.
;	main.c:229: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$230$3$141 ==.
;	main.c:230: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
	C$main.c$231$3$141 ==.
;	main.c:231: if (st) {
	mov	a,r7
	jz	00113$
	C$main.c$232$4$145 ==.
;	main.c:232: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
	C$main.c$233$4$145 ==.
;	main.c:233: return st;
	mov	dpl,r7
	ljmp	00152$
00113$:
	C$main.c$235$3$141 ==.
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
	C$main.c$236$3$141 ==.
;	main.c:236: goto cmperr;
	ljmp	00148$
	C$main.c$237$2$140 ==.
;	main.c:237: continue;
00117$:
	C$main.c$239$2$140 ==.
;	main.c:239: NVADDR0 = (uint8_t)addr & (uint8_t)~1;
	mov	ar4,r5
	mov	a,#0xfe
	anl	a,r4
	mov	_NVADDR0,a
	C$main.c$240$2$140 ==.
;	main.c:240: NVADDR1 = addr >> 8;
	mov	ar4,r6
	mov	_NVADDR1,r4
	C$main.c$241$2$140 ==.
;	main.c:241: if ((uint8_t)(addr >> 8) >= bootloader_reset_vector_hi())
	mov	r3,#(__sdcc_gsinit_startup >> 8)
	mov	ar2,r3
	clr	c
	mov	a,r4
	subb	a,r2
	jc	00245$
	ljmp	00148$
00245$:
	C$main.c$243$2$140 ==.
;	main.c:243: if (addr & 1) {
	mov	a,r5
	jnb	acc.0,00125$
	C$main.c$244$3$146 ==.
;	main.c:244: NVDATA0 = 0xff;
	mov	_NVDATA0,#0xff
	C$main.c$245$3$146 ==.
;	main.c:245: NVDATA1 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA1,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
	C$main.c$246$3$146 ==.
;	main.c:246: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$247$3$146 ==.
;	main.c:247: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
	C$main.c$248$3$146 ==.
;	main.c:248: if (st)
	mov	a,r7
	jz	00247$
	ljmp	00149$
00247$:
	C$main.c$250$3$146 ==.
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
	C$main.c$252$3$146 ==.
;	main.c:252: ++addr;
	inc	r5
	cjne	r5,#0x00,00250$
	inc	r6
00250$:
	C$main.c$253$3$146 ==.
;	main.c:253: continue;
	ljmp	00139$
00125$:
	C$main.c$255$2$140 ==.
;	main.c:255: if (!(cnt & (uint8_t)~1)) {
	mov	a,_flash_line_cnt_1_139
	anl	a,#0xfe
	jnz	00131$
	C$main.c$256$3$147 ==.
;	main.c:256: NVDATA0 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA0,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
	C$main.c$257$3$147 ==.
;	main.c:257: NVDATA1 = 0xff;
	mov	_NVDATA1,#0xff
	C$main.c$258$3$147 ==.
;	main.c:258: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$259$3$147 ==.
;	main.c:259: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
	C$main.c$260$3$147 ==.
;	main.c:260: if (st)
	mov	a,r7
	jz	00253$
	ljmp	00149$
00253$:
	C$main.c$262$3$147 ==.
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
	C$main.c$264$3$147 ==.
;	main.c:264: ++addr;
	inc	r5
	C$main.c$265$3$147 ==.
;	main.c:265: continue;
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00131$:
	C$main.c$267$2$140 ==.
;	main.c:267: NVDATA0 = *lb++;
	mov	dpl,_flash_line_lb_1_139
	mov	dph,(_flash_line_lb_1_139 + 1)
	movx	a,@dptr
	mov	_NVDATA0,a
	inc	dptr
	C$main.c$268$2$140 ==.
;	main.c:268: NVDATA1 = *lb++;
	mov	_flash_line_lb_1_139,dpl
	mov  (_flash_line_lb_1_139 + 1),dph
	movx	a,@dptr
	mov	_NVDATA1,a
	inc	dptr
	mov	_flash_line_lb_1_139,dpl
	mov	(_flash_line_lb_1_139 + 1),dph
	C$main.c$269$2$140 ==.
;	main.c:269: NVSTATUS = 0x30;
	mov	_NVSTATUS,#0x30
	C$main.c$270$2$140 ==.
;	main.c:270: st = waitflash(128);
	mov	dptr,#0x0080
	push	ar6
	push	ar5
	lcall	_waitflash
	mov	r7,dpl
	pop	ar5
	pop	ar6
	C$main.c$271$2$140 ==.
;	main.c:271: if (st)
	mov	a,r7
	jnz	00149$
	C$main.c$273$2$140 ==.
;	main.c:273: if (NVDATA0 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA0,00148$
	C$main.c$275$2$140 ==.
;	main.c:275: ++addr;
	inc	r5
	cjne	r5,#0x00,00260$
	inc	r6
00260$:
	C$main.c$276$2$140 ==.
;	main.c:276: if (NVDATA1 != *(const __code uint8_t *)addr)
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_NVDATA1,00148$
	C$main.c$278$2$140 ==.
;	main.c:278: ++addr;
	inc	r5
	cjne	r5,#0x00,00263$
	inc	r6
00263$:
	C$main.c$279$2$140 ==.
;	main.c:279: --cnt;
	dec	_flash_line_cnt_1_139
00139$:
	C$main.c$280$1$139 ==.
;	main.c:280: } while (--cnt);
	djnz	_flash_line_cnt_1_139,00264$
	sjmp	00265$
00264$:
	ljmp	00138$
00265$:
	C$main.c$281$1$139 ==.
;	main.c:281: flash_lock();
	lcall	_flash_lock
	C$main.c$282$1$139 ==.
;	main.c:282: st = 0;
	mov	r7,#0x00
00150$:
	C$main.c$284$2$148 ==.
;	main.c:284: char ch = getch();
	push	ar7
	lcall	_getch
	mov	r6,dpl
	pop	ar7
	C$main.c$285$2$148 ==.
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
	C$main.c$287$3$149 ==.
;	main.c:287: case '\r':
	cjne	r6,#0x20,00145$
	sjmp	00150$
00142$:
	C$main.c$288$3$149 ==.
;	main.c:288: return st;
	mov	dpl,r7
	C$main.c$294$3$149 ==.
;	main.c:294: default:
	sjmp	00152$
00145$:
	C$main.c$295$3$149 ==.
;	main.c:295: st = -7;
	mov	r7,#0xf9
	C$main.c$297$2$148 ==.
;	main.c:297: }
	C$main.c$300$1$139 ==.
;	main.c:300: cmperr:
	sjmp	00150$
00148$:
	C$main.c$301$1$139 ==.
;	main.c:301: flash_lock();
	lcall	_flash_lock
	C$main.c$302$1$139 ==.
;	main.c:302: return -6;
	mov	dpl,#0xfa
	C$main.c$304$1$139 ==.
;	main.c:304: ferr:
	sjmp	00152$
00149$:
	C$main.c$305$1$139 ==.
;	main.c:305: flash_lock();
	push	ar7
	lcall	_flash_lock
	pop	ar7
	C$main.c$306$1$139 ==.
;	main.c:306: return st;
	mov	dpl,r7
00152$:
	C$main.c$307$1$139 ==.
	XFmain$flash_line$0$0 ==.
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
	Fmain$parse_ihex$0$0 ==.
	C$main.c$309$1$139 ==.
;	main.c:309: static int8_t parse_ihex(void)
;	-----------------------------------------
;	 function parse_ihex
;	-----------------------------------------
_parse_ihex:
	C$main.c$312$1$139 ==.
;	main.c:312: uint8_t s = 0;
	mov	r7,#0x00
	C$main.c$313$1$151 ==.
;	main.c:313: do {
	mov	r5,#0x00
	mov	r6,#0x00
00110$:
	C$main.c$314$2$151 ==.
;	main.c:314: uint8_t val = 0;
	mov	r4,#0x00
	C$main.c$315$2$151 ==.
;	main.c:315: uint8_t cnt = 2;
	mov	r3,#0x02
	C$main.c$316$2$152 ==.
;	main.c:316: do {
00107$:
	C$main.c$317$3$153 ==.
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
	C$main.c$318$3$153 ==.
;	main.c:318: val <<= 4;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	C$main.c$319$3$153 ==.
;	main.c:319: ch -= '0';
	mov	ar1,r2
	mov	a,r1
	add	a,#0xd0
	mov	r2,a
	C$main.c$320$3$153 ==.
;	main.c:320: if (ch < 10) {
	cjne	r2,#0x0a,00151$
00151$:
	jnc	00102$
	C$main.c$321$4$154 ==.
;	main.c:321: val |= ch;
	mov	a,r2
	orl	ar4,a
	C$main.c$322$4$154 ==.
;	main.c:322: continue;
	sjmp	00108$
00102$:
	C$main.c$324$3$153 ==.
;	main.c:324: ch -= ('A' - '0');
	mov	ar1,r2
	mov	a,r1
	add	a,#0xef
	mov	r2,a
	C$main.c$325$3$153 ==.
;	main.c:325: if (ch < 6) {
	cjne	r2,#0x06,00153$
00153$:
	jnc	00104$
	C$main.c$326$4$155 ==.
;	main.c:326: val |= ch + 10;
	mov	a,#0x0a
	add	a,r2
	orl	ar4,a
	C$main.c$327$4$155 ==.
;	main.c:327: continue;
	sjmp	00108$
00104$:
	C$main.c$329$3$153 ==.
;	main.c:329: ch -= ('a' - 'A');
	mov	ar1,r2
	mov	a,r1
	add	a,#0xe0
	mov	r2,a
	C$main.c$330$3$153 ==.
;	main.c:330: if (ch < 6) {
	cjne	r2,#0x06,00155$
00155$:
	jnc	00106$
	C$main.c$331$4$156 ==.
;	main.c:331: val |= ch + 10;
	mov	a,#0x0a
	add	a,r2
	orl	ar4,a
	C$main.c$332$4$156 ==.
;	main.c:332: continue;
	sjmp	00108$
00106$:
	C$main.c$334$3$153 ==.
;	main.c:334: return -3;
	mov	dpl,#0xfd
	sjmp	00117$
00108$:
	C$main.c$335$2$152 ==.
;	main.c:335: } while (--cnt);
	mov	a,r3
	dec	a
	mov	r2,a
	mov	r3,a
	jnz	00107$
	C$main.c$336$2$152 ==.
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
	C$main.c$337$2$152 ==.
;	main.c:337: s += val;
	mov	a,r4
	add	a,r7
	mov	r7,a
	C$main.c$338$1$151 ==.
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
	C$main.c$339$1$151 ==.
;	main.c:339: if (s)
	mov	a,r7
	jz	00114$
	C$main.c$340$1$151 ==.
;	main.c:340: return -4;
	mov	dpl,#0xfc
	sjmp	00117$
00114$:
	C$main.c$341$1$151 ==.
;	main.c:341: if (line_buffer[3])
	mov	dptr,#(_line_buffer + 0x0003)
	movx	a,@dptr
	mov	r7,a
	jz	00116$
	C$main.c$342$1$151 ==.
;	main.c:342: return (line_buffer[3] == 1) ? 0 : -5;
	cjne	r7,#0x01,00119$
	mov	r7,#0x00
	sjmp	00120$
00119$:
	mov	r7,#0xfb
00120$:
	mov	dpl,r7
	sjmp	00117$
00116$:
	C$main.c$343$1$151 ==.
;	main.c:343: return flash_line();
	lcall	_flash_line
00117$:
	C$main.c$344$1$151 ==.
	XFmain$parse_ihex$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_banner'
;------------------------------------------------------------
;crc                       Allocated to registers r6 r7 
;------------------------------------------------------------
	Fmain$write_banner$0$0 ==.
	C$main.c$346$1$151 ==.
;	main.c:346: static void write_banner(void)
;	-----------------------------------------
;	 function write_banner
;	-----------------------------------------
_write_banner:
	C$main.c$350$1$158 ==.
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
	C$main.c$352$1$158 ==.
;	main.c:352: uart0_writestr(uart_banner);
	mov	dptr,#_write_banner_uart_banner_1_158
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_uart0_writestr
	pop	ar6
	pop	ar7
	C$main.c$353$1$158 ==.
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
	C$main.c$354$1$158 ==.
;	main.c:354: uart0_writestr(uart_crlf);
	mov	dptr,#_write_banner_uart_crlf_1_158
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$355$1$158 ==.
	XFmain$write_banner$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
	G$_sdcc_external_startup$0$0 ==.
	C$main.c$357$1$158 ==.
;	main.c:357: uint8_t _sdcc_external_startup(void)
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	C$main.c$359$1$160 ==.
;	main.c:359: DPS = 0x00;
	mov	_DPS,#0x00
	C$main.c$360$1$160 ==.
;	main.c:360: ANALOGA = 0x3F;
	mov	dptr,#_ANALOGA
	mov	a,#0x3f
	movx	@dptr,a
	C$main.c$361$1$160 ==.
;	main.c:361: PORTA = 0xC0;
	mov	_PORTA,#0xc0
	C$main.c$362$1$160 ==.
;	main.c:362: DIRA = 0x00;
	mov	_DIRA,#0x00
	C$main.c$363$1$160 ==.
;	main.c:363: PORTB = 0xFC;
	mov	_PORTB,#0xfc
	C$main.c$364$1$160 ==.
;	main.c:364: DIRB = 0x13;
	mov	_DIRB,#0x13
	C$main.c$365$1$160 ==.
;	main.c:365: PALTB = 0x10;
	mov	dptr,#_PALTB
	mov	a,#0x10
	movx	@dptr,a
	C$main.c$366$1$160 ==.
;	main.c:366: PORTC = 0xF3;
	mov	_PORTC,#0xf3
	C$main.c$367$1$160 ==.
;	main.c:367: DIRC = 0x0F;
	mov	_DIRC,#0x0f
	C$main.c$368$1$160 ==.
;	main.c:368: PORTR = 0xFF;
	mov	_PORTR,#0xff
	C$main.c$369$1$160 ==.
;	main.c:369: DIRR = 0x15;
	mov	_DIRR,#0x15
	C$main.c$370$1$160 ==.
;	main.c:370: RADIOMUX = 0x47;
	mov	dptr,#_RADIOMUX
	mov	a,#0x47
	movx	@dptr,a
	C$main.c$371$1$160 ==.
;	main.c:371: RADIOACC = 0x00;
	mov	_RADIOACC,#0x00
	C$main.c$372$1$160 ==.
;	main.c:372: return 0;
	mov	dpl,#0x00
	C$main.c$373$1$160 ==.
	XG$_sdcc_external_startup$0$0 ==.
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
	G$bootloader$0$0 ==.
	C$main.c$379$1$160 ==.
;	main.c:379: void bootloader(void)
;	-----------------------------------------
;	 function bootloader
;	-----------------------------------------
_bootloader:
	C$main.c$424$1$162 ==.
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
	C$main.c$427$1$162 ==.
;	main.c:427: flash_apply_calibration();
	lcall	_flash_apply_calibration
	C$main.c$428$1$162 ==.
;	main.c:428: CLKCON = 0x00;
	mov	_CLKCON,#0x00
	C$main.c$431$1$162 ==.
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
	C$main.c$432$2$163 ==.
;	main.c:432: run_application();
	lcall	_run_application
00102$:
	C$main.c$437$1$162 ==.
;	main.c:437: FRCOSCREF = 19531;
	mov	dptr,#_FRCOSCREF
	mov	a,#0x4b
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	C$main.c$438$1$162 ==.
;	main.c:438: FRCOSCKFILT = 2800; /* theoretical maximum is 71582 */
	mov	dptr,#_FRCOSCKFILT
	mov	a,#0xf0
	movx	@dptr,a
	mov	a,#0x0a
	inc	dptr
	movx	@dptr,a
	C$main.c$439$1$162 ==.
;	main.c:439: LPXOSCGM = 0x90;
	mov	dptr,#_LPXOSCGM
	mov	a,#0x90
	movx	@dptr,a
	C$main.c$440$1$162 ==.
;	main.c:440: OSCFORCERUN |= 0x04;
	mov	dptr,#_OSCFORCERUN
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	orl	a,r7
	movx	@dptr,a
	C$main.c$441$1$162 ==.
;	main.c:441: FRCOSCCONFIG = (6 << 3) | CLKSRC_LPXOSC;
	mov	dptr,#_FRCOSCCONFIG
	mov	a,#0x33
	movx	@dptr,a
	C$main.c$443$1$162 ==.
;	main.c:443: WTCFGB = (1 << 3) | CLKSRC_LPXOSC;
	mov	_WTCFGB,#0x0b
	C$main.c$446$2$162 ==.
;	main.c:446: uint8_t i = 128;
	mov	r7,#0x80
	C$main.c$447$2$164 ==.
;	main.c:447: PORTC_3 = 1;
	setb	_PORTC_3
	C$main.c$448$2$164 ==.
;	main.c:448: OSCCALIB = 0x01;
	mov	dptr,#_OSCCALIB
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$449$2$164 ==.
;	main.c:449: IE_5 = 1;
	setb	_IE_5
	C$main.c$457$3$165 ==.
;	main.c:457: FRCOSCFREQ1;
00149$:
	C$main.c$452$4$165 ==.
;	main.c:452: uint8_t oc = OSCCALIB;
	mov	dptr,#_OSCCALIB
	movx	a,@dptr
	C$main.c$453$4$166 ==.
;	main.c:453: if (oc & 0x40)
	mov	r6,a
	jb	acc.6,00106$
	C$main.c$455$4$166 ==.
;	main.c:455: enter_standby();
	lcall	_enter_standby
	sjmp	00149$
00106$:
	C$main.c$457$3$165 ==.
;	main.c:457: FRCOSCFREQ1;
	mov	dptr,#_FRCOSCFREQ1
	movx	a,@dptr
	C$main.c$458$2$164 ==.
;	main.c:458: } while (--i);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00149$
	C$main.c$459$2$164 ==.
;	main.c:459: IE_5 = 0;
	clr	_IE_5
	C$main.c$460$2$164 ==.
;	main.c:460: OSCCALIB = 0x00;
	mov	dptr,#_OSCCALIB
	clr	a
	movx	@dptr,a
	C$main.c$461$2$164 ==.
;	main.c:461: PORTC_3 = 0;
	clr	_PORTC_3
	C$main.c$465$1$162 ==.
;	main.c:465: ADCCH0CONFIG = 0xD9;
	mov	_ADCCH0CONFIG,#0xd9
	C$main.c$466$1$162 ==.
;	main.c:466: ADCCH1CONFIG = 0xD9;
	mov	_ADCCH1CONFIG,#0xd9
	C$main.c$467$1$162 ==.
;	main.c:467: ADCCH2CONFIG = 0xD9;
	mov	_ADCCH2CONFIG,#0xd9
	C$main.c$468$1$162 ==.
;	main.c:468: ADCCH3CONFIG = 0xD9;
	mov	_ADCCH3CONFIG,#0xd9
	C$main.c$470$1$162 ==.
;	main.c:470: orig_jmp_vector_mask = 0;
	mov	dptr,#_orig_jmp_vector_mask
	clr	a
	movx	@dptr,a
	C$main.c$472$1$162 ==.
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
	C$main.c$473$1$162 ==.
;	main.c:473: uart0_init(0, 8, 1);
	mov	_uart0_init_PARM_2,#0x08
	mov	_uart0_init_PARM_3,#0x01
	mov	dpl,#0x00
	lcall	_uart0_init
	C$main.c$481$1$162 ==.
;	main.c:481: write_banner();
	lcall	_write_banner
00151$:
	C$main.c$484$2$167 ==.
;	main.c:484: char ch = getch();
	lcall	_getch
	mov	r7,dpl
	C$main.c$485$2$167 ==.
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
	C$main.c$491$3$168 ==.
;	main.c:491: case '?':
00113$:
	C$main.c$492$3$168 ==.
;	main.c:492: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$493$3$168 ==.
;	main.c:493: write_banner();
	lcall	_write_banner
	C$main.c$494$3$168 ==.
;	main.c:494: break;
	C$main.c$496$3$168 ==.
;	main.c:496: case 'K':
	sjmp	00151$
00114$:
	C$main.c$498$4$169 ==.
;	main.c:498: int8_t st = erase_app();
	lcall	_erase_app
	C$main.c$499$4$169 ==.
;	main.c:499: if (!st)
	mov	a,dpl
	mov	r7,a
	jnz	00116$
	C$main.c$500$4$169 ==.
;	main.c:500: st = check_app_erased();
	lcall	_check_app_erased
	mov	r7,dpl
00116$:
	C$main.c$501$4$169 ==.
;	main.c:501: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$502$4$169 ==.
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
	C$main.c$504$5$170 ==.
;	main.c:504: uart0_writestr(uart_okflasherase);
	mov	dptr,#_bootloader_uart_okflasherase_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$505$5$170 ==.
;	main.c:505: break;
	C$main.c$507$5$170 ==.
;	main.c:507: case -2:
	sjmp	00151$
00118$:
	C$main.c$508$5$170 ==.
;	main.c:508: uart0_writestr(uart_errflashlock);
	mov	dptr,#_bootloader_uart_errflashlock_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$509$5$170 ==.
;	main.c:509: break;
	ljmp	00151$
	C$main.c$511$5$170 ==.
;	main.c:511: case -3:
00119$:
	C$main.c$512$5$170 ==.
;	main.c:512: uart0_writestr(uart_errflashvector);
	mov	dptr,#_bootloader_uart_errflashvector_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$513$5$170 ==.
;	main.c:513: break;
	ljmp	00151$
	C$main.c$515$5$170 ==.
;	main.c:515: case -4:
00120$:
	C$main.c$516$5$170 ==.
;	main.c:516: uart0_writestr(uart_errflashvdd);
	mov	dptr,#_bootloader_uart_errflashvdd_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$517$5$170 ==.
;	main.c:517: break;
	ljmp	00151$
	C$main.c$519$5$170 ==.
;	main.c:519: default:
00121$:
	C$main.c$520$5$170 ==.
;	main.c:520: uart0_writestr(uart_errflashtimeout);
	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$523$4$169 ==.
;	main.c:523: break;
	ljmp	00151$
	C$main.c$526$3$168 ==.
;	main.c:526: case 'Z':
00123$:
	C$main.c$528$4$171 ==.
;	main.c:528: int8_t st = check_app_erased();
	lcall	_check_app_erased
	mov	r7,dpl
	C$main.c$529$4$171 ==.
;	main.c:529: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$530$4$171 ==.
;	main.c:530: switch (st) {
	cjne	r7,#0xfd,00270$
	sjmp	00125$
00270$:
	cjne	r7,#0x00,00126$
	C$main.c$532$5$172 ==.
;	main.c:532: uart0_writestr(uart_okflasherasecheck);
	mov	dptr,#_bootloader_uart_okflasherasecheck_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$533$5$172 ==.
;	main.c:533: break;
	ljmp	00151$
	C$main.c$535$5$172 ==.
;	main.c:535: case -3:
00125$:
	C$main.c$536$5$172 ==.
;	main.c:536: uart0_writestr(uart_errflashvector);
	mov	dptr,#_bootloader_uart_errflashvector_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$537$5$172 ==.
;	main.c:537: break;
	ljmp	00151$
	C$main.c$539$5$172 ==.
;	main.c:539: default:
00126$:
	C$main.c$540$5$172 ==.
;	main.c:540: uart0_writestr(uart_errflasherasecheck);
	mov	dptr,#_bootloader_uart_errflasherasecheck_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$543$4$171 ==.
;	main.c:543: break;
	ljmp	00151$
	C$main.c$546$3$168 ==.
;	main.c:546: case 'R':
00128$:
	C$main.c$548$4$173 ==.
;	main.c:548: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$549$4$173 ==.
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
	C$main.c$550$5$174 ==.
;	main.c:550: uart0_writestr(uart_errrunapp);
	mov	dptr,#_bootloader_uart_errrunapp_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$551$5$174 ==.
;	main.c:551: break;
	ljmp	00151$
00130$:
	C$main.c$553$4$173 ==.
;	main.c:553: uart0_writestr(uart_okrunapp);
	mov	dptr,#_bootloader_uart_okrunapp_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$554$4$173 ==.
;	main.c:554: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$556$4$173 ==.
;	main.c:556: while (0x44 & (uint8_t)~U0STATUS);
00131$:
	mov	a,_U0STATUS
	cpl	a
	mov	r7,a
	anl	a,#0x44
	jz	00276$
	sjmp	00131$
00276$:
	C$main.c$557$4$173 ==.
;	main.c:557: run_application();
	lcall	_run_application
	C$main.c$558$4$173 ==.
;	main.c:558: break;
	ljmp	00151$
	C$main.c$561$3$168 ==.
;	main.c:561: case ':':
00134$:
	C$main.c$563$4$175 ==.
;	main.c:563: int8_t st = parse_ihex();
	lcall	_parse_ihex
	C$main.c$564$4$175 ==.
;	main.c:564: if (!st)
	mov	a,dpl
	mov	r7,a
	jnz	00277$
	ljmp	00151$
00277$:
	C$main.c$566$4$175 ==.
;	main.c:566: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$567$4$175 ==.
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
	C$main.c$569$5$176 ==.
;	main.c:569: uart0_writestr(uart_errflashlock);
	mov	dptr,#_bootloader_uart_errflashlock_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$570$5$176 ==.
;	main.c:570: break;
	ljmp	00151$
	C$main.c$572$5$176 ==.
;	main.c:572: case -3:
00138$:
	C$main.c$573$5$176 ==.
;	main.c:573: uart0_writestr(uart_errhexinvalidchar);
	mov	dptr,#_bootloader_uart_errhexinvalidchar_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$574$5$176 ==.
;	main.c:574: break;
	ljmp	00151$
	C$main.c$576$5$176 ==.
;	main.c:576: case -4:
00139$:
	C$main.c$577$5$176 ==.
;	main.c:577: uart0_writestr(uart_errhexchksum);
	mov	dptr,#_bootloader_uart_errhexchksum_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$578$5$176 ==.
;	main.c:578: break;
	ljmp	00151$
	C$main.c$580$5$176 ==.
;	main.c:580: case -5:
00140$:
	C$main.c$581$5$176 ==.
;	main.c:581: uart0_writestr(uart_errhexrectype);
	mov	dptr,#_bootloader_uart_errhexrectype_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$582$5$176 ==.
;	main.c:582: break;
	ljmp	00151$
	C$main.c$584$5$176 ==.
;	main.c:584: case -6:
00141$:
	C$main.c$585$5$176 ==.
;	main.c:585: uart0_writestr(uart_errhexflashwrite);
	mov	dptr,#_bootloader_uart_errhexflashwrite_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$586$5$176 ==.
;	main.c:586: break;
	ljmp	00151$
	C$main.c$588$5$176 ==.
;	main.c:588: case -7:
00142$:
	C$main.c$589$5$176 ==.
;	main.c:589: uart0_writestr(uart_errhexgarbagechar);
	mov	dptr,#_bootloader_uart_errhexgarbagechar_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$590$5$176 ==.
;	main.c:590: break;
	ljmp	00151$
	C$main.c$592$5$176 ==.
;	main.c:592: default:
00143$:
	C$main.c$593$5$176 ==.
;	main.c:593: uart0_writestr(uart_errflashtimeout);
	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$596$4$175 ==.
;	main.c:596: break;
	ljmp	00151$
	C$main.c$599$3$168 ==.
;	main.c:599: case 'V':
00145$:
	C$main.c$601$4$177 ==.
;	main.c:601: uint16_t vdd = measurevdd();
	lcall	_measurevdd
	mov	r6,dpl
	mov	r7,dph
	C$main.c$602$4$177 ==.
;	main.c:602: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$603$4$177 ==.
;	main.c:603: uart0_writestr(uart_vdd1);
	mov	dptr,#_bootloader_uart_vdd1_1_162
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_uart0_writestr
	pop	ar6
	pop	ar7
	C$main.c$604$4$177 ==.
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
	C$main.c$605$4$177 ==.
;	main.c:605: uart0_tx('.');
	mov	dpl,#0x2e
	lcall	_uart0_tx
	C$main.c$606$4$177 ==.
;	main.c:606: vdd &= 0xff;
	mov	r7,#0x00
	C$main.c$607$1$162 ==.
;	main.c:607: vdd *= 100;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r7,dph
	C$main.c$608$4$177 ==.
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
	C$main.c$609$4$177 ==.
;	main.c:609: uart0_writestr(uart_vdd2);
	mov	dptr,#_bootloader_uart_vdd2_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$610$4$177 ==.
;	main.c:610: break;
	ljmp	00151$
	C$main.c$613$3$168 ==.
;	main.c:613: default:
00146$:
	C$main.c$615$3$168 ==.
;	main.c:615: uart0_rxadvance(uart0_rxcount());
	lcall	_uart0_rxcount
	lcall	_uart0_rxadvance
	C$main.c$616$3$168 ==.
;	main.c:616: uart0_wait_txfree(63);
	mov	dpl,#0x3f
	lcall	_uart0_wait_txfree
	C$main.c$617$3$168 ==.
;	main.c:617: uart0_writestr(uart_errunknowncmd);
	mov	dptr,#_bootloader_uart_errunknowncmd_1_162
	mov	b,#0x80
	lcall	_uart0_writestr
	C$main.c$619$2$167 ==.
;	main.c:619: }
	ljmp	00151$
	C$main.c$621$1$162 ==.
	XG$bootloader$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$jmp_vector$0$0 == 0xe3fe
_jmp_vector	=	0xe3fe
Lmain.write_banner$uart_banner$1$158 == .
_write_banner_uart_banner_1_158:
	.ascii "AX8052 Bootloader V1.1 Checksum 0x"
	.db 0x00
Lmain.write_banner$uart_crlf$1$158 == .
_write_banner_uart_crlf_1_158:
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errunknowncmd$1$162 == .
_bootloader_uart_errunknowncmd_1_162:
	.ascii "ERR-Unknown Command"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errflashtimeout$1$162 == .
_bootloader_uart_errflashtimeout_1_162:
	.ascii "ERR-FLASH Timeout"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errflashlock$1$162 == .
_bootloader_uart_errflashlock_1_162:
	.ascii "ERR-FLASH Locked"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errflashvector$1$162 == .
_bootloader_uart_errflashvector_1_162:
	.ascii "ERR-FLASH Vector"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errflashvdd$1$162 == .
_bootloader_uart_errflashvdd_1_162:
	.ascii "ERR-VDD low"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_okflasherase$1$162 == .
_bootloader_uart_okflasherase_1_162:
	.ascii "OK-FLASH Erase"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_okflasherasecheck$1$162 == .
_bootloader_uart_okflasherasecheck_1_162:
	.ascii "OK-FLASH Erase Check"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errflasherasecheck$1$162 == .
_bootloader_uart_errflasherasecheck_1_162:
	.ascii "ERR-FLASH not Erased"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_okrunapp$1$162 == .
_bootloader_uart_okrunapp_1_162:
	.ascii "OK-Running Application"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errrunapp$1$162 == .
_bootloader_uart_errrunapp_1_162:
	.ascii "ERR-no Application"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errhexinvalidchar$1$162 == .
_bootloader_uart_errhexinvalidchar_1_162:
	.ascii "ERR-Invalid Hex Character"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errhexchksum$1$162 == .
_bootloader_uart_errhexchksum_1_162:
	.ascii "ERR-Hex Checksum Error"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errhexrectype$1$162 == .
_bootloader_uart_errhexrectype_1_162:
	.ascii "ERR-Unknown Record Type ignored"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errhexflashwrite$1$162 == .
_bootloader_uart_errhexflashwrite_1_162:
	.ascii "ERR-FLASH write error"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_errhexgarbagechar$1$162 == .
_bootloader_uart_errhexgarbagechar_1_162:
	.ascii "ERR-Garbage Characters ignored"
	.db 0x0d
	.db 0x0a
	.db 0x00
Lmain.bootloader$uart_vdd1$1$162 == .
_bootloader_uart_vdd1_1_162:
	.ascii "VDD "
	.db 0x00
Lmain.bootloader$uart_vdd2$1$162 == .
_bootloader_uart_vdd2_1_162:
	.ascii "V"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
