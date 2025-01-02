                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _jmp_vector
                                     12 	.globl _bootloader
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl __sdcc_gsinit_startup
                                     15 	.globl _crc_crc16
                                     16 	.globl _flash_apply_calibration
                                     17 	.globl _flash_lock
                                     18 	.globl _flash_unlock
                                     19 	.globl _uart0_writehex16
                                     20 	.globl _uart0_writenum16
                                     21 	.globl _uart0_writestr
                                     22 	.globl _uart0_tx
                                     23 	.globl _uart0_rx
                                     24 	.globl _uart0_wait_txfree
                                     25 	.globl _uart0_init
                                     26 	.globl _uart0_rxadvance
                                     27 	.globl _uart0_rxcount
                                     28 	.globl _uart0_poll
                                     29 	.globl _uart_timer0_baud
                                     30 	.globl _enter_standby
                                     31 	.globl _PORTC_7
                                     32 	.globl _PORTC_6
                                     33 	.globl _PORTC_5
                                     34 	.globl _PORTC_4
                                     35 	.globl _PORTC_3
                                     36 	.globl _PORTC_2
                                     37 	.globl _PORTC_1
                                     38 	.globl _PORTC_0
                                     39 	.globl _PORTB_7
                                     40 	.globl _PORTB_6
                                     41 	.globl _PORTB_5
                                     42 	.globl _PORTB_4
                                     43 	.globl _PORTB_3
                                     44 	.globl _PORTB_2
                                     45 	.globl _PORTB_1
                                     46 	.globl _PORTB_0
                                     47 	.globl _PORTA_7
                                     48 	.globl _PORTA_6
                                     49 	.globl _PORTA_5
                                     50 	.globl _PORTA_4
                                     51 	.globl _PORTA_3
                                     52 	.globl _PORTA_2
                                     53 	.globl _PORTA_1
                                     54 	.globl _PORTA_0
                                     55 	.globl _PINC_7
                                     56 	.globl _PINC_6
                                     57 	.globl _PINC_5
                                     58 	.globl _PINC_4
                                     59 	.globl _PINC_3
                                     60 	.globl _PINC_2
                                     61 	.globl _PINC_1
                                     62 	.globl _PINC_0
                                     63 	.globl _PINB_7
                                     64 	.globl _PINB_6
                                     65 	.globl _PINB_5
                                     66 	.globl _PINB_4
                                     67 	.globl _PINB_3
                                     68 	.globl _PINB_2
                                     69 	.globl _PINB_1
                                     70 	.globl _PINB_0
                                     71 	.globl _PINA_7
                                     72 	.globl _PINA_6
                                     73 	.globl _PINA_5
                                     74 	.globl _PINA_4
                                     75 	.globl _PINA_3
                                     76 	.globl _PINA_2
                                     77 	.globl _PINA_1
                                     78 	.globl _PINA_0
                                     79 	.globl _CY
                                     80 	.globl _AC
                                     81 	.globl _F0
                                     82 	.globl _RS1
                                     83 	.globl _RS0
                                     84 	.globl _OV
                                     85 	.globl _F1
                                     86 	.globl _P
                                     87 	.globl _IP_7
                                     88 	.globl _IP_6
                                     89 	.globl _IP_5
                                     90 	.globl _IP_4
                                     91 	.globl _IP_3
                                     92 	.globl _IP_2
                                     93 	.globl _IP_1
                                     94 	.globl _IP_0
                                     95 	.globl _EA
                                     96 	.globl _IE_7
                                     97 	.globl _IE_6
                                     98 	.globl _IE_5
                                     99 	.globl _IE_4
                                    100 	.globl _IE_3
                                    101 	.globl _IE_2
                                    102 	.globl _IE_1
                                    103 	.globl _IE_0
                                    104 	.globl _EIP_7
                                    105 	.globl _EIP_6
                                    106 	.globl _EIP_5
                                    107 	.globl _EIP_4
                                    108 	.globl _EIP_3
                                    109 	.globl _EIP_2
                                    110 	.globl _EIP_1
                                    111 	.globl _EIP_0
                                    112 	.globl _EIE_7
                                    113 	.globl _EIE_6
                                    114 	.globl _EIE_5
                                    115 	.globl _EIE_4
                                    116 	.globl _EIE_3
                                    117 	.globl _EIE_2
                                    118 	.globl _EIE_1
                                    119 	.globl _EIE_0
                                    120 	.globl _E2IP_7
                                    121 	.globl _E2IP_6
                                    122 	.globl _E2IP_5
                                    123 	.globl _E2IP_4
                                    124 	.globl _E2IP_3
                                    125 	.globl _E2IP_2
                                    126 	.globl _E2IP_1
                                    127 	.globl _E2IP_0
                                    128 	.globl _E2IE_7
                                    129 	.globl _E2IE_6
                                    130 	.globl _E2IE_5
                                    131 	.globl _E2IE_4
                                    132 	.globl _E2IE_3
                                    133 	.globl _E2IE_2
                                    134 	.globl _E2IE_1
                                    135 	.globl _E2IE_0
                                    136 	.globl _B_7
                                    137 	.globl _B_6
                                    138 	.globl _B_5
                                    139 	.globl _B_4
                                    140 	.globl _B_3
                                    141 	.globl _B_2
                                    142 	.globl _B_1
                                    143 	.globl _B_0
                                    144 	.globl _ACC_7
                                    145 	.globl _ACC_6
                                    146 	.globl _ACC_5
                                    147 	.globl _ACC_4
                                    148 	.globl _ACC_3
                                    149 	.globl _ACC_2
                                    150 	.globl _ACC_1
                                    151 	.globl _ACC_0
                                    152 	.globl _WTSTAT
                                    153 	.globl _WTIRQEN
                                    154 	.globl _WTEVTD
                                    155 	.globl _WTEVTD1
                                    156 	.globl _WTEVTD0
                                    157 	.globl _WTEVTC
                                    158 	.globl _WTEVTC1
                                    159 	.globl _WTEVTC0
                                    160 	.globl _WTEVTB
                                    161 	.globl _WTEVTB1
                                    162 	.globl _WTEVTB0
                                    163 	.globl _WTEVTA
                                    164 	.globl _WTEVTA1
                                    165 	.globl _WTEVTA0
                                    166 	.globl _WTCNTR1
                                    167 	.globl _WTCNTB
                                    168 	.globl _WTCNTB1
                                    169 	.globl _WTCNTB0
                                    170 	.globl _WTCNTA
                                    171 	.globl _WTCNTA1
                                    172 	.globl _WTCNTA0
                                    173 	.globl _WTCFGB
                                    174 	.globl _WTCFGA
                                    175 	.globl _WDTRESET
                                    176 	.globl _WDTCFG
                                    177 	.globl _U1STATUS
                                    178 	.globl _U1SHREG
                                    179 	.globl _U1MODE
                                    180 	.globl _U1CTRL
                                    181 	.globl _U0STATUS
                                    182 	.globl _U0SHREG
                                    183 	.globl _U0MODE
                                    184 	.globl _U0CTRL
                                    185 	.globl _T2STATUS
                                    186 	.globl _T2PERIOD
                                    187 	.globl _T2PERIOD1
                                    188 	.globl _T2PERIOD0
                                    189 	.globl _T2MODE
                                    190 	.globl _T2CNT
                                    191 	.globl _T2CNT1
                                    192 	.globl _T2CNT0
                                    193 	.globl _T2CLKSRC
                                    194 	.globl _T1STATUS
                                    195 	.globl _T1PERIOD
                                    196 	.globl _T1PERIOD1
                                    197 	.globl _T1PERIOD0
                                    198 	.globl _T1MODE
                                    199 	.globl _T1CNT
                                    200 	.globl _T1CNT1
                                    201 	.globl _T1CNT0
                                    202 	.globl _T1CLKSRC
                                    203 	.globl _T0STATUS
                                    204 	.globl _T0PERIOD
                                    205 	.globl _T0PERIOD1
                                    206 	.globl _T0PERIOD0
                                    207 	.globl _T0MODE
                                    208 	.globl _T0CNT
                                    209 	.globl _T0CNT1
                                    210 	.globl _T0CNT0
                                    211 	.globl _T0CLKSRC
                                    212 	.globl _SPSTATUS
                                    213 	.globl _SPSHREG
                                    214 	.globl _SPMODE
                                    215 	.globl _SPCLKSRC
                                    216 	.globl _RADIOSTAT
                                    217 	.globl _RADIOSTAT1
                                    218 	.globl _RADIOSTAT0
                                    219 	.globl _RADIODATA
                                    220 	.globl _RADIODATA3
                                    221 	.globl _RADIODATA2
                                    222 	.globl _RADIODATA1
                                    223 	.globl _RADIODATA0
                                    224 	.globl _RADIOADDR
                                    225 	.globl _RADIOADDR1
                                    226 	.globl _RADIOADDR0
                                    227 	.globl _RADIOACC
                                    228 	.globl _OC1STATUS
                                    229 	.globl _OC1PIN
                                    230 	.globl _OC1MODE
                                    231 	.globl _OC1COMP
                                    232 	.globl _OC1COMP1
                                    233 	.globl _OC1COMP0
                                    234 	.globl _OC0STATUS
                                    235 	.globl _OC0PIN
                                    236 	.globl _OC0MODE
                                    237 	.globl _OC0COMP
                                    238 	.globl _OC0COMP1
                                    239 	.globl _OC0COMP0
                                    240 	.globl _NVSTATUS
                                    241 	.globl _NVKEY
                                    242 	.globl _NVDATA
                                    243 	.globl _NVDATA1
                                    244 	.globl _NVDATA0
                                    245 	.globl _NVADDR
                                    246 	.globl _NVADDR1
                                    247 	.globl _NVADDR0
                                    248 	.globl _IC1STATUS
                                    249 	.globl _IC1MODE
                                    250 	.globl _IC1CAPT
                                    251 	.globl _IC1CAPT1
                                    252 	.globl _IC1CAPT0
                                    253 	.globl _IC0STATUS
                                    254 	.globl _IC0MODE
                                    255 	.globl _IC0CAPT
                                    256 	.globl _IC0CAPT1
                                    257 	.globl _IC0CAPT0
                                    258 	.globl _PORTR
                                    259 	.globl _PORTC
                                    260 	.globl _PORTB
                                    261 	.globl _PORTA
                                    262 	.globl _PINR
                                    263 	.globl _PINC
                                    264 	.globl _PINB
                                    265 	.globl _PINA
                                    266 	.globl _DIRR
                                    267 	.globl _DIRC
                                    268 	.globl _DIRB
                                    269 	.globl _DIRA
                                    270 	.globl _DBGLNKSTAT
                                    271 	.globl _DBGLNKBUF
                                    272 	.globl _CODECONFIG
                                    273 	.globl _CLKSTAT
                                    274 	.globl _CLKCON
                                    275 	.globl _ANALOGCOMP
                                    276 	.globl _ADCCONV
                                    277 	.globl _ADCCLKSRC
                                    278 	.globl _ADCCH3CONFIG
                                    279 	.globl _ADCCH2CONFIG
                                    280 	.globl _ADCCH1CONFIG
                                    281 	.globl _ADCCH0CONFIG
                                    282 	.globl __XPAGE
                                    283 	.globl _XPAGE
                                    284 	.globl _SP
                                    285 	.globl _PSW
                                    286 	.globl _PCON
                                    287 	.globl _IP
                                    288 	.globl _IE
                                    289 	.globl _EIP
                                    290 	.globl _EIE
                                    291 	.globl _E2IP
                                    292 	.globl _E2IE
                                    293 	.globl _DPS
                                    294 	.globl _DPTR1
                                    295 	.globl _DPTR0
                                    296 	.globl _DPL1
                                    297 	.globl _DPL
                                    298 	.globl _DPH1
                                    299 	.globl _DPH
                                    300 	.globl _B
                                    301 	.globl _ACC
                                    302 	.globl _line_buffer
                                    303 	.globl _orig_jmp_vector_mask
                                    304 	.globl _orig_jmp_vector
                                    305 	.globl _XTALREADY
                                    306 	.globl _XTALOSC
                                    307 	.globl _XTALAMPL
                                    308 	.globl _SILICONREV
                                    309 	.globl _SCRATCH3
                                    310 	.globl _SCRATCH2
                                    311 	.globl _SCRATCH1
                                    312 	.globl _SCRATCH0
                                    313 	.globl _RADIOMUX
                                    314 	.globl _RADIOFSTATADDR
                                    315 	.globl _RADIOFSTATADDR1
                                    316 	.globl _RADIOFSTATADDR0
                                    317 	.globl _RADIOFDATAADDR
                                    318 	.globl _RADIOFDATAADDR1
                                    319 	.globl _RADIOFDATAADDR0
                                    320 	.globl _OSCRUN
                                    321 	.globl _OSCREADY
                                    322 	.globl _OSCFORCERUN
                                    323 	.globl _OSCCALIB
                                    324 	.globl _MISCCTRL
                                    325 	.globl _LPXOSCGM
                                    326 	.globl _LPOSCREF
                                    327 	.globl _LPOSCREF1
                                    328 	.globl _LPOSCREF0
                                    329 	.globl _LPOSCPER
                                    330 	.globl _LPOSCPER1
                                    331 	.globl _LPOSCPER0
                                    332 	.globl _LPOSCKFILT
                                    333 	.globl _LPOSCKFILT1
                                    334 	.globl _LPOSCKFILT0
                                    335 	.globl _LPOSCFREQ
                                    336 	.globl _LPOSCFREQ1
                                    337 	.globl _LPOSCFREQ0
                                    338 	.globl _LPOSCCONFIG
                                    339 	.globl _PINSEL
                                    340 	.globl _PINCHGC
                                    341 	.globl _PINCHGB
                                    342 	.globl _PINCHGA
                                    343 	.globl _PALTRADIO
                                    344 	.globl _PALTC
                                    345 	.globl _PALTB
                                    346 	.globl _PALTA
                                    347 	.globl _INTCHGC
                                    348 	.globl _INTCHGB
                                    349 	.globl _INTCHGA
                                    350 	.globl _EXTIRQ
                                    351 	.globl _GPIOENABLE
                                    352 	.globl _ANALOGA
                                    353 	.globl _FRCOSCREF
                                    354 	.globl _FRCOSCREF1
                                    355 	.globl _FRCOSCREF0
                                    356 	.globl _FRCOSCPER
                                    357 	.globl _FRCOSCPER1
                                    358 	.globl _FRCOSCPER0
                                    359 	.globl _FRCOSCKFILT
                                    360 	.globl _FRCOSCKFILT1
                                    361 	.globl _FRCOSCKFILT0
                                    362 	.globl _FRCOSCFREQ
                                    363 	.globl _FRCOSCFREQ1
                                    364 	.globl _FRCOSCFREQ0
                                    365 	.globl _FRCOSCCTRL
                                    366 	.globl _FRCOSCCONFIG
                                    367 	.globl _DMA1CONFIG
                                    368 	.globl _DMA1ADDR
                                    369 	.globl _DMA1ADDR1
                                    370 	.globl _DMA1ADDR0
                                    371 	.globl _DMA0CONFIG
                                    372 	.globl _DMA0ADDR
                                    373 	.globl _DMA0ADDR1
                                    374 	.globl _DMA0ADDR0
                                    375 	.globl _ADCTUNE2
                                    376 	.globl _ADCTUNE1
                                    377 	.globl _ADCTUNE0
                                    378 	.globl _ADCCH3VAL
                                    379 	.globl _ADCCH3VAL1
                                    380 	.globl _ADCCH3VAL0
                                    381 	.globl _ADCCH2VAL
                                    382 	.globl _ADCCH2VAL1
                                    383 	.globl _ADCCH2VAL0
                                    384 	.globl _ADCCH1VAL
                                    385 	.globl _ADCCH1VAL1
                                    386 	.globl _ADCCH1VAL0
                                    387 	.globl _ADCCH0VAL
                                    388 	.globl _ADCCH0VAL1
                                    389 	.globl _ADCCH0VAL0
                                    390 ;--------------------------------------------------------
                                    391 ; special function registers
                                    392 ;--------------------------------------------------------
                                    393 	.area RSEG    (ABS,DATA)
      000000                        394 	.org 0x0000
                           0000E0   395 _ACC	=	0x00e0
                           0000F0   396 _B	=	0x00f0
                           000083   397 _DPH	=	0x0083
                           000085   398 _DPH1	=	0x0085
                           000082   399 _DPL	=	0x0082
                           000084   400 _DPL1	=	0x0084
                           008382   401 _DPTR0	=	0x8382
                           008584   402 _DPTR1	=	0x8584
                           000086   403 _DPS	=	0x0086
                           0000A0   404 _E2IE	=	0x00a0
                           0000C0   405 _E2IP	=	0x00c0
                           000098   406 _EIE	=	0x0098
                           0000B0   407 _EIP	=	0x00b0
                           0000A8   408 _IE	=	0x00a8
                           0000B8   409 _IP	=	0x00b8
                           000087   410 _PCON	=	0x0087
                           0000D0   411 _PSW	=	0x00d0
                           000081   412 _SP	=	0x0081
                           0000D9   413 _XPAGE	=	0x00d9
                           0000D9   414 __XPAGE	=	0x00d9
                           0000CA   415 _ADCCH0CONFIG	=	0x00ca
                           0000CB   416 _ADCCH1CONFIG	=	0x00cb
                           0000D2   417 _ADCCH2CONFIG	=	0x00d2
                           0000D3   418 _ADCCH3CONFIG	=	0x00d3
                           0000D1   419 _ADCCLKSRC	=	0x00d1
                           0000C9   420 _ADCCONV	=	0x00c9
                           0000E1   421 _ANALOGCOMP	=	0x00e1
                           0000C6   422 _CLKCON	=	0x00c6
                           0000C7   423 _CLKSTAT	=	0x00c7
                           000097   424 _CODECONFIG	=	0x0097
                           0000E3   425 _DBGLNKBUF	=	0x00e3
                           0000E2   426 _DBGLNKSTAT	=	0x00e2
                           000089   427 _DIRA	=	0x0089
                           00008A   428 _DIRB	=	0x008a
                           00008B   429 _DIRC	=	0x008b
                           00008E   430 _DIRR	=	0x008e
                           0000C8   431 _PINA	=	0x00c8
                           0000E8   432 _PINB	=	0x00e8
                           0000F8   433 _PINC	=	0x00f8
                           00008D   434 _PINR	=	0x008d
                           000080   435 _PORTA	=	0x0080
                           000088   436 _PORTB	=	0x0088
                           000090   437 _PORTC	=	0x0090
                           00008C   438 _PORTR	=	0x008c
                           0000CE   439 _IC0CAPT0	=	0x00ce
                           0000CF   440 _IC0CAPT1	=	0x00cf
                           00CFCE   441 _IC0CAPT	=	0xcfce
                           0000CC   442 _IC0MODE	=	0x00cc
                           0000CD   443 _IC0STATUS	=	0x00cd
                           0000D6   444 _IC1CAPT0	=	0x00d6
                           0000D7   445 _IC1CAPT1	=	0x00d7
                           00D7D6   446 _IC1CAPT	=	0xd7d6
                           0000D4   447 _IC1MODE	=	0x00d4
                           0000D5   448 _IC1STATUS	=	0x00d5
                           000092   449 _NVADDR0	=	0x0092
                           000093   450 _NVADDR1	=	0x0093
                           009392   451 _NVADDR	=	0x9392
                           000094   452 _NVDATA0	=	0x0094
                           000095   453 _NVDATA1	=	0x0095
                           009594   454 _NVDATA	=	0x9594
                           000096   455 _NVKEY	=	0x0096
                           000091   456 _NVSTATUS	=	0x0091
                           0000BC   457 _OC0COMP0	=	0x00bc
                           0000BD   458 _OC0COMP1	=	0x00bd
                           00BDBC   459 _OC0COMP	=	0xbdbc
                           0000B9   460 _OC0MODE	=	0x00b9
                           0000BA   461 _OC0PIN	=	0x00ba
                           0000BB   462 _OC0STATUS	=	0x00bb
                           0000C4   463 _OC1COMP0	=	0x00c4
                           0000C5   464 _OC1COMP1	=	0x00c5
                           00C5C4   465 _OC1COMP	=	0xc5c4
                           0000C1   466 _OC1MODE	=	0x00c1
                           0000C2   467 _OC1PIN	=	0x00c2
                           0000C3   468 _OC1STATUS	=	0x00c3
                           0000B1   469 _RADIOACC	=	0x00b1
                           0000B3   470 _RADIOADDR0	=	0x00b3
                           0000B2   471 _RADIOADDR1	=	0x00b2
                           00B2B3   472 _RADIOADDR	=	0xb2b3
                           0000B7   473 _RADIODATA0	=	0x00b7
                           0000B6   474 _RADIODATA1	=	0x00b6
                           0000B5   475 _RADIODATA2	=	0x00b5
                           0000B4   476 _RADIODATA3	=	0x00b4
                           B4B5B6B7   477 _RADIODATA	=	0xb4b5b6b7
                           0000BE   478 _RADIOSTAT0	=	0x00be
                           0000BF   479 _RADIOSTAT1	=	0x00bf
                           00BFBE   480 _RADIOSTAT	=	0xbfbe
                           0000DF   481 _SPCLKSRC	=	0x00df
                           0000DC   482 _SPMODE	=	0x00dc
                           0000DE   483 _SPSHREG	=	0x00de
                           0000DD   484 _SPSTATUS	=	0x00dd
                           00009A   485 _T0CLKSRC	=	0x009a
                           00009C   486 _T0CNT0	=	0x009c
                           00009D   487 _T0CNT1	=	0x009d
                           009D9C   488 _T0CNT	=	0x9d9c
                           000099   489 _T0MODE	=	0x0099
                           00009E   490 _T0PERIOD0	=	0x009e
                           00009F   491 _T0PERIOD1	=	0x009f
                           009F9E   492 _T0PERIOD	=	0x9f9e
                           00009B   493 _T0STATUS	=	0x009b
                           0000A2   494 _T1CLKSRC	=	0x00a2
                           0000A4   495 _T1CNT0	=	0x00a4
                           0000A5   496 _T1CNT1	=	0x00a5
                           00A5A4   497 _T1CNT	=	0xa5a4
                           0000A1   498 _T1MODE	=	0x00a1
                           0000A6   499 _T1PERIOD0	=	0x00a6
                           0000A7   500 _T1PERIOD1	=	0x00a7
                           00A7A6   501 _T1PERIOD	=	0xa7a6
                           0000A3   502 _T1STATUS	=	0x00a3
                           0000AA   503 _T2CLKSRC	=	0x00aa
                           0000AC   504 _T2CNT0	=	0x00ac
                           0000AD   505 _T2CNT1	=	0x00ad
                           00ADAC   506 _T2CNT	=	0xadac
                           0000A9   507 _T2MODE	=	0x00a9
                           0000AE   508 _T2PERIOD0	=	0x00ae
                           0000AF   509 _T2PERIOD1	=	0x00af
                           00AFAE   510 _T2PERIOD	=	0xafae
                           0000AB   511 _T2STATUS	=	0x00ab
                           0000E4   512 _U0CTRL	=	0x00e4
                           0000E7   513 _U0MODE	=	0x00e7
                           0000E6   514 _U0SHREG	=	0x00e6
                           0000E5   515 _U0STATUS	=	0x00e5
                           0000EC   516 _U1CTRL	=	0x00ec
                           0000EF   517 _U1MODE	=	0x00ef
                           0000EE   518 _U1SHREG	=	0x00ee
                           0000ED   519 _U1STATUS	=	0x00ed
                           0000DA   520 _WDTCFG	=	0x00da
                           0000DB   521 _WDTRESET	=	0x00db
                           0000F1   522 _WTCFGA	=	0x00f1
                           0000F9   523 _WTCFGB	=	0x00f9
                           0000F2   524 _WTCNTA0	=	0x00f2
                           0000F3   525 _WTCNTA1	=	0x00f3
                           00F3F2   526 _WTCNTA	=	0xf3f2
                           0000FA   527 _WTCNTB0	=	0x00fa
                           0000FB   528 _WTCNTB1	=	0x00fb
                           00FBFA   529 _WTCNTB	=	0xfbfa
                           0000EB   530 _WTCNTR1	=	0x00eb
                           0000F4   531 _WTEVTA0	=	0x00f4
                           0000F5   532 _WTEVTA1	=	0x00f5
                           00F5F4   533 _WTEVTA	=	0xf5f4
                           0000F6   534 _WTEVTB0	=	0x00f6
                           0000F7   535 _WTEVTB1	=	0x00f7
                           00F7F6   536 _WTEVTB	=	0xf7f6
                           0000FC   537 _WTEVTC0	=	0x00fc
                           0000FD   538 _WTEVTC1	=	0x00fd
                           00FDFC   539 _WTEVTC	=	0xfdfc
                           0000FE   540 _WTEVTD0	=	0x00fe
                           0000FF   541 _WTEVTD1	=	0x00ff
                           00FFFE   542 _WTEVTD	=	0xfffe
                           0000E9   543 _WTIRQEN	=	0x00e9
                           0000EA   544 _WTSTAT	=	0x00ea
                                    545 ;--------------------------------------------------------
                                    546 ; special function bits
                                    547 ;--------------------------------------------------------
                                    548 	.area RSEG    (ABS,DATA)
      000000                        549 	.org 0x0000
                           0000E0   550 _ACC_0	=	0x00e0
                           0000E1   551 _ACC_1	=	0x00e1
                           0000E2   552 _ACC_2	=	0x00e2
                           0000E3   553 _ACC_3	=	0x00e3
                           0000E4   554 _ACC_4	=	0x00e4
                           0000E5   555 _ACC_5	=	0x00e5
                           0000E6   556 _ACC_6	=	0x00e6
                           0000E7   557 _ACC_7	=	0x00e7
                           0000F0   558 _B_0	=	0x00f0
                           0000F1   559 _B_1	=	0x00f1
                           0000F2   560 _B_2	=	0x00f2
                           0000F3   561 _B_3	=	0x00f3
                           0000F4   562 _B_4	=	0x00f4
                           0000F5   563 _B_5	=	0x00f5
                           0000F6   564 _B_6	=	0x00f6
                           0000F7   565 _B_7	=	0x00f7
                           0000A0   566 _E2IE_0	=	0x00a0
                           0000A1   567 _E2IE_1	=	0x00a1
                           0000A2   568 _E2IE_2	=	0x00a2
                           0000A3   569 _E2IE_3	=	0x00a3
                           0000A4   570 _E2IE_4	=	0x00a4
                           0000A5   571 _E2IE_5	=	0x00a5
                           0000A6   572 _E2IE_6	=	0x00a6
                           0000A7   573 _E2IE_7	=	0x00a7
                           0000C0   574 _E2IP_0	=	0x00c0
                           0000C1   575 _E2IP_1	=	0x00c1
                           0000C2   576 _E2IP_2	=	0x00c2
                           0000C3   577 _E2IP_3	=	0x00c3
                           0000C4   578 _E2IP_4	=	0x00c4
                           0000C5   579 _E2IP_5	=	0x00c5
                           0000C6   580 _E2IP_6	=	0x00c6
                           0000C7   581 _E2IP_7	=	0x00c7
                           000098   582 _EIE_0	=	0x0098
                           000099   583 _EIE_1	=	0x0099
                           00009A   584 _EIE_2	=	0x009a
                           00009B   585 _EIE_3	=	0x009b
                           00009C   586 _EIE_4	=	0x009c
                           00009D   587 _EIE_5	=	0x009d
                           00009E   588 _EIE_6	=	0x009e
                           00009F   589 _EIE_7	=	0x009f
                           0000B0   590 _EIP_0	=	0x00b0
                           0000B1   591 _EIP_1	=	0x00b1
                           0000B2   592 _EIP_2	=	0x00b2
                           0000B3   593 _EIP_3	=	0x00b3
                           0000B4   594 _EIP_4	=	0x00b4
                           0000B5   595 _EIP_5	=	0x00b5
                           0000B6   596 _EIP_6	=	0x00b6
                           0000B7   597 _EIP_7	=	0x00b7
                           0000A8   598 _IE_0	=	0x00a8
                           0000A9   599 _IE_1	=	0x00a9
                           0000AA   600 _IE_2	=	0x00aa
                           0000AB   601 _IE_3	=	0x00ab
                           0000AC   602 _IE_4	=	0x00ac
                           0000AD   603 _IE_5	=	0x00ad
                           0000AE   604 _IE_6	=	0x00ae
                           0000AF   605 _IE_7	=	0x00af
                           0000AF   606 _EA	=	0x00af
                           0000B8   607 _IP_0	=	0x00b8
                           0000B9   608 _IP_1	=	0x00b9
                           0000BA   609 _IP_2	=	0x00ba
                           0000BB   610 _IP_3	=	0x00bb
                           0000BC   611 _IP_4	=	0x00bc
                           0000BD   612 _IP_5	=	0x00bd
                           0000BE   613 _IP_6	=	0x00be
                           0000BF   614 _IP_7	=	0x00bf
                           0000D0   615 _P	=	0x00d0
                           0000D1   616 _F1	=	0x00d1
                           0000D2   617 _OV	=	0x00d2
                           0000D3   618 _RS0	=	0x00d3
                           0000D4   619 _RS1	=	0x00d4
                           0000D5   620 _F0	=	0x00d5
                           0000D6   621 _AC	=	0x00d6
                           0000D7   622 _CY	=	0x00d7
                           0000C8   623 _PINA_0	=	0x00c8
                           0000C9   624 _PINA_1	=	0x00c9
                           0000CA   625 _PINA_2	=	0x00ca
                           0000CB   626 _PINA_3	=	0x00cb
                           0000CC   627 _PINA_4	=	0x00cc
                           0000CD   628 _PINA_5	=	0x00cd
                           0000CE   629 _PINA_6	=	0x00ce
                           0000CF   630 _PINA_7	=	0x00cf
                           0000E8   631 _PINB_0	=	0x00e8
                           0000E9   632 _PINB_1	=	0x00e9
                           0000EA   633 _PINB_2	=	0x00ea
                           0000EB   634 _PINB_3	=	0x00eb
                           0000EC   635 _PINB_4	=	0x00ec
                           0000ED   636 _PINB_5	=	0x00ed
                           0000EE   637 _PINB_6	=	0x00ee
                           0000EF   638 _PINB_7	=	0x00ef
                           0000F8   639 _PINC_0	=	0x00f8
                           0000F9   640 _PINC_1	=	0x00f9
                           0000FA   641 _PINC_2	=	0x00fa
                           0000FB   642 _PINC_3	=	0x00fb
                           0000FC   643 _PINC_4	=	0x00fc
                           0000FD   644 _PINC_5	=	0x00fd
                           0000FE   645 _PINC_6	=	0x00fe
                           0000FF   646 _PINC_7	=	0x00ff
                           000080   647 _PORTA_0	=	0x0080
                           000081   648 _PORTA_1	=	0x0081
                           000082   649 _PORTA_2	=	0x0082
                           000083   650 _PORTA_3	=	0x0083
                           000084   651 _PORTA_4	=	0x0084
                           000085   652 _PORTA_5	=	0x0085
                           000086   653 _PORTA_6	=	0x0086
                           000087   654 _PORTA_7	=	0x0087
                           000088   655 _PORTB_0	=	0x0088
                           000089   656 _PORTB_1	=	0x0089
                           00008A   657 _PORTB_2	=	0x008a
                           00008B   658 _PORTB_3	=	0x008b
                           00008C   659 _PORTB_4	=	0x008c
                           00008D   660 _PORTB_5	=	0x008d
                           00008E   661 _PORTB_6	=	0x008e
                           00008F   662 _PORTB_7	=	0x008f
                           000090   663 _PORTC_0	=	0x0090
                           000091   664 _PORTC_1	=	0x0091
                           000092   665 _PORTC_2	=	0x0092
                           000093   666 _PORTC_3	=	0x0093
                           000094   667 _PORTC_4	=	0x0094
                           000095   668 _PORTC_5	=	0x0095
                           000096   669 _PORTC_6	=	0x0096
                           000097   670 _PORTC_7	=	0x0097
                                    671 ;--------------------------------------------------------
                                    672 ; overlayable register banks
                                    673 ;--------------------------------------------------------
                                    674 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        675 	.ds 8
                                    676 ;--------------------------------------------------------
                                    677 ; internal ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area DSEG    (DATA)
      000008                        680 _flash_line_lb_1_139:
      000008                        681 	.ds 2
      00000A                        682 _flash_line_cnt_1_139:
      00000A                        683 	.ds 1
                                    684 ;--------------------------------------------------------
                                    685 ; overlayable items in internal ram 
                                    686 ;--------------------------------------------------------
                                    687 	.area	OSEG    (OVR,DATA)
                                    688 	.area	OSEG    (OVR,DATA)
                                    689 ;--------------------------------------------------------
                                    690 ; indirectly addressable internal ram data
                                    691 ;--------------------------------------------------------
                                    692 	.area ISEG    (DATA)
                                    693 ;--------------------------------------------------------
                                    694 ; absolute internal ram data
                                    695 ;--------------------------------------------------------
                                    696 	.area IABS    (ABS,DATA)
                                    697 	.area IABS    (ABS,DATA)
                                    698 ;--------------------------------------------------------
                                    699 ; bit data
                                    700 ;--------------------------------------------------------
                                    701 	.area BSEG    (BIT)
                                    702 ;--------------------------------------------------------
                                    703 ; paged external ram data
                                    704 ;--------------------------------------------------------
                                    705 	.area PSEG    (PAG,XDATA)
                                    706 ;--------------------------------------------------------
                                    707 ; external ram data
                                    708 ;--------------------------------------------------------
                                    709 	.area XSEG    (XDATA)
                           007020   710 _ADCCH0VAL0	=	0x7020
                           007021   711 _ADCCH0VAL1	=	0x7021
                           007020   712 _ADCCH0VAL	=	0x7020
                           007022   713 _ADCCH1VAL0	=	0x7022
                           007023   714 _ADCCH1VAL1	=	0x7023
                           007022   715 _ADCCH1VAL	=	0x7022
                           007024   716 _ADCCH2VAL0	=	0x7024
                           007025   717 _ADCCH2VAL1	=	0x7025
                           007024   718 _ADCCH2VAL	=	0x7024
                           007026   719 _ADCCH3VAL0	=	0x7026
                           007027   720 _ADCCH3VAL1	=	0x7027
                           007026   721 _ADCCH3VAL	=	0x7026
                           007028   722 _ADCTUNE0	=	0x7028
                           007029   723 _ADCTUNE1	=	0x7029
                           00702A   724 _ADCTUNE2	=	0x702a
                           007010   725 _DMA0ADDR0	=	0x7010
                           007011   726 _DMA0ADDR1	=	0x7011
                           007010   727 _DMA0ADDR	=	0x7010
                           007014   728 _DMA0CONFIG	=	0x7014
                           007012   729 _DMA1ADDR0	=	0x7012
                           007013   730 _DMA1ADDR1	=	0x7013
                           007012   731 _DMA1ADDR	=	0x7012
                           007015   732 _DMA1CONFIG	=	0x7015
                           007070   733 _FRCOSCCONFIG	=	0x7070
                           007071   734 _FRCOSCCTRL	=	0x7071
                           007076   735 _FRCOSCFREQ0	=	0x7076
                           007077   736 _FRCOSCFREQ1	=	0x7077
                           007076   737 _FRCOSCFREQ	=	0x7076
                           007072   738 _FRCOSCKFILT0	=	0x7072
                           007073   739 _FRCOSCKFILT1	=	0x7073
                           007072   740 _FRCOSCKFILT	=	0x7072
                           007078   741 _FRCOSCPER0	=	0x7078
                           007079   742 _FRCOSCPER1	=	0x7079
                           007078   743 _FRCOSCPER	=	0x7078
                           007074   744 _FRCOSCREF0	=	0x7074
                           007075   745 _FRCOSCREF1	=	0x7075
                           007074   746 _FRCOSCREF	=	0x7074
                           007007   747 _ANALOGA	=	0x7007
                           00700C   748 _GPIOENABLE	=	0x700c
                           007003   749 _EXTIRQ	=	0x7003
                           007000   750 _INTCHGA	=	0x7000
                           007001   751 _INTCHGB	=	0x7001
                           007002   752 _INTCHGC	=	0x7002
                           007008   753 _PALTA	=	0x7008
                           007009   754 _PALTB	=	0x7009
                           00700A   755 _PALTC	=	0x700a
                           007046   756 _PALTRADIO	=	0x7046
                           007004   757 _PINCHGA	=	0x7004
                           007005   758 _PINCHGB	=	0x7005
                           007006   759 _PINCHGC	=	0x7006
                           00700B   760 _PINSEL	=	0x700b
                           007060   761 _LPOSCCONFIG	=	0x7060
                           007066   762 _LPOSCFREQ0	=	0x7066
                           007067   763 _LPOSCFREQ1	=	0x7067
                           007066   764 _LPOSCFREQ	=	0x7066
                           007062   765 _LPOSCKFILT0	=	0x7062
                           007063   766 _LPOSCKFILT1	=	0x7063
                           007062   767 _LPOSCKFILT	=	0x7062
                           007068   768 _LPOSCPER0	=	0x7068
                           007069   769 _LPOSCPER1	=	0x7069
                           007068   770 _LPOSCPER	=	0x7068
                           007064   771 _LPOSCREF0	=	0x7064
                           007065   772 _LPOSCREF1	=	0x7065
                           007064   773 _LPOSCREF	=	0x7064
                           007054   774 _LPXOSCGM	=	0x7054
                           007F01   775 _MISCCTRL	=	0x7f01
                           007053   776 _OSCCALIB	=	0x7053
                           007050   777 _OSCFORCERUN	=	0x7050
                           007052   778 _OSCREADY	=	0x7052
                           007051   779 _OSCRUN	=	0x7051
                           007040   780 _RADIOFDATAADDR0	=	0x7040
                           007041   781 _RADIOFDATAADDR1	=	0x7041
                           007040   782 _RADIOFDATAADDR	=	0x7040
                           007042   783 _RADIOFSTATADDR0	=	0x7042
                           007043   784 _RADIOFSTATADDR1	=	0x7043
                           007042   785 _RADIOFSTATADDR	=	0x7042
                           007044   786 _RADIOMUX	=	0x7044
                           007084   787 _SCRATCH0	=	0x7084
                           007085   788 _SCRATCH1	=	0x7085
                           007086   789 _SCRATCH2	=	0x7086
                           007087   790 _SCRATCH3	=	0x7087
                           007F00   791 _SILICONREV	=	0x7f00
                           007F19   792 _XTALAMPL	=	0x7f19
                           007F18   793 _XTALOSC	=	0x7f18
                           007F1A   794 _XTALREADY	=	0x7f1a
                           00FC06   795 _flash_deviceid	=	0xfc06
      000001                        796 _orig_jmp_vector::
      000001                        797 	.ds 3
      000004                        798 _orig_jmp_vector_mask::
      000004                        799 	.ds 1
      000005                        800 _line_buffer::
      000005                        801 	.ds 260
                                    802 ;--------------------------------------------------------
                                    803 ; absolute external ram data
                                    804 ;--------------------------------------------------------
                                    805 	.area XABS    (ABS,XDATA)
                                    806 ;--------------------------------------------------------
                                    807 ; external initialized ram data
                                    808 ;--------------------------------------------------------
                                    809 	.area XISEG   (XDATA)
                                    810 	.area HOME    (CODE)
                                    811 	.area GSINIT0 (CODE)
                                    812 	.area GSINIT1 (CODE)
                                    813 	.area GSINIT2 (CODE)
                                    814 	.area GSINIT3 (CODE)
                                    815 	.area GSINIT4 (CODE)
                                    816 	.area GSINIT5 (CODE)
                                    817 	.area GSINIT  (CODE)
                                    818 	.area GSFINAL (CODE)
                                    819 	.area CSEG    (CODE)
                                    820 ;--------------------------------------------------------
                                    821 ; global & static initialisations
                                    822 ;--------------------------------------------------------
                                    823 	.area HOME    (CODE)
                                    824 	.area GSINIT  (CODE)
                                    825 	.area GSFINAL (CODE)
                                    826 	.area GSINIT  (CODE)
                                    827 ;--------------------------------------------------------
                                    828 ; Home
                                    829 ;--------------------------------------------------------
                                    830 	.area HOME    (CODE)
                                    831 	.area HOME    (CODE)
                                    832 ;--------------------------------------------------------
                                    833 ; code
                                    834 ;--------------------------------------------------------
                                    835 	.area CSEG    (CODE)
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'run_application'
                                    838 ;------------------------------------------------------------
                                    839 ;	main.c:39: static void run_application(void)
                                    840 ;	-----------------------------------------
                                    841 ;	 function run_application
                                    842 ;	-----------------------------------------
      00E448                        843 _run_application:
                           000007   844 	ar7 = 0x07
                           000006   845 	ar6 = 0x06
                           000005   846 	ar5 = 0x05
                           000004   847 	ar4 = 0x04
                           000003   848 	ar3 = 0x03
                           000002   849 	ar2 = 0x02
                           000001   850 	ar1 = 0x01
                           000000   851 	ar0 = 0x00
                                    852 ;	main.c:41: OSCFORCERUN = 0x00;
      00E448 90 70 50         [24]  853 	mov	dptr,#_OSCFORCERUN
      00E44B E4               [12]  854 	clr	a
      00E44C F0               [24]  855 	movx	@dptr,a
                                    856 ;	main.c:42: FRCOSCCONFIG = 0x01;
      00E44D 90 70 70         [24]  857 	mov	dptr,#_FRCOSCCONFIG
      00E450 04               [12]  858 	inc	a
      00E451 F0               [24]  859 	movx	@dptr,a
                                    860 ;	main.c:43: WTCFGB = 0x0F;
      00E452 75 F9 0F         [24]  861 	mov	_WTCFGB,#0x0f
                                    862 ;	main.c:44: IE = EIE = E2IE = 0;
      00E455 75 A0 00         [24]  863 	mov	_E2IE,#0x00
      00E458 75 98 00         [24]  864 	mov	_EIE,#0x00
      00E45B 75 A8 00         [24]  865 	mov	_IE,#0x00
                                    866 ;	main.c:45: CLKCON = 0x08;
      00E45E 75 C6 08         [24]  867 	mov	_CLKCON,#0x08
                                    868 ;	main.c:57: __endasm;
      00E461 90 E3 FE         [24]  869 	mov	dptr,#_jmp_vector
      00E464 E0               [24]  870 	movx	a,@dptr
      00E465 A3               [24]  871 	inc	dptr
      00E466 F8               [12]  872 	mov	r0,a
      00E467 E0               [24]  873 	movx	a,@dptr
      00E468 F5 83            [12]  874 	mov	dph,a
      00E46A 88 82            [24]  875 	mov	dpl,r0
      00E46C E4               [12]  876 	clr	a
      00E46D 75 81 07         [24]  877 	mov	_SP,#7
      00E470 73               [24]  878 	jmp	@a+dptr
      00E471 22               [24]  879 	ret
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'waitflash'
                                    882 ;------------------------------------------------------------
                                    883 ;timeout                   Allocated to registers r6 r7 
                                    884 ;cnth                      Allocated to registers r5 
                                    885 ;cntl                      Allocated to registers r6 
                                    886 ;st                        Allocated to registers r5 
                                    887 ;------------------------------------------------------------
                                    888 ;	main.c:60: static int8_t waitflash(uint16_t timeout)
                                    889 ;	-----------------------------------------
                                    890 ;	 function waitflash
                                    891 ;	-----------------------------------------
      00E472                        892 _waitflash:
      00E472 AE 82            [24]  893 	mov	r6,dpl
      00E474 AF 83            [24]  894 	mov	r7,dph
                                    895 ;	main.c:62: uint8_t cnth = timeout >> 8;
      00E476 8F 05            [24]  896 	mov	ar5,r7
                                    897 ;	main.c:63: uint8_t cntl = timeout;
                                    898 ;	main.c:64: ++cnth;
      00E478 ED               [12]  899 	mov	a,r5
      00E479 04               [12]  900 	inc	a
      00E47A FF               [12]  901 	mov	r7,a
                                    902 ;	main.c:65: ++cntl;
      00E47B 0E               [12]  903 	inc	r6
                                    904 ;	main.c:67: do {
      00E47C                        905 00105$:
                                    906 ;	main.c:68: uint8_t st = NVSTATUS;
                                    907 ;	main.c:69: if (!(st & 2))
      00E47C E5 91            [12]  908 	mov	a,_NVSTATUS
      00E47E FD               [12]  909 	mov	r5,a
      00E47F 20 E1 04         [24]  910 	jb	acc.1,00102$
                                    911 ;	main.c:70: return -2;
      00E482 75 82 FE         [24]  912 	mov	dpl,#0xfe
      00E485 22               [24]  913 	ret
      00E486                        914 00102$:
                                    915 ;	main.c:71: if (!(st & 1))
      00E486 ED               [12]  916 	mov	a,r5
      00E487 20 E0 04         [24]  917 	jb	acc.0,00104$
                                    918 ;	main.c:72: return 0;
      00E48A 75 82 00         [24]  919 	mov	dpl,#0x00
      00E48D 22               [24]  920 	ret
      00E48E                        921 00104$:
                                    922 ;	main.c:73: uart0_poll();
      00E48E 12 E4 22         [24]  923 	lcall	_uart0_poll
                                    924 ;	main.c:74: --cntl;
                                    925 ;	main.c:76: while (cntl);
      00E491 DE E9            [24]  926 	djnz	r6,00105$
                                    927 ;	main.c:77: --cnth;
      00E493 DF E7            [24]  928 	djnz	r7,00105$
                                    929 ;	main.c:79: while (cnth);
                                    930 ;	main.c:80: return -1;
      00E495 75 82 FF         [24]  931 	mov	dpl,#0xff
      00E498 22               [24]  932 	ret
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'getch'
                                    935 ;------------------------------------------------------------
                                    936 ;	main.c:83: static char getch(void)
                                    937 ;	-----------------------------------------
                                    938 ;	 function getch
                                    939 ;	-----------------------------------------
      00E499                        940 _getch:
                                    941 ;	main.c:85: while (!uart0_rxcount()) {
      00E499                        942 00103$:
      00E499 12 FB 60         [24]  943 	lcall	_uart0_rxcount
      00E49C E5 82            [12]  944 	mov	a,dpl
      00E49E 70 0C            [24]  945 	jnz	00105$
                                    946 ;	main.c:86: if (uart0_poll())
      00E4A0 12 E4 22         [24]  947 	lcall	_uart0_poll
      00E4A3 E5 82            [12]  948 	mov	a,dpl
      00E4A5 70 F2            [24]  949 	jnz	00103$
                                    950 ;	main.c:88: enter_standby();
      00E4A7 12 F1 26         [24]  951 	lcall	_enter_standby
      00E4AA 80 ED            [24]  952 	sjmp	00103$
      00E4AC                        953 00105$:
                                    954 ;	main.c:90: return uart0_rx();
      00E4AC 02 F1 69         [24]  955 	ljmp	_uart0_rx
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'measurevdd'
                                    958 ;------------------------------------------------------------
                                    959 ;vdd                       Allocated to registers r6 r7 
                                    960 ;------------------------------------------------------------
                                    961 ;	main.c:93: static uint16_t measurevdd(void)
                                    962 ;	-----------------------------------------
                                    963 ;	 function measurevdd
                                    964 ;	-----------------------------------------
      00E4AF                        965 _measurevdd:
                                    966 ;	main.c:96: ADCCLKSRC = 0x30;
      00E4AF 75 D1 30         [24]  967 	mov	_ADCCLKSRC,#0x30
                                    968 ;	main.c:97: ADCCONV = 0x01;
      00E4B2 75 C9 01         [24]  969 	mov	_ADCCONV,#0x01
                                    970 ;	main.c:98: while (ADCCLKSRC & 0x80) {
      00E4B5                        971 00101$:
      00E4B5 E5 D1            [12]  972 	mov	a,_ADCCLKSRC
      00E4B7 30 E7 05         [24]  973 	jnb	acc.7,00103$
                                    974 ;	main.c:99: uart0_poll();
      00E4BA 12 E4 22         [24]  975 	lcall	_uart0_poll
      00E4BD 80 F6            [24]  976 	sjmp	00101$
      00E4BF                        977 00103$:
                                    978 ;	main.c:101: ADCCLKSRC = 0x07;
      00E4BF 75 D1 07         [24]  979 	mov	_ADCCLKSRC,#0x07
                                    980 ;	main.c:102: vdd = (ADCCH0VAL >> 2) + (ADCCH1VAL >> 2) + (ADCCH2VAL >> 2) + (ADCCH3VAL >> 2);
      00E4C2 90 70 20         [24]  981 	mov	dptr,#_ADCCH0VAL
      00E4C5 E0               [24]  982 	movx	a,@dptr
      00E4C6 FE               [12]  983 	mov	r6,a
      00E4C7 A3               [24]  984 	inc	dptr
      00E4C8 E0               [24]  985 	movx	a,@dptr
      00E4C9 C3               [12]  986 	clr	c
      00E4CA 13               [12]  987 	rrc	a
      00E4CB CE               [12]  988 	xch	a,r6
      00E4CC 13               [12]  989 	rrc	a
      00E4CD CE               [12]  990 	xch	a,r6
      00E4CE C3               [12]  991 	clr	c
      00E4CF 13               [12]  992 	rrc	a
      00E4D0 CE               [12]  993 	xch	a,r6
      00E4D1 13               [12]  994 	rrc	a
      00E4D2 CE               [12]  995 	xch	a,r6
      00E4D3 FF               [12]  996 	mov	r7,a
      00E4D4 90 70 22         [24]  997 	mov	dptr,#_ADCCH1VAL
      00E4D7 E0               [24]  998 	movx	a,@dptr
      00E4D8 FC               [12]  999 	mov	r4,a
      00E4D9 A3               [24] 1000 	inc	dptr
      00E4DA E0               [24] 1001 	movx	a,@dptr
      00E4DB C3               [12] 1002 	clr	c
      00E4DC 13               [12] 1003 	rrc	a
      00E4DD CC               [12] 1004 	xch	a,r4
      00E4DE 13               [12] 1005 	rrc	a
      00E4DF CC               [12] 1006 	xch	a,r4
      00E4E0 C3               [12] 1007 	clr	c
      00E4E1 13               [12] 1008 	rrc	a
      00E4E2 CC               [12] 1009 	xch	a,r4
      00E4E3 13               [12] 1010 	rrc	a
      00E4E4 CC               [12] 1011 	xch	a,r4
      00E4E5 FD               [12] 1012 	mov	r5,a
      00E4E6 EC               [12] 1013 	mov	a,r4
      00E4E7 2E               [12] 1014 	add	a,r6
      00E4E8 FE               [12] 1015 	mov	r6,a
      00E4E9 ED               [12] 1016 	mov	a,r5
      00E4EA 3F               [12] 1017 	addc	a,r7
      00E4EB FF               [12] 1018 	mov	r7,a
      00E4EC 90 70 24         [24] 1019 	mov	dptr,#_ADCCH2VAL
      00E4EF E0               [24] 1020 	movx	a,@dptr
      00E4F0 FC               [12] 1021 	mov	r4,a
      00E4F1 A3               [24] 1022 	inc	dptr
      00E4F2 E0               [24] 1023 	movx	a,@dptr
      00E4F3 C3               [12] 1024 	clr	c
      00E4F4 13               [12] 1025 	rrc	a
      00E4F5 CC               [12] 1026 	xch	a,r4
      00E4F6 13               [12] 1027 	rrc	a
      00E4F7 CC               [12] 1028 	xch	a,r4
      00E4F8 C3               [12] 1029 	clr	c
      00E4F9 13               [12] 1030 	rrc	a
      00E4FA CC               [12] 1031 	xch	a,r4
      00E4FB 13               [12] 1032 	rrc	a
      00E4FC CC               [12] 1033 	xch	a,r4
      00E4FD FD               [12] 1034 	mov	r5,a
      00E4FE EC               [12] 1035 	mov	a,r4
      00E4FF 2E               [12] 1036 	add	a,r6
      00E500 FE               [12] 1037 	mov	r6,a
      00E501 ED               [12] 1038 	mov	a,r5
      00E502 3F               [12] 1039 	addc	a,r7
      00E503 FF               [12] 1040 	mov	r7,a
      00E504 90 70 26         [24] 1041 	mov	dptr,#_ADCCH3VAL
      00E507 E0               [24] 1042 	movx	a,@dptr
      00E508 FC               [12] 1043 	mov	r4,a
      00E509 A3               [24] 1044 	inc	dptr
      00E50A E0               [24] 1045 	movx	a,@dptr
      00E50B C3               [12] 1046 	clr	c
      00E50C 13               [12] 1047 	rrc	a
      00E50D CC               [12] 1048 	xch	a,r4
      00E50E 13               [12] 1049 	rrc	a
      00E50F CC               [12] 1050 	xch	a,r4
      00E510 C3               [12] 1051 	clr	c
      00E511 13               [12] 1052 	rrc	a
      00E512 CC               [12] 1053 	xch	a,r4
      00E513 13               [12] 1054 	rrc	a
      00E514 CC               [12] 1055 	xch	a,r4
      00E515 FD               [12] 1056 	mov	r5,a
      00E516 EC               [12] 1057 	mov	a,r4
      00E517 2E               [12] 1058 	add	a,r6
      00E518 FE               [12] 1059 	mov	r6,a
      00E519 ED               [12] 1060 	mov	a,r5
      00E51A 3F               [12] 1061 	addc	a,r7
                                   1062 ;	main.c:104: vdd >>= 5;
      00E51B C4               [12] 1063 	swap	a
      00E51C 03               [12] 1064 	rr	a
      00E51D CE               [12] 1065 	xch	a,r6
      00E51E C4               [12] 1066 	swap	a
      00E51F 03               [12] 1067 	rr	a
      00E520 54 07            [12] 1068 	anl	a,#0x07
      00E522 6E               [12] 1069 	xrl	a,r6
      00E523 CE               [12] 1070 	xch	a,r6
      00E524 54 07            [12] 1071 	anl	a,#0x07
      00E526 CE               [12] 1072 	xch	a,r6
      00E527 6E               [12] 1073 	xrl	a,r6
      00E528 CE               [12] 1074 	xch	a,r6
                                   1075 ;	main.c:105: vdd += vdd >> 2;
      00E529 FF               [12] 1076 	mov	r7,a
      00E52A 8E 04            [24] 1077 	mov	ar4,r6
      00E52C C3               [12] 1078 	clr	c
      00E52D 13               [12] 1079 	rrc	a
      00E52E CC               [12] 1080 	xch	a,r4
      00E52F 13               [12] 1081 	rrc	a
      00E530 CC               [12] 1082 	xch	a,r4
      00E531 C3               [12] 1083 	clr	c
      00E532 13               [12] 1084 	rrc	a
      00E533 CC               [12] 1085 	xch	a,r4
      00E534 13               [12] 1086 	rrc	a
      00E535 CC               [12] 1087 	xch	a,r4
      00E536 FD               [12] 1088 	mov	r5,a
      00E537 EC               [12] 1089 	mov	a,r4
      00E538 2E               [12] 1090 	add	a,r6
      00E539 FE               [12] 1091 	mov	r6,a
      00E53A ED               [12] 1092 	mov	a,r5
      00E53B 3F               [12] 1093 	addc	a,r7
      00E53C FF               [12] 1094 	mov	r7,a
                                   1095 ;	main.c:106: vdd -= 9 << 7;
      00E53D EE               [12] 1096 	mov	a,r6
      00E53E 24 80            [12] 1097 	add	a,#0x80
      00E540 FE               [12] 1098 	mov	r6,a
      00E541 EF               [12] 1099 	mov	a,r7
      00E542 34 FB            [12] 1100 	addc	a,#0xfb
                                   1101 ;	main.c:107: return vdd;
      00E544 8E 82            [24] 1102 	mov	dpl,r6
      00E546 F5 83            [12] 1103 	mov	dph,a
      00E548 22               [24] 1104 	ret
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'erase_page_write_resetvec'
                                   1107 ;------------------------------------------------------------
                                   1108 ;st                        Allocated to registers r7 
                                   1109 ;pmem                      Allocated to registers r6 r7 
                                   1110 ;------------------------------------------------------------
                                   1111 ;	main.c:110: static int8_t erase_page_write_resetvec(void)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function erase_page_write_resetvec
                                   1114 ;	-----------------------------------------
      00E549                       1115 _erase_page_write_resetvec:
                                   1116 ;	main.c:114: if (measurevdd() < BOOTLDR_MINVDD)
      00E549 12 E4 AF         [24] 1117 	lcall	_measurevdd
      00E54C AE 82            [24] 1118 	mov	r6,dpl
      00E54E AF 83            [24] 1119 	mov	r7,dph
      00E550 C3               [12] 1120 	clr	c
      00E551 EE               [12] 1121 	mov	a,r6
      00E552 94 80            [12] 1122 	subb	a,#0x80
      00E554 EF               [12] 1123 	mov	a,r7
      00E555 94 02            [12] 1124 	subb	a,#0x02
      00E557 50 04            [24] 1125 	jnc	00102$
                                   1126 ;	main.c:115: return -4;
      00E559 75 82 FC         [24] 1127 	mov	dpl,#0xfc
      00E55C 22               [24] 1128 	ret
      00E55D                       1129 00102$:
                                   1130 ;	main.c:116: NVADDR0 = 0x00;
      00E55D 75 92 00         [24] 1131 	mov	_NVADDR0,#0x00
                                   1132 ;	main.c:117: NVSTATUS = 0x20;
      00E560 75 91 20         [24] 1133 	mov	_NVSTATUS,#0x20
                                   1134 ;	main.c:118: st = waitflash(65535);
      00E563 90 FF FF         [24] 1135 	mov	dptr,#0xffff
      00E566 12 E4 72         [24] 1136 	lcall	_waitflash
                                   1137 ;	main.c:119: if (st)
      00E569 E5 82            [12] 1138 	mov	a,dpl
      00E56B FF               [12] 1139 	mov	r7,a
      00E56C 60 03            [24] 1140 	jz	00104$
                                   1141 ;	main.c:120: return st;
      00E56E 8F 82            [24] 1142 	mov	dpl,r7
      00E570 22               [24] 1143 	ret
      00E571                       1144 00104$:
                                   1145 ;	main.c:122: if (measurevdd() < BOOTLDR_MINVDD)
      00E571 12 E4 AF         [24] 1146 	lcall	_measurevdd
      00E574 AD 82            [24] 1147 	mov	r5,dpl
      00E576 AE 83            [24] 1148 	mov	r6,dph
      00E578 C3               [12] 1149 	clr	c
      00E579 ED               [12] 1150 	mov	a,r5
      00E57A 94 80            [12] 1151 	subb	a,#0x80
      00E57C EE               [12] 1152 	mov	a,r6
      00E57D 94 02            [12] 1153 	subb	a,#0x02
      00E57F 50 04            [24] 1154 	jnc	00106$
                                   1155 ;	main.c:123: return -4;
      00E581 75 82 FC         [24] 1156 	mov	dpl,#0xfc
      00E584 22               [24] 1157 	ret
      00E585                       1158 00106$:
                                   1159 ;	main.c:124: NVADDR0 = 0x02;
      00E585 75 92 02         [24] 1160 	mov	_NVADDR0,#0x02
                                   1161 ;	main.c:125: NVDATA0 = bootloader_reset_vector_lo();
      00E588 7D 38            [12] 1162 	mov	r5,#__sdcc_gsinit_startup
      00E58A 8D 94            [24] 1163 	mov	_NVDATA0,r5
                                   1164 ;	main.c:126: NVDATA1 = 0xff;
      00E58C 75 95 FF         [24] 1165 	mov	_NVDATA1,#0xff
                                   1166 ;	main.c:127: NVSTATUS = 0x30;
      00E58F 75 91 30         [24] 1167 	mov	_NVSTATUS,#0x30
                                   1168 ;	main.c:128: st = waitflash(128);
      00E592 90 00 80         [24] 1169 	mov	dptr,#0x0080
      00E595 12 E4 72         [24] 1170 	lcall	_waitflash
                                   1171 ;	main.c:129: if (st)
      00E598 E5 82            [12] 1172 	mov	a,dpl
      00E59A FF               [12] 1173 	mov	r7,a
      00E59B 60 03            [24] 1174 	jz	00108$
                                   1175 ;	main.c:130: return st;
      00E59D 8F 82            [24] 1176 	mov	dpl,r7
      00E59F 22               [24] 1177 	ret
      00E5A0                       1178 00108$:
                                   1179 ;	main.c:131: NVADDR0 = 0x00;
      00E5A0 75 92 00         [24] 1180 	mov	_NVADDR0,#0x00
                                   1181 ;	main.c:132: NVDATA0 = 0x02;
      00E5A3 75 94 02         [24] 1182 	mov	_NVDATA0,#0x02
                                   1183 ;	main.c:133: NVDATA1 = bootloader_reset_vector_hi();
      00E5A6 7E E4            [12] 1184 	mov	r6,#(__sdcc_gsinit_startup >> 8)
      00E5A8 8E 95            [24] 1185 	mov	_NVDATA1,r6
                                   1186 ;	main.c:134: NVSTATUS = 0x30;
      00E5AA 75 91 30         [24] 1187 	mov	_NVSTATUS,#0x30
                                   1188 ;	main.c:135: st = waitflash(128);
      00E5AD 90 00 80         [24] 1189 	mov	dptr,#0x0080
      00E5B0 12 E4 72         [24] 1190 	lcall	_waitflash
                                   1191 ;	main.c:136: if (st)
      00E5B3 E5 82            [12] 1192 	mov	a,dpl
      00E5B5 FF               [12] 1193 	mov	r7,a
      00E5B6 60 03            [24] 1194 	jz	00110$
                                   1195 ;	main.c:137: return st;
      00E5B8 8F 82            [24] 1196 	mov	dpl,r7
      00E5BA 22               [24] 1197 	ret
      00E5BB                       1198 00110$:
                                   1199 ;	main.c:139: const __code uint8_t *pmem = (const __code uint8_t *)(((uint16_t)NVADDR1) << 8);
      00E5BB AF 93            [24] 1200 	mov	r7,_NVADDR1
      00E5BD 7E 00            [12] 1201 	mov	r6,#0x00
                                   1202 ;	main.c:140: if (*pmem++ != 0x02)
      00E5BF 8E 82            [24] 1203 	mov	dpl,r6
      00E5C1 8F 83            [24] 1204 	mov	dph,r7
      00E5C3 E4               [12] 1205 	clr	a
      00E5C4 93               [24] 1206 	movc	a,@a+dptr
      00E5C5 FD               [12] 1207 	mov	r5,a
      00E5C6 A3               [24] 1208 	inc	dptr
      00E5C7 AE 82            [24] 1209 	mov	r6,dpl
      00E5C9 AF 83            [24] 1210 	mov	r7,dph
      00E5CB BD 02 02         [24] 1211 	cjne	r5,#0x02,00148$
      00E5CE 80 04            [24] 1212 	sjmp	00112$
      00E5D0                       1213 00148$:
                                   1214 ;	main.c:141: return -3;
      00E5D0 75 82 FD         [24] 1215 	mov	dpl,#0xfd
      00E5D3 22               [24] 1216 	ret
      00E5D4                       1217 00112$:
                                   1218 ;	main.c:142: if (*pmem++ != bootloader_reset_vector_hi())
      00E5D4 8E 82            [24] 1219 	mov	dpl,r6
      00E5D6 8F 83            [24] 1220 	mov	dph,r7
      00E5D8 E4               [12] 1221 	clr	a
      00E5D9 93               [24] 1222 	movc	a,@a+dptr
      00E5DA FD               [12] 1223 	mov	r5,a
      00E5DB A3               [24] 1224 	inc	dptr
      00E5DC AE 82            [24] 1225 	mov	r6,dpl
      00E5DE AF 83            [24] 1226 	mov	r7,dph
      00E5E0 7B 38            [12] 1227 	mov	r3,#__sdcc_gsinit_startup
      00E5E2 7C E4            [12] 1228 	mov	r4,#(__sdcc_gsinit_startup >> 8)
      00E5E4 8C 02            [24] 1229 	mov	ar2,r4
      00E5E6 ED               [12] 1230 	mov	a,r5
      00E5E7 B5 02 02         [24] 1231 	cjne	a,ar2,00149$
      00E5EA 80 04            [24] 1232 	sjmp	00114$
      00E5EC                       1233 00149$:
                                   1234 ;	main.c:143: return -3;
      00E5EC 75 82 FD         [24] 1235 	mov	dpl,#0xfd
      00E5EF 22               [24] 1236 	ret
      00E5F0                       1237 00114$:
                                   1238 ;	main.c:144: if (*pmem++ != bootloader_reset_vector_lo())
      00E5F0 8E 82            [24] 1239 	mov	dpl,r6
      00E5F2 8F 83            [24] 1240 	mov	dph,r7
      00E5F4 E4               [12] 1241 	clr	a
      00E5F5 93               [24] 1242 	movc	a,@a+dptr
      00E5F6 FE               [12] 1243 	mov	r6,a
      00E5F7 B5 03 02         [24] 1244 	cjne	a,ar3,00150$
      00E5FA 80 04            [24] 1245 	sjmp	00116$
      00E5FC                       1246 00150$:
                                   1247 ;	main.c:145: return -3;
      00E5FC 75 82 FD         [24] 1248 	mov	dpl,#0xfd
      00E5FF 22               [24] 1249 	ret
      00E600                       1250 00116$:
                                   1251 ;	main.c:147: return 0;
      00E600 75 82 00         [24] 1252 	mov	dpl,#0x00
      00E603 22               [24] 1253 	ret
                                   1254 ;------------------------------------------------------------
                                   1255 ;Allocation info for local variables in function 'erase_app'
                                   1256 ;------------------------------------------------------------
                                   1257 ;st                        Allocated to registers r7 
                                   1258 ;pg                        Allocated to registers r6 
                                   1259 ;------------------------------------------------------------
                                   1260 ;	main.c:150: static int8_t erase_app(void)
                                   1261 ;	-----------------------------------------
                                   1262 ;	 function erase_app
                                   1263 ;	-----------------------------------------
      00E604                       1264 _erase_app:
                                   1265 ;	main.c:154: orig_jmp_vector_mask = 0;
      00E604 90 00 04         [24] 1266 	mov	dptr,#_orig_jmp_vector_mask
      00E607 E4               [12] 1267 	clr	a
      00E608 F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	main.c:155: flash_unlock();
      00E609 12 F2 57         [24] 1270 	lcall	_flash_unlock
                                   1271 ;	main.c:156: NVADDR1 = 0x04;
      00E60C 75 93 04         [24] 1272 	mov	_NVADDR1,#0x04
                                   1273 ;	main.c:157: st = erase_page_write_resetvec();
      00E60F 12 E5 49         [24] 1274 	lcall	_erase_page_write_resetvec
                                   1275 ;	main.c:158: if (st)
      00E612 E5 82            [12] 1276 	mov	a,dpl
      00E614 FF               [12] 1277 	mov	r7,a
                                   1278 ;	main.c:160: NVADDR1 = 0x00;
      00E615 70 35            [24] 1279 	jnz	00110$
      00E617 F5 93            [12] 1280 	mov	_NVADDR1,a
                                   1281 ;	main.c:161: st = erase_page_write_resetvec();
      00E619 12 E5 49         [24] 1282 	lcall	_erase_page_write_resetvec
                                   1283 ;	main.c:162: if (st)
      00E61C E5 82            [12] 1284 	mov	a,dpl
      00E61E FF               [12] 1285 	mov	r7,a
                                   1286 ;	main.c:166: NVADDR0 = 0x00;
      00E61F 70 2B            [24] 1287 	jnz	00110$
      00E621 F5 92            [12] 1288 	mov	_NVADDR0,a
                                   1289 ;	main.c:167: do {
      00E623 7E 04            [12] 1290 	mov	r6,#0x04
      00E625                       1291 00107$:
                                   1292 ;	main.c:168: NVADDR1 = pg;
      00E625 8E 93            [24] 1293 	mov	_NVADDR1,r6
                                   1294 ;	main.c:169: NVSTATUS = 0x20;
      00E627 75 91 20         [24] 1295 	mov	_NVSTATUS,#0x20
                                   1296 ;	main.c:170: st = waitflash(65535);
      00E62A 90 FF FF         [24] 1297 	mov	dptr,#0xffff
      00E62D C0 06            [24] 1298 	push	ar6
      00E62F 12 E4 72         [24] 1299 	lcall	_waitflash
      00E632 AF 82            [24] 1300 	mov	r7,dpl
      00E634 D0 06            [24] 1301 	pop	ar6
                                   1302 ;	main.c:171: if (st)
      00E636 EF               [12] 1303 	mov	a,r7
      00E637 70 13            [24] 1304 	jnz	00110$
                                   1305 ;	main.c:173: pg += 4;
      00E639 EE               [12] 1306 	mov	a,r6
      00E63A 24 04            [12] 1307 	add	a,#0x04
      00E63C FE               [12] 1308 	mov	r6,a
                                   1309 ;	main.c:174: } while (pg != bootloader_reset_vector_hi());
      00E63D 7D E4            [12] 1310 	mov	r5,#(__sdcc_gsinit_startup >> 8)
      00E63F 8D 04            [24] 1311 	mov	ar4,r5
      00E641 EE               [12] 1312 	mov	a,r6
      00E642 B5 04 E0         [24] 1313 	cjne	a,ar4,00107$
                                   1314 ;	main.c:175: flash_lock();
      00E645 12 F5 9C         [24] 1315 	lcall	_flash_lock
                                   1316 ;	main.c:176: return 0;
      00E648 75 82 00         [24] 1317 	mov	dpl,#0x00
                                   1318 ;	main.c:177: ferr:
      00E64B 22               [24] 1319 	ret
      00E64C                       1320 00110$:
                                   1321 ;	main.c:178: flash_lock();
      00E64C C0 07            [24] 1322 	push	ar7
      00E64E 12 F5 9C         [24] 1323 	lcall	_flash_lock
      00E651 D0 07            [24] 1324 	pop	ar7
                                   1325 ;	main.c:179: return st;
      00E653 8F 82            [24] 1326 	mov	dpl,r7
      00E655 22               [24] 1327 	ret
                                   1328 ;------------------------------------------------------------
                                   1329 ;Allocation info for local variables in function 'check_app_erased'
                                   1330 ;------------------------------------------------------------
                                   1331 ;pmem                      Allocated to registers r2 r3 
                                   1332 ;------------------------------------------------------------
                                   1333 ;	main.c:182: static int8_t check_app_erased(void)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function check_app_erased
                                   1336 ;	-----------------------------------------
      00E656                       1337 _check_app_erased:
                                   1338 ;	main.c:185: if (*pmem++ != 0x02)
      00E656 90 00 00         [24] 1339 	mov	dptr,#0x0000
      00E659 E4               [12] 1340 	clr	a
      00E65A 93               [24] 1341 	movc	a,@a+dptr
      00E65B FF               [12] 1342 	mov	r7,a
      00E65C BF 02 02         [24] 1343 	cjne	r7,#0x02,00132$
      00E65F 80 04            [24] 1344 	sjmp	00102$
      00E661                       1345 00132$:
                                   1346 ;	main.c:186: return -3;
      00E661 75 82 FD         [24] 1347 	mov	dpl,#0xfd
      00E664 22               [24] 1348 	ret
      00E665                       1349 00102$:
                                   1350 ;	main.c:187: if (*pmem++ != bootloader_reset_vector_hi())
      00E665 90 00 01         [24] 1351 	mov	dptr,#0x0001
      00E668 E4               [12] 1352 	clr	a
      00E669 93               [24] 1353 	movc	a,@a+dptr
      00E66A FF               [12] 1354 	mov	r7,a
      00E66B 7D 38            [12] 1355 	mov	r5,#__sdcc_gsinit_startup
      00E66D 7E E4            [12] 1356 	mov	r6,#(__sdcc_gsinit_startup >> 8)
      00E66F 8E 04            [24] 1357 	mov	ar4,r6
      00E671 EF               [12] 1358 	mov	a,r7
      00E672 B5 04 02         [24] 1359 	cjne	a,ar4,00133$
      00E675 80 04            [24] 1360 	sjmp	00104$
      00E677                       1361 00133$:
                                   1362 ;	main.c:188: return -3;
      00E677 75 82 FD         [24] 1363 	mov	dpl,#0xfd
      00E67A 22               [24] 1364 	ret
      00E67B                       1365 00104$:
                                   1366 ;	main.c:189: if (*pmem++ != bootloader_reset_vector_lo())
      00E67B 90 00 02         [24] 1367 	mov	dptr,#0x0002
      00E67E E4               [12] 1368 	clr	a
      00E67F 93               [24] 1369 	movc	a,@a+dptr
      00E680 FF               [12] 1370 	mov	r7,a
      00E681 7A 03            [12] 1371 	mov	r2,#0x03
      00E683 7B 00            [12] 1372 	mov	r3,#0x00
      00E685 EF               [12] 1373 	mov	a,r7
      00E686 B5 05 02         [24] 1374 	cjne	a,ar5,00134$
      00E689 80 04            [24] 1375 	sjmp	00118$
      00E68B                       1376 00134$:
                                   1377 ;	main.c:190: return -3;
      00E68B 75 82 FD         [24] 1378 	mov	dpl,#0xfd
                                   1379 ;	main.c:191: do {
      00E68E 22               [24] 1380 	ret
      00E68F                       1381 00118$:
      00E68F 8A 06            [24] 1382 	mov	ar6,r2
      00E691 8B 07            [24] 1383 	mov	ar7,r3
      00E693                       1384 00109$:
                                   1385 ;	main.c:192: if (*pmem++ != 0xFF)
      00E693 8E 82            [24] 1386 	mov	dpl,r6
      00E695 8F 83            [24] 1387 	mov	dph,r7
      00E697 E4               [12] 1388 	clr	a
      00E698 93               [24] 1389 	movc	a,@a+dptr
      00E699 FD               [12] 1390 	mov	r5,a
      00E69A A3               [24] 1391 	inc	dptr
      00E69B AE 82            [24] 1392 	mov	r6,dpl
      00E69D AF 83            [24] 1393 	mov	r7,dph
      00E69F BD FF 02         [24] 1394 	cjne	r5,#0xff,00135$
      00E6A2 80 04            [24] 1395 	sjmp	00110$
      00E6A4                       1396 00135$:
                                   1397 ;	main.c:193: return -1;
      00E6A4 75 82 FF         [24] 1398 	mov	dpl,#0xff
      00E6A7 22               [24] 1399 	ret
      00E6A8                       1400 00110$:
                                   1401 ;	main.c:194: } while ((uint8_t)(((uint16_t)pmem) >> 8) != bootloader_reset_vector_hi());
      00E6A8 8E 03            [24] 1402 	mov	ar3,r6
      00E6AA 8F 05            [24] 1403 	mov	ar5,r7
      00E6AC 8D 03            [24] 1404 	mov	ar3,r5
      00E6AE EB               [12] 1405 	mov	a,r3
      00E6AF B5 04 E1         [24] 1406 	cjne	a,ar4,00109$
                                   1407 ;	main.c:195: return 0;
      00E6B2 75 82 00         [24] 1408 	mov	dpl,#0x00
      00E6B5 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'flash_line'
                                   1412 ;------------------------------------------------------------
                                   1413 ;lb                        Allocated with name '_flash_line_lb_1_139'
                                   1414 ;addr                      Allocated to registers r5 r6 
                                   1415 ;cnt                       Allocated with name '_flash_line_cnt_1_139'
                                   1416 ;st                        Allocated to registers r7 
                                   1417 ;ch                        Allocated to registers r6 
                                   1418 ;------------------------------------------------------------
                                   1419 ;	main.c:198: static int8_t flash_line(void)
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function flash_line
                                   1422 ;	-----------------------------------------
      00E6B6                       1423 _flash_line:
                                   1424 ;	main.c:202: uint8_t cnt = line_buffer[0];
      00E6B6 90 00 05         [24] 1425 	mov	dptr,#_line_buffer
      00E6B9 E0               [24] 1426 	movx	a,@dptr
                                   1427 ;	main.c:204: if (!cnt)
      00E6BA F5 0A            [12] 1428 	mov	_flash_line_cnt_1_139,a
                                   1429 ;	main.c:205: return 0;
      00E6BC 70 03            [24] 1430 	jnz	00102$
      00E6BE F5 82            [12] 1431 	mov	dpl,a
      00E6C0 22               [24] 1432 	ret
      00E6C1                       1433 00102$:
                                   1434 ;	main.c:206: addr = line_buffer[1];
      00E6C1 90 00 06         [24] 1435 	mov	dptr,#(_line_buffer + 0x0001)
      00E6C4 E0               [24] 1436 	movx	a,@dptr
                                   1437 ;	main.c:207: addr <<= 8;
      00E6C5 FE               [12] 1438 	mov	r6,a
      00E6C6 7D 00            [12] 1439 	mov	r5,#0x00
                                   1440 ;	main.c:208: addr |= line_buffer[2];
      00E6C8 90 00 07         [24] 1441 	mov	dptr,#(_line_buffer + 0x0002)
      00E6CB E0               [24] 1442 	movx	a,@dptr
      00E6CC 7B 00            [12] 1443 	mov	r3,#0x00
      00E6CE 42 05            [12] 1444 	orl	ar5,a
      00E6D0 EB               [12] 1445 	mov	a,r3
      00E6D1 42 06            [12] 1446 	orl	ar6,a
                                   1447 ;	main.c:209: lb = &line_buffer[4];
      00E6D3 74 04            [12] 1448 	mov	a,#0x04
      00E6D5 24 05            [12] 1449 	add	a,#_line_buffer
      00E6D7 F5 08            [12] 1450 	mov	_flash_line_lb_1_139,a
      00E6D9 E4               [12] 1451 	clr	a
      00E6DA 34 00            [12] 1452 	addc	a,#(_line_buffer >> 8)
      00E6DC F5 09            [12] 1453 	mov	(_flash_line_lb_1_139 + 1),a
                                   1454 ;	main.c:210: flash_unlock();
      00E6DE C0 06            [24] 1455 	push	ar6
      00E6E0 C0 05            [24] 1456 	push	ar5
      00E6E2 12 F2 57         [24] 1457 	lcall	_flash_unlock
      00E6E5 D0 05            [24] 1458 	pop	ar5
      00E6E7 D0 06            [24] 1459 	pop	ar6
                                   1460 ;	main.c:211: do {
      00E6E9                       1461 00138$:
                                   1462 ;	main.c:212: if (addr < 3) {
      00E6E9 C3               [12] 1463 	clr	c
      00E6EA ED               [12] 1464 	mov	a,r5
      00E6EB 94 03            [12] 1465 	subb	a,#0x03
      00E6ED EE               [12] 1466 	mov	a,r6
      00E6EE 94 00            [12] 1467 	subb	a,#0x00
      00E6F0 40 03            [24] 1468 	jc	00230$
      00E6F2 02 E7 C8         [24] 1469 	ljmp	00117$
      00E6F5                       1470 00230$:
                                   1471 ;	main.c:213: orig_jmp_vector[(uint8_t)addr] = *lb++;
      00E6F5 8D 02            [24] 1472 	mov	ar2,r5
      00E6F7 EA               [12] 1473 	mov	a,r2
      00E6F8 24 01            [12] 1474 	add	a,#_orig_jmp_vector
      00E6FA F8               [12] 1475 	mov	r0,a
      00E6FB E4               [12] 1476 	clr	a
      00E6FC 34 00            [12] 1477 	addc	a,#(_orig_jmp_vector >> 8)
      00E6FE F9               [12] 1478 	mov	r1,a
      00E6FF 85 08 82         [24] 1479 	mov	dpl,_flash_line_lb_1_139
      00E702 85 09 83         [24] 1480 	mov	dph,(_flash_line_lb_1_139 + 1)
      00E705 E0               [24] 1481 	movx	a,@dptr
      00E706 FF               [12] 1482 	mov	r7,a
      00E707 A3               [24] 1483 	inc	dptr
      00E708 85 82 08         [24] 1484 	mov	_flash_line_lb_1_139,dpl
      00E70B 85 83 09         [24] 1485 	mov	(_flash_line_lb_1_139 + 1),dph
      00E70E 88 82            [24] 1486 	mov	dpl,r0
      00E710 89 83            [24] 1487 	mov	dph,r1
      00E712 EF               [12] 1488 	mov	a,r7
      00E713 F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	main.c:214: orig_jmp_vector_mask |= 1 << (uint8_t)addr;
      00E714 8A F0            [24] 1491 	mov	b,r2
      00E716 05 F0            [12] 1492 	inc	b
      00E718 74 01            [12] 1493 	mov	a,#0x01
      00E71A 80 02            [24] 1494 	sjmp	00233$
      00E71C                       1495 00231$:
      00E71C 25 E0            [12] 1496 	add	a,acc
      00E71E                       1497 00233$:
      00E71E D5 F0 FB         [24] 1498 	djnz	b,00231$
      00E721 FA               [12] 1499 	mov	r2,a
      00E722 90 00 04         [24] 1500 	mov	dptr,#_orig_jmp_vector_mask
      00E725 E0               [24] 1501 	movx	a,@dptr
      00E726 FF               [12] 1502 	mov	r7,a
      00E727 4A               [12] 1503 	orl	a,r2
      00E728 F0               [24] 1504 	movx	@dptr,a
                                   1505 ;	main.c:215: ++addr;
      00E729 0D               [12] 1506 	inc	r5
      00E72A BD 00 01         [24] 1507 	cjne	r5,#0x00,00234$
      00E72D 0E               [12] 1508 	inc	r6
      00E72E                       1509 00234$:
                                   1510 ;	main.c:216: if (3 & (uint8_t)~orig_jmp_vector_mask)
      00E72E 90 00 04         [24] 1511 	mov	dptr,#_orig_jmp_vector_mask
      00E731 E0               [24] 1512 	movx	a,@dptr
      00E732 F4               [12] 1513 	cpl	a
      00E733 FF               [12] 1514 	mov	r7,a
      00E734 54 03            [12] 1515 	anl	a,#0x03
      00E736 60 03            [24] 1516 	jz	00236$
      00E738 02 E8 BE         [24] 1517 	ljmp	00139$
      00E73B                       1518 00236$:
                                   1519 ;	main.c:218: if (!((orig_jmp_vector[0] ^ 0x01) & 0x0F)) {
      00E73B 90 00 01         [24] 1520 	mov	dptr,#_orig_jmp_vector
      00E73E E0               [24] 1521 	movx	a,@dptr
      00E73F FA               [12] 1522 	mov	r2,a
      00E740 74 01            [12] 1523 	mov	a,#0x01
      00E742 6A               [12] 1524 	xrl	a,r2
      00E743 54 0F            [12] 1525 	anl	a,#0x0f
      00E745 70 0F            [24] 1526 	jnz	00110$
                                   1527 ;	main.c:219: NVDATA0 = orig_jmp_vector[1];
      00E747 90 00 02         [24] 1528 	mov	dptr,#(_orig_jmp_vector + 0x0001)
      00E74A E0               [24] 1529 	movx	a,@dptr
      00E74B F5 94            [12] 1530 	mov	_NVDATA0,a
                                   1531 ;	main.c:220: NVDATA1 = orig_jmp_vector[0] >> 5;
      00E74D EA               [12] 1532 	mov	a,r2
      00E74E C4               [12] 1533 	swap	a
      00E74F 03               [12] 1534 	rr	a
      00E750 54 07            [12] 1535 	anl	a,#0x07
      00E752 F5 95            [12] 1536 	mov	_NVDATA1,a
      00E754 80 1E            [24] 1537 	sjmp	00111$
      00E756                       1538 00110$:
                                   1539 ;	main.c:221: } else if (!(7 & (uint8_t)~orig_jmp_vector_mask) && !(0xEF & (0x02 ^ orig_jmp_vector[0]))) {
      00E756 EF               [12] 1540 	mov	a,r7
      00E757 54 07            [12] 1541 	anl	a,#0x07
      00E759 60 03            [24] 1542 	jz	00240$
      00E75B 02 E8 BE         [24] 1543 	ljmp	00139$
      00E75E                       1544 00240$:
      00E75E 74 02            [12] 1545 	mov	a,#0x02
      00E760 6A               [12] 1546 	xrl	a,r2
      00E761 54 EF            [12] 1547 	anl	a,#0xef
      00E763 60 03            [24] 1548 	jz	00242$
      00E765 02 E8 BE         [24] 1549 	ljmp	00139$
      00E768                       1550 00242$:
                                   1551 ;	main.c:222: NVDATA0 = orig_jmp_vector[2];
      00E768 90 00 03         [24] 1552 	mov	dptr,#(_orig_jmp_vector + 0x0002)
      00E76B E0               [24] 1553 	movx	a,@dptr
      00E76C F5 94            [12] 1554 	mov	_NVDATA0,a
                                   1555 ;	main.c:223: NVDATA1 = orig_jmp_vector[1];
      00E76E 90 00 02         [24] 1556 	mov	dptr,#(_orig_jmp_vector + 0x0001)
      00E771 E0               [24] 1557 	movx	a,@dptr
      00E772 F5 95            [12] 1558 	mov	_NVDATA1,a
                                   1559 ;	main.c:225: continue;
      00E774                       1560 00111$:
                                   1561 ;	main.c:227: NVADDR0 = (uint16_t)&jmp_vector;
      00E774 7A FE            [12] 1562 	mov	r2,#_jmp_vector
      00E776 7F E3            [12] 1563 	mov	r7,#(_jmp_vector >> 8)
      00E778 8A 92            [24] 1564 	mov	_NVADDR0,r2
                                   1565 ;	main.c:228: NVADDR1 = ((uint16_t)&jmp_vector) >> 8;
      00E77A 7A FE            [12] 1566 	mov	r2,#_jmp_vector
      00E77C 7F E3            [12] 1567 	mov	r7,#(_jmp_vector >> 8)
      00E77E 8F 93            [24] 1568 	mov	_NVADDR1,r7
                                   1569 ;	main.c:229: NVSTATUS = 0x30;
      00E780 75 91 30         [24] 1570 	mov	_NVSTATUS,#0x30
                                   1571 ;	main.c:230: st = waitflash(128);
      00E783 90 00 80         [24] 1572 	mov	dptr,#0x0080
      00E786 C0 06            [24] 1573 	push	ar6
      00E788 C0 05            [24] 1574 	push	ar5
      00E78A 12 E4 72         [24] 1575 	lcall	_waitflash
      00E78D AF 82            [24] 1576 	mov	r7,dpl
      00E78F D0 05            [24] 1577 	pop	ar5
      00E791 D0 06            [24] 1578 	pop	ar6
                                   1579 ;	main.c:231: if (st) {
      00E793 EF               [12] 1580 	mov	a,r7
      00E794 60 0A            [24] 1581 	jz	00113$
                                   1582 ;	main.c:232: flash_lock();
      00E796 C0 07            [24] 1583 	push	ar7
      00E798 12 F5 9C         [24] 1584 	lcall	_flash_lock
      00E79B D0 07            [24] 1585 	pop	ar7
                                   1586 ;	main.c:233: return st;
      00E79D 8F 82            [24] 1587 	mov	dpl,r7
      00E79F 22               [24] 1588 	ret
      00E7A0                       1589 00113$:
                                   1590 ;	main.c:235: if (((uint16_t)NVDATA1) ^ NVDATA0 ^ jmp_vector)
      00E7A0 A9 95            [24] 1591 	mov	r1,_NVDATA1
      00E7A2 7A 00            [12] 1592 	mov	r2,#0x00
      00E7A4 A8 94            [24] 1593 	mov	r0,_NVDATA0
      00E7A6 7C 00            [12] 1594 	mov	r4,#0x00
      00E7A8 E8               [12] 1595 	mov	a,r0
      00E7A9 62 01            [12] 1596 	xrl	ar1,a
      00E7AB EC               [12] 1597 	mov	a,r4
      00E7AC 62 02            [12] 1598 	xrl	ar2,a
      00E7AE 90 E3 FE         [24] 1599 	mov	dptr,#_jmp_vector
      00E7B1 E4               [12] 1600 	clr	a
      00E7B2 93               [24] 1601 	movc	a,@a+dptr
      00E7B3 FB               [12] 1602 	mov	r3,a
      00E7B4 74 01            [12] 1603 	mov	a,#0x01
      00E7B6 93               [24] 1604 	movc	a,@a+dptr
      00E7B7 FC               [12] 1605 	mov	r4,a
      00E7B8 EB               [12] 1606 	mov	a,r3
      00E7B9 62 01            [12] 1607 	xrl	ar1,a
      00E7BB EC               [12] 1608 	mov	a,r4
      00E7BC 62 02            [12] 1609 	xrl	ar2,a
      00E7BE E9               [12] 1610 	mov	a,r1
      00E7BF 4A               [12] 1611 	orl	a,r2
      00E7C0 70 03            [24] 1612 	jnz	00244$
      00E7C2 02 E8 BE         [24] 1613 	ljmp	00139$
      00E7C5                       1614 00244$:
                                   1615 ;	main.c:236: goto cmperr;
      00E7C5 02 E8 EF         [24] 1616 	ljmp	00148$
                                   1617 ;	main.c:237: continue;
      00E7C8                       1618 00117$:
                                   1619 ;	main.c:239: NVADDR0 = (uint8_t)addr & (uint8_t)~1;
      00E7C8 8D 04            [24] 1620 	mov	ar4,r5
      00E7CA 74 FE            [12] 1621 	mov	a,#0xfe
      00E7CC 5C               [12] 1622 	anl	a,r4
      00E7CD F5 92            [12] 1623 	mov	_NVADDR0,a
                                   1624 ;	main.c:240: NVADDR1 = addr >> 8;
      00E7CF 8E 04            [24] 1625 	mov	ar4,r6
      00E7D1 8C 93            [24] 1626 	mov	_NVADDR1,r4
                                   1627 ;	main.c:241: if ((uint8_t)(addr >> 8) >= bootloader_reset_vector_hi())
      00E7D3 7B E4            [12] 1628 	mov	r3,#(__sdcc_gsinit_startup >> 8)
      00E7D5 8B 02            [24] 1629 	mov	ar2,r3
      00E7D7 C3               [12] 1630 	clr	c
      00E7D8 EC               [12] 1631 	mov	a,r4
      00E7D9 9A               [12] 1632 	subb	a,r2
      00E7DA 40 03            [24] 1633 	jc	00245$
      00E7DC 02 E8 EF         [24] 1634 	ljmp	00148$
      00E7DF                       1635 00245$:
                                   1636 ;	main.c:243: if (addr & 1) {
      00E7DF ED               [12] 1637 	mov	a,r5
      00E7E0 30 E0 43         [24] 1638 	jnb	acc.0,00125$
                                   1639 ;	main.c:244: NVDATA0 = 0xff;
      00E7E3 75 94 FF         [24] 1640 	mov	_NVDATA0,#0xff
                                   1641 ;	main.c:245: NVDATA1 = *lb++;
      00E7E6 85 08 82         [24] 1642 	mov	dpl,_flash_line_lb_1_139
      00E7E9 85 09 83         [24] 1643 	mov	dph,(_flash_line_lb_1_139 + 1)
      00E7EC E0               [24] 1644 	movx	a,@dptr
      00E7ED F5 95            [12] 1645 	mov	_NVDATA1,a
      00E7EF A3               [24] 1646 	inc	dptr
      00E7F0 85 82 08         [24] 1647 	mov	_flash_line_lb_1_139,dpl
      00E7F3 85 83 09         [24] 1648 	mov	(_flash_line_lb_1_139 + 1),dph
                                   1649 ;	main.c:246: NVSTATUS = 0x30;
      00E7F6 75 91 30         [24] 1650 	mov	_NVSTATUS,#0x30
                                   1651 ;	main.c:247: st = waitflash(128);
      00E7F9 90 00 80         [24] 1652 	mov	dptr,#0x0080
      00E7FC C0 06            [24] 1653 	push	ar6
      00E7FE C0 05            [24] 1654 	push	ar5
      00E800 12 E4 72         [24] 1655 	lcall	_waitflash
      00E803 AF 82            [24] 1656 	mov	r7,dpl
      00E805 D0 05            [24] 1657 	pop	ar5
      00E807 D0 06            [24] 1658 	pop	ar6
                                   1659 ;	main.c:248: if (st)
      00E809 EF               [12] 1660 	mov	a,r7
      00E80A 60 03            [24] 1661 	jz	00247$
      00E80C 02 E8 F6         [24] 1662 	ljmp	00149$
      00E80F                       1663 00247$:
                                   1664 ;	main.c:250: if (NVDATA1 != *(const __code uint8_t *)addr)
      00E80F 8D 82            [24] 1665 	mov	dpl,r5
      00E811 8E 83            [24] 1666 	mov	dph,r6
      00E813 E4               [12] 1667 	clr	a
      00E814 93               [24] 1668 	movc	a,@a+dptr
      00E815 FC               [12] 1669 	mov	r4,a
      00E816 B5 95 02         [24] 1670 	cjne	a,_NVDATA1,00248$
      00E819 80 03            [24] 1671 	sjmp	00249$
      00E81B                       1672 00248$:
      00E81B 02 E8 EF         [24] 1673 	ljmp	00148$
      00E81E                       1674 00249$:
                                   1675 ;	main.c:252: ++addr;
      00E81E 0D               [12] 1676 	inc	r5
      00E81F BD 00 01         [24] 1677 	cjne	r5,#0x00,00250$
      00E822 0E               [12] 1678 	inc	r6
      00E823                       1679 00250$:
                                   1680 ;	main.c:253: continue;
      00E823 02 E8 BE         [24] 1681 	ljmp	00139$
      00E826                       1682 00125$:
                                   1683 ;	main.c:255: if (!(cnt & (uint8_t)~1)) {
      00E826 E5 0A            [12] 1684 	mov	a,_flash_line_cnt_1_139
      00E828 54 FE            [12] 1685 	anl	a,#0xfe
      00E82A 70 42            [24] 1686 	jnz	00131$
                                   1687 ;	main.c:256: NVDATA0 = *lb++;
      00E82C 85 08 82         [24] 1688 	mov	dpl,_flash_line_lb_1_139
      00E82F 85 09 83         [24] 1689 	mov	dph,(_flash_line_lb_1_139 + 1)
      00E832 E0               [24] 1690 	movx	a,@dptr
      00E833 F5 94            [12] 1691 	mov	_NVDATA0,a
      00E835 A3               [24] 1692 	inc	dptr
      00E836 85 82 08         [24] 1693 	mov	_flash_line_lb_1_139,dpl
      00E839 85 83 09         [24] 1694 	mov	(_flash_line_lb_1_139 + 1),dph
                                   1695 ;	main.c:257: NVDATA1 = 0xff;
      00E83C 75 95 FF         [24] 1696 	mov	_NVDATA1,#0xff
                                   1697 ;	main.c:258: NVSTATUS = 0x30;
      00E83F 75 91 30         [24] 1698 	mov	_NVSTATUS,#0x30
                                   1699 ;	main.c:259: st = waitflash(128);
      00E842 90 00 80         [24] 1700 	mov	dptr,#0x0080
      00E845 C0 06            [24] 1701 	push	ar6
      00E847 C0 05            [24] 1702 	push	ar5
      00E849 12 E4 72         [24] 1703 	lcall	_waitflash
      00E84C AF 82            [24] 1704 	mov	r7,dpl
      00E84E D0 05            [24] 1705 	pop	ar5
      00E850 D0 06            [24] 1706 	pop	ar6
                                   1707 ;	main.c:260: if (st)
      00E852 EF               [12] 1708 	mov	a,r7
      00E853 60 03            [24] 1709 	jz	00253$
      00E855 02 E8 F6         [24] 1710 	ljmp	00149$
      00E858                       1711 00253$:
                                   1712 ;	main.c:262: if (NVDATA0 != *(const __code uint8_t *)addr)
      00E858 8D 82            [24] 1713 	mov	dpl,r5
      00E85A 8E 83            [24] 1714 	mov	dph,r6
      00E85C E4               [12] 1715 	clr	a
      00E85D 93               [24] 1716 	movc	a,@a+dptr
      00E85E FC               [12] 1717 	mov	r4,a
      00E85F B5 94 02         [24] 1718 	cjne	a,_NVDATA0,00254$
      00E862 80 03            [24] 1719 	sjmp	00255$
      00E864                       1720 00254$:
      00E864 02 E8 EF         [24] 1721 	ljmp	00148$
      00E867                       1722 00255$:
                                   1723 ;	main.c:264: ++addr;
      00E867 0D               [12] 1724 	inc	r5
                                   1725 ;	main.c:265: continue;
      00E868 BD 00 53         [24] 1726 	cjne	r5,#0x00,00139$
      00E86B 0E               [12] 1727 	inc	r6
      00E86C 80 50            [24] 1728 	sjmp	00139$
      00E86E                       1729 00131$:
                                   1730 ;	main.c:267: NVDATA0 = *lb++;
      00E86E 85 08 82         [24] 1731 	mov	dpl,_flash_line_lb_1_139
      00E871 85 09 83         [24] 1732 	mov	dph,(_flash_line_lb_1_139 + 1)
      00E874 E0               [24] 1733 	movx	a,@dptr
      00E875 F5 94            [12] 1734 	mov	_NVDATA0,a
      00E877 A3               [24] 1735 	inc	dptr
                                   1736 ;	main.c:268: NVDATA1 = *lb++;
      00E878 85 82 08         [24] 1737 	mov	_flash_line_lb_1_139,dpl
      00E87B 85 83 09         [24] 1738 	mov  (_flash_line_lb_1_139 + 1),dph
      00E87E E0               [24] 1739 	movx	a,@dptr
      00E87F F5 95            [12] 1740 	mov	_NVDATA1,a
      00E881 A3               [24] 1741 	inc	dptr
      00E882 85 82 08         [24] 1742 	mov	_flash_line_lb_1_139,dpl
      00E885 85 83 09         [24] 1743 	mov	(_flash_line_lb_1_139 + 1),dph
                                   1744 ;	main.c:269: NVSTATUS = 0x30;
      00E888 75 91 30         [24] 1745 	mov	_NVSTATUS,#0x30
                                   1746 ;	main.c:270: st = waitflash(128);
      00E88B 90 00 80         [24] 1747 	mov	dptr,#0x0080
      00E88E C0 06            [24] 1748 	push	ar6
      00E890 C0 05            [24] 1749 	push	ar5
      00E892 12 E4 72         [24] 1750 	lcall	_waitflash
      00E895 AF 82            [24] 1751 	mov	r7,dpl
      00E897 D0 05            [24] 1752 	pop	ar5
      00E899 D0 06            [24] 1753 	pop	ar6
                                   1754 ;	main.c:271: if (st)
      00E89B EF               [12] 1755 	mov	a,r7
      00E89C 70 58            [24] 1756 	jnz	00149$
                                   1757 ;	main.c:273: if (NVDATA0 != *(const __code uint8_t *)addr)
      00E89E 8D 82            [24] 1758 	mov	dpl,r5
      00E8A0 8E 83            [24] 1759 	mov	dph,r6
      00E8A2 E4               [12] 1760 	clr	a
      00E8A3 93               [24] 1761 	movc	a,@a+dptr
      00E8A4 FC               [12] 1762 	mov	r4,a
      00E8A5 B5 94 47         [24] 1763 	cjne	a,_NVDATA0,00148$
                                   1764 ;	main.c:275: ++addr;
      00E8A8 0D               [12] 1765 	inc	r5
      00E8A9 BD 00 01         [24] 1766 	cjne	r5,#0x00,00260$
      00E8AC 0E               [12] 1767 	inc	r6
      00E8AD                       1768 00260$:
                                   1769 ;	main.c:276: if (NVDATA1 != *(const __code uint8_t *)addr)
      00E8AD 8D 82            [24] 1770 	mov	dpl,r5
      00E8AF 8E 83            [24] 1771 	mov	dph,r6
      00E8B1 E4               [12] 1772 	clr	a
      00E8B2 93               [24] 1773 	movc	a,@a+dptr
      00E8B3 FC               [12] 1774 	mov	r4,a
      00E8B4 B5 95 38         [24] 1775 	cjne	a,_NVDATA1,00148$
                                   1776 ;	main.c:278: ++addr;
      00E8B7 0D               [12] 1777 	inc	r5
      00E8B8 BD 00 01         [24] 1778 	cjne	r5,#0x00,00263$
      00E8BB 0E               [12] 1779 	inc	r6
      00E8BC                       1780 00263$:
                                   1781 ;	main.c:279: --cnt;
      00E8BC 15 0A            [12] 1782 	dec	_flash_line_cnt_1_139
      00E8BE                       1783 00139$:
                                   1784 ;	main.c:280: } while (--cnt);
      00E8BE D5 0A 02         [24] 1785 	djnz	_flash_line_cnt_1_139,00264$
      00E8C1 80 03            [24] 1786 	sjmp	00265$
      00E8C3                       1787 00264$:
      00E8C3 02 E6 E9         [24] 1788 	ljmp	00138$
      00E8C6                       1789 00265$:
                                   1790 ;	main.c:281: flash_lock();
      00E8C6 12 F5 9C         [24] 1791 	lcall	_flash_lock
                                   1792 ;	main.c:282: st = 0;
      00E8C9 7F 00            [12] 1793 	mov	r7,#0x00
      00E8CB                       1794 00150$:
                                   1795 ;	main.c:284: char ch = getch();
      00E8CB C0 07            [24] 1796 	push	ar7
      00E8CD 12 E4 99         [24] 1797 	lcall	_getch
      00E8D0 AE 82            [24] 1798 	mov	r6,dpl
      00E8D2 D0 07            [24] 1799 	pop	ar7
                                   1800 ;	main.c:285: switch (ch) {
      00E8D4 BE 09 02         [24] 1801 	cjne	r6,#0x09,00266$
      00E8D7 80 F2            [24] 1802 	sjmp	00150$
      00E8D9                       1803 00266$:
      00E8D9 BE 0A 02         [24] 1804 	cjne	r6,#0x0a,00267$
      00E8DC 80 0A            [24] 1805 	sjmp	00142$
      00E8DE                       1806 00267$:
      00E8DE BE 0D 02         [24] 1807 	cjne	r6,#0x0d,00268$
      00E8E1 80 05            [24] 1808 	sjmp	00142$
      00E8E3                       1809 00268$:
                                   1810 ;	main.c:287: case '\r':
      00E8E3 BE 20 05         [24] 1811 	cjne	r6,#0x20,00145$
      00E8E6 80 E3            [24] 1812 	sjmp	00150$
      00E8E8                       1813 00142$:
                                   1814 ;	main.c:288: return st;
      00E8E8 8F 82            [24] 1815 	mov	dpl,r7
                                   1816 ;	main.c:294: default:
      00E8EA 22               [24] 1817 	ret
      00E8EB                       1818 00145$:
                                   1819 ;	main.c:295: st = -7;
      00E8EB 7F F9            [12] 1820 	mov	r7,#0xf9
                                   1821 ;	main.c:297: }
                                   1822 ;	main.c:300: cmperr:
      00E8ED 80 DC            [24] 1823 	sjmp	00150$
      00E8EF                       1824 00148$:
                                   1825 ;	main.c:301: flash_lock();
      00E8EF 12 F5 9C         [24] 1826 	lcall	_flash_lock
                                   1827 ;	main.c:302: return -6;
      00E8F2 75 82 FA         [24] 1828 	mov	dpl,#0xfa
                                   1829 ;	main.c:304: ferr:
      00E8F5 22               [24] 1830 	ret
      00E8F6                       1831 00149$:
                                   1832 ;	main.c:305: flash_lock();
      00E8F6 C0 07            [24] 1833 	push	ar7
      00E8F8 12 F5 9C         [24] 1834 	lcall	_flash_lock
      00E8FB D0 07            [24] 1835 	pop	ar7
                                   1836 ;	main.c:306: return st;
      00E8FD 8F 82            [24] 1837 	mov	dpl,r7
      00E8FF 22               [24] 1838 	ret
                                   1839 ;------------------------------------------------------------
                                   1840 ;Allocation info for local variables in function 'parse_ihex'
                                   1841 ;------------------------------------------------------------
                                   1842 ;i                         Allocated to registers r5 r6 
                                   1843 ;s                         Allocated to registers r7 
                                   1844 ;val                       Allocated to registers r4 
                                   1845 ;cnt                       Allocated to registers r3 
                                   1846 ;ch                        Allocated to registers r2 
                                   1847 ;------------------------------------------------------------
                                   1848 ;	main.c:309: static int8_t parse_ihex(void)
                                   1849 ;	-----------------------------------------
                                   1850 ;	 function parse_ihex
                                   1851 ;	-----------------------------------------
      00E900                       1852 _parse_ihex:
                                   1853 ;	main.c:312: uint8_t s = 0;
      00E900 7F 00            [12] 1854 	mov	r7,#0x00
                                   1855 ;	main.c:313: do {
      00E902 7D 00            [12] 1856 	mov	r5,#0x00
      00E904 7E 00            [12] 1857 	mov	r6,#0x00
      00E906                       1858 00110$:
                                   1859 ;	main.c:314: uint8_t val = 0;
      00E906 7C 00            [12] 1860 	mov	r4,#0x00
                                   1861 ;	main.c:315: uint8_t cnt = 2;
      00E908 7B 02            [12] 1862 	mov	r3,#0x02
                                   1863 ;	main.c:316: do {
      00E90A                       1864 00107$:
                                   1865 ;	main.c:317: uint8_t ch = getch();
      00E90A C0 07            [24] 1866 	push	ar7
      00E90C C0 06            [24] 1867 	push	ar6
      00E90E C0 05            [24] 1868 	push	ar5
      00E910 C0 04            [24] 1869 	push	ar4
      00E912 C0 03            [24] 1870 	push	ar3
      00E914 12 E4 99         [24] 1871 	lcall	_getch
      00E917 AA 82            [24] 1872 	mov	r2,dpl
      00E919 D0 03            [24] 1873 	pop	ar3
      00E91B D0 04            [24] 1874 	pop	ar4
      00E91D D0 05            [24] 1875 	pop	ar5
      00E91F D0 06            [24] 1876 	pop	ar6
      00E921 D0 07            [24] 1877 	pop	ar7
                                   1878 ;	main.c:318: val <<= 4;
      00E923 EC               [12] 1879 	mov	a,r4
      00E924 C4               [12] 1880 	swap	a
      00E925 54 F0            [12] 1881 	anl	a,#0xf0
      00E927 FC               [12] 1882 	mov	r4,a
                                   1883 ;	main.c:319: ch -= '0';
      00E928 8A 01            [24] 1884 	mov	ar1,r2
      00E92A E9               [12] 1885 	mov	a,r1
      00E92B 24 D0            [12] 1886 	add	a,#0xd0
      00E92D FA               [12] 1887 	mov	r2,a
                                   1888 ;	main.c:320: if (ch < 10) {
      00E92E BA 0A 00         [24] 1889 	cjne	r2,#0x0a,00151$
      00E931                       1890 00151$:
      00E931 50 05            [24] 1891 	jnc	00102$
                                   1892 ;	main.c:321: val |= ch;
      00E933 EA               [12] 1893 	mov	a,r2
      00E934 42 04            [12] 1894 	orl	ar4,a
                                   1895 ;	main.c:322: continue;
      00E936 80 28            [24] 1896 	sjmp	00108$
      00E938                       1897 00102$:
                                   1898 ;	main.c:324: ch -= ('A' - '0');
      00E938 8A 01            [24] 1899 	mov	ar1,r2
      00E93A E9               [12] 1900 	mov	a,r1
      00E93B 24 EF            [12] 1901 	add	a,#0xef
      00E93D FA               [12] 1902 	mov	r2,a
                                   1903 ;	main.c:325: if (ch < 6) {
      00E93E BA 06 00         [24] 1904 	cjne	r2,#0x06,00153$
      00E941                       1905 00153$:
      00E941 50 07            [24] 1906 	jnc	00104$
                                   1907 ;	main.c:326: val |= ch + 10;
      00E943 74 0A            [12] 1908 	mov	a,#0x0a
      00E945 2A               [12] 1909 	add	a,r2
      00E946 42 04            [12] 1910 	orl	ar4,a
                                   1911 ;	main.c:327: continue;
      00E948 80 16            [24] 1912 	sjmp	00108$
      00E94A                       1913 00104$:
                                   1914 ;	main.c:329: ch -= ('a' - 'A');
      00E94A 8A 01            [24] 1915 	mov	ar1,r2
      00E94C E9               [12] 1916 	mov	a,r1
      00E94D 24 E0            [12] 1917 	add	a,#0xe0
      00E94F FA               [12] 1918 	mov	r2,a
                                   1919 ;	main.c:330: if (ch < 6) {
      00E950 BA 06 00         [24] 1920 	cjne	r2,#0x06,00155$
      00E953                       1921 00155$:
      00E953 50 07            [24] 1922 	jnc	00106$
                                   1923 ;	main.c:331: val |= ch + 10;
      00E955 74 0A            [12] 1924 	mov	a,#0x0a
      00E957 2A               [12] 1925 	add	a,r2
      00E958 42 04            [12] 1926 	orl	ar4,a
                                   1927 ;	main.c:332: continue;
      00E95A 80 04            [24] 1928 	sjmp	00108$
      00E95C                       1929 00106$:
                                   1930 ;	main.c:334: return -3;
      00E95C 75 82 FD         [24] 1931 	mov	dpl,#0xfd
      00E95F 22               [24] 1932 	ret
      00E960                       1933 00108$:
                                   1934 ;	main.c:335: } while (--cnt);
      00E960 EB               [12] 1935 	mov	a,r3
      00E961 14               [12] 1936 	dec	a
      00E962 FA               [12] 1937 	mov	r2,a
      00E963 FB               [12] 1938 	mov	r3,a
      00E964 70 A4            [24] 1939 	jnz	00107$
                                   1940 ;	main.c:336: line_buffer[i++] = val;
      00E966 8D 02            [24] 1941 	mov	ar2,r5
      00E968 8E 03            [24] 1942 	mov	ar3,r6
      00E96A 0D               [12] 1943 	inc	r5
      00E96B BD 00 01         [24] 1944 	cjne	r5,#0x00,00158$
      00E96E 0E               [12] 1945 	inc	r6
      00E96F                       1946 00158$:
      00E96F EA               [12] 1947 	mov	a,r2
      00E970 24 05            [12] 1948 	add	a,#_line_buffer
      00E972 F5 82            [12] 1949 	mov	dpl,a
      00E974 EB               [12] 1950 	mov	a,r3
      00E975 34 00            [12] 1951 	addc	a,#(_line_buffer >> 8)
      00E977 F5 83            [12] 1952 	mov	dph,a
      00E979 EC               [12] 1953 	mov	a,r4
      00E97A F0               [24] 1954 	movx	@dptr,a
                                   1955 ;	main.c:337: s += val;
      00E97B EC               [12] 1956 	mov	a,r4
      00E97C 2F               [12] 1957 	add	a,r7
      00E97D FF               [12] 1958 	mov	r7,a
                                   1959 ;	main.c:338: } while (i < 5 + line_buffer[0]);
      00E97E 90 00 05         [24] 1960 	mov	dptr,#_line_buffer
      00E981 E0               [24] 1961 	movx	a,@dptr
      00E982 FC               [12] 1962 	mov	r4,a
      00E983 7B 00            [12] 1963 	mov	r3,#0x00
      00E985 74 05            [12] 1964 	mov	a,#0x05
      00E987 2C               [12] 1965 	add	a,r4
      00E988 FC               [12] 1966 	mov	r4,a
      00E989 E4               [12] 1967 	clr	a
      00E98A 3B               [12] 1968 	addc	a,r3
      00E98B FB               [12] 1969 	mov	r3,a
      00E98C C3               [12] 1970 	clr	c
      00E98D ED               [12] 1971 	mov	a,r5
      00E98E 9C               [12] 1972 	subb	a,r4
      00E98F EE               [12] 1973 	mov	a,r6
      00E990 9B               [12] 1974 	subb	a,r3
      00E991 50 03            [24] 1975 	jnc	00159$
      00E993 02 E9 06         [24] 1976 	ljmp	00110$
      00E996                       1977 00159$:
                                   1978 ;	main.c:339: if (s)
      00E996 EF               [12] 1979 	mov	a,r7
      00E997 60 04            [24] 1980 	jz	00114$
                                   1981 ;	main.c:340: return -4;
      00E999 75 82 FC         [24] 1982 	mov	dpl,#0xfc
      00E99C 22               [24] 1983 	ret
      00E99D                       1984 00114$:
                                   1985 ;	main.c:341: if (line_buffer[3])
      00E99D 90 00 08         [24] 1986 	mov	dptr,#(_line_buffer + 0x0003)
      00E9A0 E0               [24] 1987 	movx	a,@dptr
      00E9A1 FF               [12] 1988 	mov	r7,a
      00E9A2 60 0C            [24] 1989 	jz	00116$
                                   1990 ;	main.c:342: return (line_buffer[3] == 1) ? 0 : -5;
      00E9A4 BF 01 04         [24] 1991 	cjne	r7,#0x01,00119$
      00E9A7 7F 00            [12] 1992 	mov	r7,#0x00
      00E9A9 80 02            [24] 1993 	sjmp	00120$
      00E9AB                       1994 00119$:
      00E9AB 7F FB            [12] 1995 	mov	r7,#0xfb
      00E9AD                       1996 00120$:
      00E9AD 8F 82            [24] 1997 	mov	dpl,r7
      00E9AF 22               [24] 1998 	ret
      00E9B0                       1999 00116$:
                                   2000 ;	main.c:343: return flash_line();
      00E9B0 02 E6 B6         [24] 2001 	ljmp	_flash_line
                                   2002 ;------------------------------------------------------------
                                   2003 ;Allocation info for local variables in function 'write_banner'
                                   2004 ;------------------------------------------------------------
                                   2005 ;crc                       Allocated to registers r6 r7 
                                   2006 ;------------------------------------------------------------
                                   2007 ;	main.c:346: static void write_banner(void)
                                   2008 ;	-----------------------------------------
                                   2009 ;	 function write_banner
                                   2010 ;	-----------------------------------------
      00E9B3                       2011 _write_banner:
                                   2012 ;	main.c:350: uint16_t crc = crc_crc16((const __code uint8_t *)(((uint16_t)bootloader_reset_vector_hi()) << 8),
      00E9B3 7F E4            [12] 2013 	mov	r7,#(__sdcc_gsinit_startup >> 8)
      00E9B5 8F 06            [24] 2014 	mov	ar6,r7
      00E9B7 74 FC            [12] 2015 	mov	a,#0xfc
      00E9B9 C3               [12] 2016 	clr	c
      00E9BA 9E               [12] 2017 	subb	a,r6
      00E9BB FD               [12] 2018 	mov	r5,a
      00E9BC 7F 00            [12] 2019 	mov	r7,#0x00
      00E9BE 8E 04            [24] 2020 	mov	ar4,r6
      00E9C0 7E 00            [12] 2021 	mov	r6,#0x00
      00E9C2 7B 80            [12] 2022 	mov	r3,#0x80
      00E9C4 74 FF            [12] 2023 	mov	a,#0xff
      00E9C6 C0 E0            [24] 2024 	push	acc
      00E9C8 C0 E0            [24] 2025 	push	acc
      00E9CA C0 07            [24] 2026 	push	ar7
      00E9CC C0 05            [24] 2027 	push	ar5
      00E9CE 8E 82            [24] 2028 	mov	dpl,r6
      00E9D0 8C 83            [24] 2029 	mov	dph,r4
      00E9D2 8B F0            [24] 2030 	mov	b,r3
      00E9D4 12 F1 84         [24] 2031 	lcall	_crc_crc16
      00E9D7 AE 82            [24] 2032 	mov	r6,dpl
      00E9D9 AF 83            [24] 2033 	mov	r7,dph
      00E9DB E5 81            [12] 2034 	mov	a,sp
      00E9DD 24 FC            [12] 2035 	add	a,#0xfc
      00E9DF F5 81            [12] 2036 	mov	sp,a
                                   2037 ;	main.c:352: uart0_writestr(uart_banner);
      00E9E1 90 F5 A0         [24] 2038 	mov	dptr,#_write_banner_uart_banner_1_158
      00E9E4 75 F0 80         [24] 2039 	mov	b,#0x80
      00E9E7 C0 07            [24] 2040 	push	ar7
      00E9E9 C0 06            [24] 2041 	push	ar6
      00E9EB 12 F4 C3         [24] 2042 	lcall	_uart0_writestr
      00E9EE D0 06            [24] 2043 	pop	ar6
      00E9F0 D0 07            [24] 2044 	pop	ar7
                                   2045 ;	main.c:353: uart0_writehex16(crc, 4, WRNUM_PADZERO);
      00E9F2 74 08            [12] 2046 	mov	a,#0x08
      00E9F4 C0 E0            [24] 2047 	push	acc
      00E9F6 03               [12] 2048 	rr	a
      00E9F7 C0 E0            [24] 2049 	push	acc
      00E9F9 8E 82            [24] 2050 	mov	dpl,r6
      00E9FB 8F 83            [24] 2051 	mov	dph,r7
      00E9FD 12 ED 1F         [24] 2052 	lcall	_uart0_writehex16
      00EA00 15 81            [12] 2053 	dec	sp
      00EA02 15 81            [12] 2054 	dec	sp
                                   2055 ;	main.c:354: uart0_writestr(uart_crlf);
      00EA04 90 F5 C3         [24] 2056 	mov	dptr,#_write_banner_uart_crlf_1_158
      00EA07 75 F0 80         [24] 2057 	mov	b,#0x80
      00EA0A 02 F4 C3         [24] 2058 	ljmp	_uart0_writestr
                                   2059 ;------------------------------------------------------------
                                   2060 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   2061 ;------------------------------------------------------------
                                   2062 ;	main.c:357: uint8_t _sdcc_external_startup(void)
                                   2063 ;	-----------------------------------------
                                   2064 ;	 function _sdcc_external_startup
                                   2065 ;	-----------------------------------------
      00EA0D                       2066 __sdcc_external_startup:
                                   2067 ;	main.c:359: DPS = 0x00;
      00EA0D 75 86 00         [24] 2068 	mov	_DPS,#0x00
                                   2069 ;	main.c:360: ANALOGA = 0x3F;
      00EA10 90 70 07         [24] 2070 	mov	dptr,#_ANALOGA
      00EA13 74 3F            [12] 2071 	mov	a,#0x3f
      00EA15 F0               [24] 2072 	movx	@dptr,a
                                   2073 ;	main.c:361: PORTA = 0xC0;
      00EA16 75 80 C0         [24] 2074 	mov	_PORTA,#0xc0
                                   2075 ;	main.c:362: DIRA = 0x00;
      00EA19 75 89 00         [24] 2076 	mov	_DIRA,#0x00
                                   2077 ;	main.c:363: PORTB = 0xFC;
      00EA1C 75 88 FC         [24] 2078 	mov	_PORTB,#0xfc
                                   2079 ;	main.c:364: DIRB = 0x13;
      00EA1F 75 8A 13         [24] 2080 	mov	_DIRB,#0x13
                                   2081 ;	main.c:365: PALTB = 0x10;
      00EA22 90 70 09         [24] 2082 	mov	dptr,#_PALTB
      00EA25 74 10            [12] 2083 	mov	a,#0x10
      00EA27 F0               [24] 2084 	movx	@dptr,a
                                   2085 ;	main.c:366: PORTC = 0xF3;
      00EA28 75 90 F3         [24] 2086 	mov	_PORTC,#0xf3
                                   2087 ;	main.c:367: DIRC = 0x0F;
      00EA2B 75 8B 0F         [24] 2088 	mov	_DIRC,#0x0f
                                   2089 ;	main.c:368: PORTR = 0xFF;
      00EA2E 75 8C FF         [24] 2090 	mov	_PORTR,#0xff
                                   2091 ;	main.c:369: DIRR = 0x15;
      00EA31 75 8E 15         [24] 2092 	mov	_DIRR,#0x15
                                   2093 ;	main.c:370: RADIOMUX = 0x47;
      00EA34 90 70 44         [24] 2094 	mov	dptr,#_RADIOMUX
      00EA37 74 47            [12] 2095 	mov	a,#0x47
      00EA39 F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	main.c:371: RADIOACC = 0x00;
      00EA3A 75 B1 00         [24] 2098 	mov	_RADIOACC,#0x00
                                   2099 ;	main.c:372: return 0;
      00EA3D 75 82 00         [24] 2100 	mov	dpl,#0x00
      00EA40 22               [24] 2101 	ret
                                   2102 ;------------------------------------------------------------
                                   2103 ;Allocation info for local variables in function 'bootloader'
                                   2104 ;------------------------------------------------------------
                                   2105 ;i                         Allocated to registers r7 
                                   2106 ;oc                        Allocated to registers r6 
                                   2107 ;ch                        Allocated to registers r7 
                                   2108 ;st                        Allocated to registers r7 
                                   2109 ;st                        Allocated to registers r7 
                                   2110 ;st                        Allocated to registers r7 
                                   2111 ;vdd                       Allocated to registers r6 r7 
                                   2112 ;------------------------------------------------------------
                                   2113 ;	main.c:379: void bootloader(void)
                                   2114 ;	-----------------------------------------
                                   2115 ;	 function bootloader
                                   2116 ;	-----------------------------------------
      00EA41                       2117 _bootloader:
                                   2118 ;	main.c:424: __endasm;
                                   2119 	.area	HOME (CODE)
                                   2120 	.area	UART0S0 (CODE)
                                   2121 	.area	UART0S1 (CODE)
                                   2122 	.area	UART0S2 (CODE)
                                   2123 	.area	UART0S3 (CODE)
                                   2124 	.area	UART0S4 (CODE)
                                   2125 	.area	UART0S5 (CODE)
                                   2126 	.area	WTCANSLP0 (CODE)
                                   2127 	.area	WTCANSLP1 (CODE)
                                   2128 	.area	WTCANSLP2 (CODE)
                                   2129 	.area	WTSTDBY0 (CODE)
                                   2130 	.area	WTSTDBY1 (CODE)
                                   2131 	.area	WTSTDBY2 (CODE)
                                   2132 	.area	SSEG (DATA)
      000021                       2133 	__start__stack:
      000021                       2134 	.ds	1
                                   2135 	.area	CSEG (CODE)
                           000000  2136 	G$_start__stack$0$0	= __start__stack
                                   2137 	.globl	G$_start__stack$0$0
                                   2138 ;	main.c:427: flash_apply_calibration();
      00EA41 12 F3 02         [24] 2139 	lcall	_flash_apply_calibration
                                   2140 ;	main.c:428: CLKCON = 0x00;
      00EA44 75 C6 00         [24] 2141 	mov	_CLKCON,#0x00
                                   2142 ;	main.c:431: if (PINB & 0x08 && jmp_vector != 0xFFFF) {
      00EA47 E5 E8            [12] 2143 	mov	a,_PINB
      00EA49 30 E3 15         [24] 2144 	jnb	acc.3,00102$
      00EA4C 90 E3 FE         [24] 2145 	mov	dptr,#_jmp_vector
      00EA4F E4               [12] 2146 	clr	a
      00EA50 93               [24] 2147 	movc	a,@a+dptr
      00EA51 FE               [12] 2148 	mov	r6,a
      00EA52 74 01            [12] 2149 	mov	a,#0x01
      00EA54 93               [24] 2150 	movc	a,@a+dptr
      00EA55 FF               [12] 2151 	mov	r7,a
      00EA56 BE FF 05         [24] 2152 	cjne	r6,#0xff,00252$
      00EA59 BF FF 02         [24] 2153 	cjne	r7,#0xff,00252$
      00EA5C 80 03            [24] 2154 	sjmp	00102$
      00EA5E                       2155 00252$:
                                   2156 ;	main.c:432: run_application();
      00EA5E 12 E4 48         [24] 2157 	lcall	_run_application
      00EA61                       2158 00102$:
                                   2159 ;	main.c:437: FRCOSCREF = 19531;
      00EA61 90 70 74         [24] 2160 	mov	dptr,#_FRCOSCREF
      00EA64 74 4B            [12] 2161 	mov	a,#0x4b
      00EA66 F0               [24] 2162 	movx	@dptr,a
      00EA67 04               [12] 2163 	inc	a
      00EA68 A3               [24] 2164 	inc	dptr
      00EA69 F0               [24] 2165 	movx	@dptr,a
                                   2166 ;	main.c:438: FRCOSCKFILT = 2800; /* theoretical maximum is 71582 */
      00EA6A 90 70 72         [24] 2167 	mov	dptr,#_FRCOSCKFILT
      00EA6D 74 F0            [12] 2168 	mov	a,#0xf0
      00EA6F F0               [24] 2169 	movx	@dptr,a
      00EA70 74 0A            [12] 2170 	mov	a,#0x0a
      00EA72 A3               [24] 2171 	inc	dptr
      00EA73 F0               [24] 2172 	movx	@dptr,a
                                   2173 ;	main.c:439: LPXOSCGM = 0x90;
      00EA74 90 70 54         [24] 2174 	mov	dptr,#_LPXOSCGM
      00EA77 74 90            [12] 2175 	mov	a,#0x90
      00EA79 F0               [24] 2176 	movx	@dptr,a
                                   2177 ;	main.c:440: OSCFORCERUN |= 0x04;
      00EA7A 90 70 50         [24] 2178 	mov	dptr,#_OSCFORCERUN
      00EA7D E0               [24] 2179 	movx	a,@dptr
      00EA7E FF               [12] 2180 	mov	r7,a
      00EA7F 74 04            [12] 2181 	mov	a,#0x04
      00EA81 4F               [12] 2182 	orl	a,r7
      00EA82 F0               [24] 2183 	movx	@dptr,a
                                   2184 ;	main.c:441: FRCOSCCONFIG = (6 << 3) | CLKSRC_LPXOSC;
      00EA83 90 70 70         [24] 2185 	mov	dptr,#_FRCOSCCONFIG
      00EA86 74 33            [12] 2186 	mov	a,#0x33
      00EA88 F0               [24] 2187 	movx	@dptr,a
                                   2188 ;	main.c:443: WTCFGB = (1 << 3) | CLKSRC_LPXOSC;
      00EA89 75 F9 0B         [24] 2189 	mov	_WTCFGB,#0x0b
                                   2190 ;	main.c:446: uint8_t i = 128;
      00EA8C 7F 80            [12] 2191 	mov	r7,#0x80
                                   2192 ;	main.c:447: PORTC_3 = 1;
      00EA8E D2 93            [12] 2193 	setb	_PORTC_3
                                   2194 ;	main.c:448: OSCCALIB = 0x01;
      00EA90 90 70 53         [24] 2195 	mov	dptr,#_OSCCALIB
      00EA93 74 01            [12] 2196 	mov	a,#0x01
      00EA95 F0               [24] 2197 	movx	@dptr,a
                                   2198 ;	main.c:449: IE_5 = 1;
      00EA96 D2 AD            [12] 2199 	setb	_IE_5
                                   2200 ;	main.c:457: FRCOSCFREQ1;
      00EA98                       2201 00149$:
                                   2202 ;	main.c:452: uint8_t oc = OSCCALIB;
      00EA98 90 70 53         [24] 2203 	mov	dptr,#_OSCCALIB
      00EA9B E0               [24] 2204 	movx	a,@dptr
                                   2205 ;	main.c:453: if (oc & 0x40)
      00EA9C FE               [12] 2206 	mov	r6,a
      00EA9D 20 E6 05         [24] 2207 	jb	acc.6,00106$
                                   2208 ;	main.c:455: enter_standby();
      00EAA0 12 F1 26         [24] 2209 	lcall	_enter_standby
      00EAA3 80 F3            [24] 2210 	sjmp	00149$
      00EAA5                       2211 00106$:
                                   2212 ;	main.c:457: FRCOSCFREQ1;
      00EAA5 90 70 77         [24] 2213 	mov	dptr,#_FRCOSCFREQ1
      00EAA8 E0               [24] 2214 	movx	a,@dptr
                                   2215 ;	main.c:458: } while (--i);
      00EAA9 EF               [12] 2216 	mov	a,r7
      00EAAA 14               [12] 2217 	dec	a
      00EAAB FE               [12] 2218 	mov	r6,a
      00EAAC FF               [12] 2219 	mov	r7,a
      00EAAD 70 E9            [24] 2220 	jnz	00149$
                                   2221 ;	main.c:459: IE_5 = 0;
      00EAAF C2 AD            [12] 2222 	clr	_IE_5
                                   2223 ;	main.c:460: OSCCALIB = 0x00;
      00EAB1 90 70 53         [24] 2224 	mov	dptr,#_OSCCALIB
      00EAB4 E4               [12] 2225 	clr	a
      00EAB5 F0               [24] 2226 	movx	@dptr,a
                                   2227 ;	main.c:461: PORTC_3 = 0;
      00EAB6 C2 93            [12] 2228 	clr	_PORTC_3
                                   2229 ;	main.c:465: ADCCH0CONFIG = 0xD9;
      00EAB8 75 CA D9         [24] 2230 	mov	_ADCCH0CONFIG,#0xd9
                                   2231 ;	main.c:466: ADCCH1CONFIG = 0xD9;
      00EABB 75 CB D9         [24] 2232 	mov	_ADCCH1CONFIG,#0xd9
                                   2233 ;	main.c:467: ADCCH2CONFIG = 0xD9;
      00EABE 75 D2 D9         [24] 2234 	mov	_ADCCH2CONFIG,#0xd9
                                   2235 ;	main.c:468: ADCCH3CONFIG = 0xD9;
      00EAC1 75 D3 D9         [24] 2236 	mov	_ADCCH3CONFIG,#0xd9
                                   2237 ;	main.c:470: orig_jmp_vector_mask = 0;
      00EAC4 90 00 04         [24] 2238 	mov	dptr,#_orig_jmp_vector_mask
      00EAC7 E4               [12] 2239 	clr	a
      00EAC8 F0               [24] 2240 	movx	@dptr,a
                                   2241 ;	main.c:472: uart_timer0_baud(CLKSRC_FRCOSC, 38400, 20000000);
      00EAC9 C0 E0            [24] 2242 	push	acc
      00EACB 74 2D            [12] 2243 	mov	a,#0x2d
      00EACD C0 E0            [24] 2244 	push	acc
      00EACF 74 31            [12] 2245 	mov	a,#0x31
      00EAD1 C0 E0            [24] 2246 	push	acc
      00EAD3 74 01            [12] 2247 	mov	a,#0x01
      00EAD5 C0 E0            [24] 2248 	push	acc
      00EAD7 E4               [12] 2249 	clr	a
      00EAD8 C0 E0            [24] 2250 	push	acc
      00EADA 74 96            [12] 2251 	mov	a,#0x96
      00EADC C0 E0            [24] 2252 	push	acc
      00EADE E4               [12] 2253 	clr	a
      00EADF C0 E0            [24] 2254 	push	acc
      00EAE1 C0 E0            [24] 2255 	push	acc
      00EAE3 75 82 00         [24] 2256 	mov	dpl,#0x00
      00EAE6 12 EE 30         [24] 2257 	lcall	_uart_timer0_baud
      00EAE9 E5 81            [12] 2258 	mov	a,sp
      00EAEB 24 F8            [12] 2259 	add	a,#0xf8
      00EAED F5 81            [12] 2260 	mov	sp,a
                                   2261 ;	main.c:473: uart0_init(0, 8, 1);
      00EAEF 75 10 08         [24] 2262 	mov	_uart0_init_PARM_2,#0x08
      00EAF2 75 11 01         [24] 2263 	mov	_uart0_init_PARM_3,#0x01
      00EAF5 75 82 00         [24] 2264 	mov	dpl,#0x00
      00EAF8 12 F2 C6         [24] 2265 	lcall	_uart0_init
                                   2266 ;	main.c:481: write_banner();
      00EAFB 12 E9 B3         [24] 2267 	lcall	_write_banner
      00EAFE                       2268 00151$:
                                   2269 ;	main.c:484: char ch = getch();
      00EAFE 12 E4 99         [24] 2270 	lcall	_getch
      00EB01 AF 82            [24] 2271 	mov	r7,dpl
                                   2272 ;	main.c:485: switch (ch) {
      00EB03 BF 0A 02         [24] 2273 	cjne	r7,#0x0a,00255$
      00EB06 80 F6            [24] 2274 	sjmp	00151$
      00EB08                       2275 00255$:
      00EB08 BF 0D 02         [24] 2276 	cjne	r7,#0x0d,00256$
      00EB0B 80 F1            [24] 2277 	sjmp	00151$
      00EB0D                       2278 00256$:
      00EB0D BF 20 02         [24] 2279 	cjne	r7,#0x20,00257$
      00EB10 80 EC            [24] 2280 	sjmp	00151$
      00EB12                       2281 00257$:
      00EB12 BF 3A 03         [24] 2282 	cjne	r7,#0x3a,00258$
      00EB15 02 EC 1A         [24] 2283 	ljmp	00134$
      00EB18                       2284 00258$:
      00EB18 BF 3F 02         [24] 2285 	cjne	r7,#0x3f,00259$
      00EB1B 80 1A            [24] 2286 	sjmp	00113$
      00EB1D                       2287 00259$:
      00EB1D BF 4B 02         [24] 2288 	cjne	r7,#0x4b,00260$
      00EB20 80 20            [24] 2289 	sjmp	00114$
      00EB22                       2290 00260$:
      00EB22 BF 52 03         [24] 2291 	cjne	r7,#0x52,00261$
      00EB25 02 EB D9         [24] 2292 	ljmp	00128$
      00EB28                       2293 00261$:
      00EB28 BF 56 03         [24] 2294 	cjne	r7,#0x56,00262$
      00EB2B 02 EC 9B         [24] 2295 	ljmp	00145$
      00EB2E                       2296 00262$:
      00EB2E BF 5A 03         [24] 2297 	cjne	r7,#0x5a,00263$
      00EB31 02 EB A2         [24] 2298 	ljmp	00123$
      00EB34                       2299 00263$:
      00EB34 02 ED 07         [24] 2300 	ljmp	00146$
                                   2301 ;	main.c:491: case '?':
      00EB37                       2302 00113$:
                                   2303 ;	main.c:492: uart0_wait_txfree(63);
      00EB37 75 82 3F         [24] 2304 	mov	dpl,#0x3f
      00EB3A 12 F0 AC         [24] 2305 	lcall	_uart0_wait_txfree
                                   2306 ;	main.c:493: write_banner();
      00EB3D 12 E9 B3         [24] 2307 	lcall	_write_banner
                                   2308 ;	main.c:494: break;
                                   2309 ;	main.c:496: case 'K':
      00EB40 80 BC            [24] 2310 	sjmp	00151$
      00EB42                       2311 00114$:
                                   2312 ;	main.c:498: int8_t st = erase_app();
      00EB42 12 E6 04         [24] 2313 	lcall	_erase_app
                                   2314 ;	main.c:499: if (!st)
      00EB45 E5 82            [12] 2315 	mov	a,dpl
      00EB47 FF               [12] 2316 	mov	r7,a
      00EB48 70 05            [24] 2317 	jnz	00116$
                                   2318 ;	main.c:500: st = check_app_erased();
      00EB4A 12 E6 56         [24] 2319 	lcall	_check_app_erased
      00EB4D AF 82            [24] 2320 	mov	r7,dpl
      00EB4F                       2321 00116$:
                                   2322 ;	main.c:501: uart0_wait_txfree(63);
      00EB4F 75 82 3F         [24] 2323 	mov	dpl,#0x3f
      00EB52 12 F0 AC         [24] 2324 	lcall	_uart0_wait_txfree
                                   2325 ;	main.c:502: switch (st) {
      00EB55 BF FC 02         [24] 2326 	cjne	r7,#0xfc,00265$
      00EB58 80 30            [24] 2327 	sjmp	00120$
      00EB5A                       2328 00265$:
      00EB5A BF FD 02         [24] 2329 	cjne	r7,#0xfd,00266$
      00EB5D 80 1F            [24] 2330 	sjmp	00119$
      00EB5F                       2331 00266$:
      00EB5F BF FE 02         [24] 2332 	cjne	r7,#0xfe,00267$
      00EB62 80 0E            [24] 2333 	sjmp	00118$
      00EB64                       2334 00267$:
      00EB64 BF 00 2F         [24] 2335 	cjne	r7,#0x00,00121$
                                   2336 ;	main.c:504: uart0_writestr(uart_okflasherase);
      00EB67 90 F6 24         [24] 2337 	mov	dptr,#_bootloader_uart_okflasherase_1_162
      00EB6A 75 F0 80         [24] 2338 	mov	b,#0x80
      00EB6D 12 F4 C3         [24] 2339 	lcall	_uart0_writestr
                                   2340 ;	main.c:505: break;
                                   2341 ;	main.c:507: case -2:
      00EB70 80 8C            [24] 2342 	sjmp	00151$
      00EB72                       2343 00118$:
                                   2344 ;	main.c:508: uart0_writestr(uart_errflashlock);
      00EB72 90 F5 F0         [24] 2345 	mov	dptr,#_bootloader_uart_errflashlock_1_162
      00EB75 75 F0 80         [24] 2346 	mov	b,#0x80
      00EB78 12 F4 C3         [24] 2347 	lcall	_uart0_writestr
                                   2348 ;	main.c:509: break;
      00EB7B 02 EA FE         [24] 2349 	ljmp	00151$
                                   2350 ;	main.c:511: case -3:
      00EB7E                       2351 00119$:
                                   2352 ;	main.c:512: uart0_writestr(uart_errflashvector);
      00EB7E 90 F6 03         [24] 2353 	mov	dptr,#_bootloader_uart_errflashvector_1_162
      00EB81 75 F0 80         [24] 2354 	mov	b,#0x80
      00EB84 12 F4 C3         [24] 2355 	lcall	_uart0_writestr
                                   2356 ;	main.c:513: break;
      00EB87 02 EA FE         [24] 2357 	ljmp	00151$
                                   2358 ;	main.c:515: case -4:
      00EB8A                       2359 00120$:
                                   2360 ;	main.c:516: uart0_writestr(uart_errflashvdd);
      00EB8A 90 F6 16         [24] 2361 	mov	dptr,#_bootloader_uart_errflashvdd_1_162
      00EB8D 75 F0 80         [24] 2362 	mov	b,#0x80
      00EB90 12 F4 C3         [24] 2363 	lcall	_uart0_writestr
                                   2364 ;	main.c:517: break;
      00EB93 02 EA FE         [24] 2365 	ljmp	00151$
                                   2366 ;	main.c:519: default:
      00EB96                       2367 00121$:
                                   2368 ;	main.c:520: uart0_writestr(uart_errflashtimeout);
      00EB96 90 F5 DC         [24] 2369 	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
      00EB99 75 F0 80         [24] 2370 	mov	b,#0x80
      00EB9C 12 F4 C3         [24] 2371 	lcall	_uart0_writestr
                                   2372 ;	main.c:523: break;
      00EB9F 02 EA FE         [24] 2373 	ljmp	00151$
                                   2374 ;	main.c:526: case 'Z':
      00EBA2                       2375 00123$:
                                   2376 ;	main.c:528: int8_t st = check_app_erased();
      00EBA2 12 E6 56         [24] 2377 	lcall	_check_app_erased
      00EBA5 AF 82            [24] 2378 	mov	r7,dpl
                                   2379 ;	main.c:529: uart0_wait_txfree(63);
      00EBA7 75 82 3F         [24] 2380 	mov	dpl,#0x3f
      00EBAA 12 F0 AC         [24] 2381 	lcall	_uart0_wait_txfree
                                   2382 ;	main.c:530: switch (st) {
      00EBAD BF FD 02         [24] 2383 	cjne	r7,#0xfd,00270$
      00EBB0 80 0F            [24] 2384 	sjmp	00125$
      00EBB2                       2385 00270$:
      00EBB2 BF 00 18         [24] 2386 	cjne	r7,#0x00,00126$
                                   2387 ;	main.c:532: uart0_writestr(uart_okflasherasecheck);
      00EBB5 90 F6 35         [24] 2388 	mov	dptr,#_bootloader_uart_okflasherasecheck_1_162
      00EBB8 75 F0 80         [24] 2389 	mov	b,#0x80
      00EBBB 12 F4 C3         [24] 2390 	lcall	_uart0_writestr
                                   2391 ;	main.c:533: break;
      00EBBE 02 EA FE         [24] 2392 	ljmp	00151$
                                   2393 ;	main.c:535: case -3:
      00EBC1                       2394 00125$:
                                   2395 ;	main.c:536: uart0_writestr(uart_errflashvector);
      00EBC1 90 F6 03         [24] 2396 	mov	dptr,#_bootloader_uart_errflashvector_1_162
      00EBC4 75 F0 80         [24] 2397 	mov	b,#0x80
      00EBC7 12 F4 C3         [24] 2398 	lcall	_uart0_writestr
                                   2399 ;	main.c:537: break;
      00EBCA 02 EA FE         [24] 2400 	ljmp	00151$
                                   2401 ;	main.c:539: default:
      00EBCD                       2402 00126$:
                                   2403 ;	main.c:540: uart0_writestr(uart_errflasherasecheck);
      00EBCD 90 F6 4C         [24] 2404 	mov	dptr,#_bootloader_uart_errflasherasecheck_1_162
      00EBD0 75 F0 80         [24] 2405 	mov	b,#0x80
      00EBD3 12 F4 C3         [24] 2406 	lcall	_uart0_writestr
                                   2407 ;	main.c:543: break;
      00EBD6 02 EA FE         [24] 2408 	ljmp	00151$
                                   2409 ;	main.c:546: case 'R':
      00EBD9                       2410 00128$:
                                   2411 ;	main.c:548: uart0_wait_txfree(63);
      00EBD9 75 82 3F         [24] 2412 	mov	dpl,#0x3f
      00EBDC 12 F0 AC         [24] 2413 	lcall	_uart0_wait_txfree
                                   2414 ;	main.c:549: if (jmp_vector == 0xFFFF) {
      00EBDF 90 E3 FE         [24] 2415 	mov	dptr,#_jmp_vector
      00EBE2 E4               [12] 2416 	clr	a
      00EBE3 93               [24] 2417 	movc	a,@a+dptr
      00EBE4 FE               [12] 2418 	mov	r6,a
      00EBE5 74 01            [12] 2419 	mov	a,#0x01
      00EBE7 93               [24] 2420 	movc	a,@a+dptr
      00EBE8 FF               [12] 2421 	mov	r7,a
      00EBE9 BE FF 0F         [24] 2422 	cjne	r6,#0xff,00130$
      00EBEC BF FF 0C         [24] 2423 	cjne	r7,#0xff,00130$
                                   2424 ;	main.c:550: uart0_writestr(uart_errrunapp);
      00EBEF 90 F6 7C         [24] 2425 	mov	dptr,#_bootloader_uart_errrunapp_1_162
      00EBF2 75 F0 80         [24] 2426 	mov	b,#0x80
      00EBF5 12 F4 C3         [24] 2427 	lcall	_uart0_writestr
                                   2428 ;	main.c:551: break;
      00EBF8 02 EA FE         [24] 2429 	ljmp	00151$
      00EBFB                       2430 00130$:
                                   2431 ;	main.c:553: uart0_writestr(uart_okrunapp);
      00EBFB 90 F6 63         [24] 2432 	mov	dptr,#_bootloader_uart_okrunapp_1_162
      00EBFE 75 F0 80         [24] 2433 	mov	b,#0x80
      00EC01 12 F4 C3         [24] 2434 	lcall	_uart0_writestr
                                   2435 ;	main.c:554: uart0_wait_txfree(63);
      00EC04 75 82 3F         [24] 2436 	mov	dpl,#0x3f
      00EC07 12 F0 AC         [24] 2437 	lcall	_uart0_wait_txfree
                                   2438 ;	main.c:556: while (0x44 & (uint8_t)~U0STATUS);
      00EC0A                       2439 00131$:
      00EC0A E5 E5            [12] 2440 	mov	a,_U0STATUS
      00EC0C F4               [12] 2441 	cpl	a
      00EC0D FF               [12] 2442 	mov	r7,a
      00EC0E 54 44            [12] 2443 	anl	a,#0x44
      00EC10 60 02            [24] 2444 	jz	00276$
      00EC12 80 F6            [24] 2445 	sjmp	00131$
      00EC14                       2446 00276$:
                                   2447 ;	main.c:557: run_application();
      00EC14 12 E4 48         [24] 2448 	lcall	_run_application
                                   2449 ;	main.c:558: break;
      00EC17 02 EA FE         [24] 2450 	ljmp	00151$
                                   2451 ;	main.c:561: case ':':
      00EC1A                       2452 00134$:
                                   2453 ;	main.c:563: int8_t st = parse_ihex();
      00EC1A 12 E9 00         [24] 2454 	lcall	_parse_ihex
                                   2455 ;	main.c:564: if (!st)
      00EC1D E5 82            [12] 2456 	mov	a,dpl
      00EC1F FF               [12] 2457 	mov	r7,a
      00EC20 70 03            [24] 2458 	jnz	00277$
      00EC22 02 EA FE         [24] 2459 	ljmp	00151$
      00EC25                       2460 00277$:
                                   2461 ;	main.c:566: uart0_wait_txfree(63);
      00EC25 75 82 3F         [24] 2462 	mov	dpl,#0x3f
      00EC28 12 F0 AC         [24] 2463 	lcall	_uart0_wait_txfree
                                   2464 ;	main.c:567: switch (st) {
      00EC2B BF F9 02         [24] 2465 	cjne	r7,#0xf9,00278$
      00EC2E 80 53            [24] 2466 	sjmp	00142$
      00EC30                       2467 00278$:
      00EC30 BF FA 02         [24] 2468 	cjne	r7,#0xfa,00279$
      00EC33 80 42            [24] 2469 	sjmp	00141$
      00EC35                       2470 00279$:
      00EC35 BF FB 02         [24] 2471 	cjne	r7,#0xfb,00280$
      00EC38 80 31            [24] 2472 	sjmp	00140$
      00EC3A                       2473 00280$:
      00EC3A BF FC 02         [24] 2474 	cjne	r7,#0xfc,00281$
      00EC3D 80 20            [24] 2475 	sjmp	00139$
      00EC3F                       2476 00281$:
      00EC3F BF FD 02         [24] 2477 	cjne	r7,#0xfd,00282$
      00EC42 80 0F            [24] 2478 	sjmp	00138$
      00EC44                       2479 00282$:
      00EC44 BF FE 48         [24] 2480 	cjne	r7,#0xfe,00143$
                                   2481 ;	main.c:569: uart0_writestr(uart_errflashlock);
      00EC47 90 F5 F0         [24] 2482 	mov	dptr,#_bootloader_uart_errflashlock_1_162
      00EC4A 75 F0 80         [24] 2483 	mov	b,#0x80
      00EC4D 12 F4 C3         [24] 2484 	lcall	_uart0_writestr
                                   2485 ;	main.c:570: break;
      00EC50 02 EA FE         [24] 2486 	ljmp	00151$
                                   2487 ;	main.c:572: case -3:
      00EC53                       2488 00138$:
                                   2489 ;	main.c:573: uart0_writestr(uart_errhexinvalidchar);
      00EC53 90 F6 91         [24] 2490 	mov	dptr,#_bootloader_uart_errhexinvalidchar_1_162
      00EC56 75 F0 80         [24] 2491 	mov	b,#0x80
      00EC59 12 F4 C3         [24] 2492 	lcall	_uart0_writestr
                                   2493 ;	main.c:574: break;
      00EC5C 02 EA FE         [24] 2494 	ljmp	00151$
                                   2495 ;	main.c:576: case -4:
      00EC5F                       2496 00139$:
                                   2497 ;	main.c:577: uart0_writestr(uart_errhexchksum);
      00EC5F 90 F6 AD         [24] 2498 	mov	dptr,#_bootloader_uart_errhexchksum_1_162
      00EC62 75 F0 80         [24] 2499 	mov	b,#0x80
      00EC65 12 F4 C3         [24] 2500 	lcall	_uart0_writestr
                                   2501 ;	main.c:578: break;
      00EC68 02 EA FE         [24] 2502 	ljmp	00151$
                                   2503 ;	main.c:580: case -5:
      00EC6B                       2504 00140$:
                                   2505 ;	main.c:581: uart0_writestr(uart_errhexrectype);
      00EC6B 90 F6 C6         [24] 2506 	mov	dptr,#_bootloader_uart_errhexrectype_1_162
      00EC6E 75 F0 80         [24] 2507 	mov	b,#0x80
      00EC71 12 F4 C3         [24] 2508 	lcall	_uart0_writestr
                                   2509 ;	main.c:582: break;
      00EC74 02 EA FE         [24] 2510 	ljmp	00151$
                                   2511 ;	main.c:584: case -6:
      00EC77                       2512 00141$:
                                   2513 ;	main.c:585: uart0_writestr(uart_errhexflashwrite);
      00EC77 90 F6 E8         [24] 2514 	mov	dptr,#_bootloader_uart_errhexflashwrite_1_162
      00EC7A 75 F0 80         [24] 2515 	mov	b,#0x80
      00EC7D 12 F4 C3         [24] 2516 	lcall	_uart0_writestr
                                   2517 ;	main.c:586: break;
      00EC80 02 EA FE         [24] 2518 	ljmp	00151$
                                   2519 ;	main.c:588: case -7:
      00EC83                       2520 00142$:
                                   2521 ;	main.c:589: uart0_writestr(uart_errhexgarbagechar);
      00EC83 90 F7 00         [24] 2522 	mov	dptr,#_bootloader_uart_errhexgarbagechar_1_162
      00EC86 75 F0 80         [24] 2523 	mov	b,#0x80
      00EC89 12 F4 C3         [24] 2524 	lcall	_uart0_writestr
                                   2525 ;	main.c:590: break;
      00EC8C 02 EA FE         [24] 2526 	ljmp	00151$
                                   2527 ;	main.c:592: default:
      00EC8F                       2528 00143$:
                                   2529 ;	main.c:593: uart0_writestr(uart_errflashtimeout);
      00EC8F 90 F5 DC         [24] 2530 	mov	dptr,#_bootloader_uart_errflashtimeout_1_162
      00EC92 75 F0 80         [24] 2531 	mov	b,#0x80
      00EC95 12 F4 C3         [24] 2532 	lcall	_uart0_writestr
                                   2533 ;	main.c:596: break;
      00EC98 02 EA FE         [24] 2534 	ljmp	00151$
                                   2535 ;	main.c:599: case 'V':
      00EC9B                       2536 00145$:
                                   2537 ;	main.c:601: uint16_t vdd = measurevdd();
      00EC9B 12 E4 AF         [24] 2538 	lcall	_measurevdd
      00EC9E AE 82            [24] 2539 	mov	r6,dpl
      00ECA0 AF 83            [24] 2540 	mov	r7,dph
                                   2541 ;	main.c:602: uart0_wait_txfree(63);
      00ECA2 75 82 3F         [24] 2542 	mov	dpl,#0x3f
      00ECA5 12 F0 AC         [24] 2543 	lcall	_uart0_wait_txfree
                                   2544 ;	main.c:603: uart0_writestr(uart_vdd1);
      00ECA8 90 F7 21         [24] 2545 	mov	dptr,#_bootloader_uart_vdd1_1_162
      00ECAB 75 F0 80         [24] 2546 	mov	b,#0x80
      00ECAE C0 07            [24] 2547 	push	ar7
      00ECB0 C0 06            [24] 2548 	push	ar6
      00ECB2 12 F4 C3         [24] 2549 	lcall	_uart0_writestr
      00ECB5 D0 06            [24] 2550 	pop	ar6
      00ECB7 D0 07            [24] 2551 	pop	ar7
                                   2552 ;	main.c:604: uart0_writenum16(vdd >> 8, 1, 0);
      00ECB9 8F 82            [24] 2553 	mov	dpl,r7
      00ECBB 75 83 00         [24] 2554 	mov	dph,#0x00
      00ECBE C0 07            [24] 2555 	push	ar7
      00ECC0 C0 06            [24] 2556 	push	ar6
      00ECC2 E4               [12] 2557 	clr	a
      00ECC3 C0 E0            [24] 2558 	push	acc
      00ECC5 04               [12] 2559 	inc	a
      00ECC6 C0 E0            [24] 2560 	push	acc
      00ECC8 12 EF B6         [24] 2561 	lcall	_uart0_writenum16
      00ECCB 15 81            [12] 2562 	dec	sp
      00ECCD 15 81            [12] 2563 	dec	sp
      00ECCF D0 06            [24] 2564 	pop	ar6
      00ECD1 D0 07            [24] 2565 	pop	ar7
                                   2566 ;	main.c:605: uart0_tx('.');
      00ECD3 75 82 2E         [24] 2567 	mov	dpl,#0x2e
      00ECD6 12 F1 09         [24] 2568 	lcall	_uart0_tx
                                   2569 ;	main.c:606: vdd &= 0xff;
      00ECD9 7F 00            [12] 2570 	mov	r7,#0x00
                                   2571 ;	main.c:607: vdd *= 100;
      00ECDB 8E 10            [24] 2572 	mov	__mulint_PARM_2,r6
      00ECDD 8F 11            [24] 2573 	mov	(__mulint_PARM_2 + 1),r7
      00ECDF 90 00 64         [24] 2574 	mov	dptr,#0x0064
      00ECE2 12 F2 3A         [24] 2575 	lcall	__mulint
      00ECE5 AF 83            [24] 2576 	mov	r7,dph
                                   2577 ;	main.c:608: uart0_writenum16(vdd >> 8, 2, WRNUM_PADZERO);
      00ECE7 8F 82            [24] 2578 	mov	dpl,r7
      00ECE9 75 83 00         [24] 2579 	mov	dph,#0x00
      00ECEC 74 08            [12] 2580 	mov	a,#0x08
      00ECEE C0 E0            [24] 2581 	push	acc
      00ECF0 74 02            [12] 2582 	mov	a,#0x02
      00ECF2 C0 E0            [24] 2583 	push	acc
      00ECF4 12 EF B6         [24] 2584 	lcall	_uart0_writenum16
      00ECF7 15 81            [12] 2585 	dec	sp
      00ECF9 15 81            [12] 2586 	dec	sp
                                   2587 ;	main.c:609: uart0_writestr(uart_vdd2);
      00ECFB 90 F7 26         [24] 2588 	mov	dptr,#_bootloader_uart_vdd2_1_162
      00ECFE 75 F0 80         [24] 2589 	mov	b,#0x80
      00ED01 12 F4 C3         [24] 2590 	lcall	_uart0_writestr
                                   2591 ;	main.c:610: break;
      00ED04 02 EA FE         [24] 2592 	ljmp	00151$
                                   2593 ;	main.c:613: default:
      00ED07                       2594 00146$:
                                   2595 ;	main.c:615: uart0_rxadvance(uart0_rxcount());
      00ED07 12 FB 60         [24] 2596 	lcall	_uart0_rxcount
      00ED0A 12 FA A9         [24] 2597 	lcall	_uart0_rxadvance
                                   2598 ;	main.c:616: uart0_wait_txfree(63);
      00ED0D 75 82 3F         [24] 2599 	mov	dpl,#0x3f
      00ED10 12 F0 AC         [24] 2600 	lcall	_uart0_wait_txfree
                                   2601 ;	main.c:617: uart0_writestr(uart_errunknowncmd);
      00ED13 90 F5 C6         [24] 2602 	mov	dptr,#_bootloader_uart_errunknowncmd_1_162
      00ED16 75 F0 80         [24] 2603 	mov	b,#0x80
      00ED19 12 F4 C3         [24] 2604 	lcall	_uart0_writestr
                                   2605 ;	main.c:619: }
      00ED1C 02 EA FE         [24] 2606 	ljmp	00151$
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area CONST   (CODE)
                           00E3FE  2609 _jmp_vector	=	0xe3fe
      00F5A0                       2610 _write_banner_uart_banner_1_158:
      00F5A0 41 58 38 30 35 32 20  2611 	.ascii "AX8052 Bootloader V1.1 Checksum 0x"
             42 6F 6F 74 6C 6F 61
             64 65 72 20 56 31 2E
             31 20 43 68 65 63 6B
             73 75 6D 20 30 78
      00F5C2 00                    2612 	.db 0x00
      00F5C3                       2613 _write_banner_uart_crlf_1_158:
      00F5C3 0D                    2614 	.db 0x0d
      00F5C4 0A                    2615 	.db 0x0a
      00F5C5 00                    2616 	.db 0x00
      00F5C6                       2617 _bootloader_uart_errunknowncmd_1_162:
      00F5C6 45 52 52 2D 55 6E 6B  2618 	.ascii "ERR-Unknown Command"
             6E 6F 77 6E 20 43 6F
             6D 6D 61 6E 64
      00F5D9 0D                    2619 	.db 0x0d
      00F5DA 0A                    2620 	.db 0x0a
      00F5DB 00                    2621 	.db 0x00
      00F5DC                       2622 _bootloader_uart_errflashtimeout_1_162:
      00F5DC 45 52 52 2D 46 4C 41  2623 	.ascii "ERR-FLASH Timeout"
             53 48 20 54 69 6D 65
             6F 75 74
      00F5ED 0D                    2624 	.db 0x0d
      00F5EE 0A                    2625 	.db 0x0a
      00F5EF 00                    2626 	.db 0x00
      00F5F0                       2627 _bootloader_uart_errflashlock_1_162:
      00F5F0 45 52 52 2D 46 4C 41  2628 	.ascii "ERR-FLASH Locked"
             53 48 20 4C 6F 63 6B
             65 64
      00F600 0D                    2629 	.db 0x0d
      00F601 0A                    2630 	.db 0x0a
      00F602 00                    2631 	.db 0x00
      00F603                       2632 _bootloader_uart_errflashvector_1_162:
      00F603 45 52 52 2D 46 4C 41  2633 	.ascii "ERR-FLASH Vector"
             53 48 20 56 65 63 74
             6F 72
      00F613 0D                    2634 	.db 0x0d
      00F614 0A                    2635 	.db 0x0a
      00F615 00                    2636 	.db 0x00
      00F616                       2637 _bootloader_uart_errflashvdd_1_162:
      00F616 45 52 52 2D 56 44 44  2638 	.ascii "ERR-VDD low"
             20 6C 6F 77
      00F621 0D                    2639 	.db 0x0d
      00F622 0A                    2640 	.db 0x0a
      00F623 00                    2641 	.db 0x00
      00F624                       2642 _bootloader_uart_okflasherase_1_162:
      00F624 4F 4B 2D 46 4C 41 53  2643 	.ascii "OK-FLASH Erase"
             48 20 45 72 61 73 65
      00F632 0D                    2644 	.db 0x0d
      00F633 0A                    2645 	.db 0x0a
      00F634 00                    2646 	.db 0x00
      00F635                       2647 _bootloader_uart_okflasherasecheck_1_162:
      00F635 4F 4B 2D 46 4C 41 53  2648 	.ascii "OK-FLASH Erase Check"
             48 20 45 72 61 73 65
             20 43 68 65 63 6B
      00F649 0D                    2649 	.db 0x0d
      00F64A 0A                    2650 	.db 0x0a
      00F64B 00                    2651 	.db 0x00
      00F64C                       2652 _bootloader_uart_errflasherasecheck_1_162:
      00F64C 45 52 52 2D 46 4C 41  2653 	.ascii "ERR-FLASH not Erased"
             53 48 20 6E 6F 74 20
             45 72 61 73 65 64
      00F660 0D                    2654 	.db 0x0d
      00F661 0A                    2655 	.db 0x0a
      00F662 00                    2656 	.db 0x00
      00F663                       2657 _bootloader_uart_okrunapp_1_162:
      00F663 4F 4B 2D 52 75 6E 6E  2658 	.ascii "OK-Running Application"
             69 6E 67 20 41 70 70
             6C 69 63 61 74 69 6F
             6E
      00F679 0D                    2659 	.db 0x0d
      00F67A 0A                    2660 	.db 0x0a
      00F67B 00                    2661 	.db 0x00
      00F67C                       2662 _bootloader_uart_errrunapp_1_162:
      00F67C 45 52 52 2D 6E 6F 20  2663 	.ascii "ERR-no Application"
             41 70 70 6C 69 63 61
             74 69 6F 6E
      00F68E 0D                    2664 	.db 0x0d
      00F68F 0A                    2665 	.db 0x0a
      00F690 00                    2666 	.db 0x00
      00F691                       2667 _bootloader_uart_errhexinvalidchar_1_162:
      00F691 45 52 52 2D 49 6E 76  2668 	.ascii "ERR-Invalid Hex Character"
             61 6C 69 64 20 48 65
             78 20 43 68 61 72 61
             63 74 65 72
      00F6AA 0D                    2669 	.db 0x0d
      00F6AB 0A                    2670 	.db 0x0a
      00F6AC 00                    2671 	.db 0x00
      00F6AD                       2672 _bootloader_uart_errhexchksum_1_162:
      00F6AD 45 52 52 2D 48 65 78  2673 	.ascii "ERR-Hex Checksum Error"
             20 43 68 65 63 6B 73
             75 6D 20 45 72 72 6F
             72
      00F6C3 0D                    2674 	.db 0x0d
      00F6C4 0A                    2675 	.db 0x0a
      00F6C5 00                    2676 	.db 0x00
      00F6C6                       2677 _bootloader_uart_errhexrectype_1_162:
      00F6C6 45 52 52 2D 55 6E 6B  2678 	.ascii "ERR-Unknown Record Type ignored"
             6E 6F 77 6E 20 52 65
             63 6F 72 64 20 54 79
             70 65 20 69 67 6E 6F
             72 65 64
      00F6E5 0D                    2679 	.db 0x0d
      00F6E6 0A                    2680 	.db 0x0a
      00F6E7 00                    2681 	.db 0x00
      00F6E8                       2682 _bootloader_uart_errhexflashwrite_1_162:
      00F6E8 45 52 52 2D 46 4C 41  2683 	.ascii "ERR-FLASH write error"
             53 48 20 77 72 69 74
             65 20 65 72 72 6F 72
      00F6FD 0D                    2684 	.db 0x0d
      00F6FE 0A                    2685 	.db 0x0a
      00F6FF 00                    2686 	.db 0x00
      00F700                       2687 _bootloader_uart_errhexgarbagechar_1_162:
      00F700 45 52 52 2D 47 61 72  2688 	.ascii "ERR-Garbage Characters ignored"
             62 61 67 65 20 43 68
             61 72 61 63 74 65 72
             73 20 69 67 6E 6F 72
             65 64
      00F71E 0D                    2689 	.db 0x0d
      00F71F 0A                    2690 	.db 0x0a
      00F720 00                    2691 	.db 0x00
      00F721                       2692 _bootloader_uart_vdd1_1_162:
      00F721 56 44 44 20           2693 	.ascii "VDD "
      00F725 00                    2694 	.db 0x00
      00F726                       2695 _bootloader_uart_vdd2_1_162:
      00F726 56                    2696 	.ascii "V"
      00F727 0D                    2697 	.db 0x0d
      00F728 0A                    2698 	.db 0x0a
      00F729 00                    2699 	.db 0x00
                                   2700 	.area XINIT   (CODE)
                                   2701 	.area CABS    (ABS,CODE)
