                                      1 ;--------------------------------------------------------------------------
                                      2 ;  crtstart.asm - C run-time: startup
                                      3 ;
                                      4 ;  Copyright (C) 2004, Erik Petrich
                                      5 ;
                                      6 ;  This library is free software; you can redistribute it and/or modify it
                                      7 ;  under the terms of the GNU General Public License as published by the
                                      8 ;  Free Software Foundation; either version 2.1, or (at your option) any
                                      9 ;  later version.
                                     10 ;
                                     11 ;  This library is distributed in the hope that it will be useful,
                                     12 ;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                                     13 ;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
                                     14 ;  GNU General Public License for more details.
                                     15 ;
                                     16 ;  You should have received a copy of the GNU General Public License
                                     17 ;  along with this library; see the file COPYING. If not, write to the
                                     18 ;  Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
                                     19 ;   MA 02110-1301, USA.
                                     20 ;
                                     21 ;  As a special exception, if you link this library with other files,
                                     22 ;  some of which are compiled with SDCC, to produce an executable,
                                     23 ;  this library does not by itself cause the resulting executable to
                                     24 ;  be covered by the GNU General Public License. This exception does
                                     25 ;  not however invalidate any other reasons why the executable file
                                     26 ;  might be covered by the GNU General Public License.
                                     27 ;--------------------------------------------------------------------------
                                     28 
                                     29 	.area HOME    (CODE)
                                     30 	.area GSINIT0 (CODE)
                                     31 	.area GSINIT1 (CODE)
                                     32 	.area GSINIT2 (CODE)
                                     33 	.area GSINIT3 (CODE)
                                     34 	.area GSINIT4 (CODE)
                                     35 	.area GSINIT5 (CODE)
                                     36 	.area GSINIT  (CODE)
                                     37 	.area GSFINAL (CODE)
                                     38 	.area CSEG    (CODE)
                                     39 	.area CONST   (CODE)
                                     40     .area UART0S0 (CODE)
                                     41     .area UART0S1 (CODE)
                                     42     .area UART0S2 (CODE)
                                     43     .area UART0S3 (CODE)
                                     44     .area UART0S4 (CODE)
                                     45     .area UART0S5 (CODE)
                                     46     .area WTCANSLP0 (CODE)
                                     47     .area WTCANSLP1 (CODE)
                                     48     .area WTCANSLP2 (CODE)
                                     49     .area WTSTDBY0 (CODE)
                                     50     .area WTSTDBY1 (CODE)
                                     51     .area WTSTDBY2 (CODE)
                                     52 
                                     53  	.area VECTOR  (CODE)
                                     54 	.globl __interrupt_vect
      000000                         55 __interrupt_vect:
      000000 02 E4 38         [24]   56 	ljmp	__sdcc_gsinit_startup
                                     57 
                                     58 	.globl __sdcc_gsinit_startup
                                     59 	.globl __start__stack
                                     60 
                                     61 	.area GSINIT0 (CODE)
                                     62 
      00E437 00               [12]   63 	nop
      00E438                         64 __sdcc_gsinit_startup::
      00E438 75 81 20         [24]   65 	mov	sp,#__start__stack - 1
                                     66 
                                     67 	.area GSINIT2 (CODE)
                                     68 
      00E43B 12 EA 0D         [24]   69 	lcall	__sdcc_external_startup
      00E43E E5 82            [12]   70 	mov	a,dpl
      00E440 60 03            [24]   71 	jz	__sdcc_init_data
      00E442 02 E4 45         [24]   72 	ljmp	__sdcc_program_startup
      00E445                         73 __sdcc_init_data:
                                     74 
                                     75 	.area GSFINAL (CODE)
      00E445                         76 __sdcc_program_startup:
      00E445 02 EA 41         [24]   77 	ljmp	_bootloader
                                     78 
                                     79 	.area	SSEG	(DATA)
      000021                         80 __start__stack:
      000021                         81 	.ds	1
