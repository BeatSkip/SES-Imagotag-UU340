;--------------------------------------------------------------------------
;  crtstart.asm - C run-time: startup
;
;  Copyright (C) 2004, Erik Petrich
;
;  This library is free software; you can redistribute it and/or modify it
;  under the terms of the GNU General Public License as published by the
;  Free Software Foundation; either version 2.1, or (at your option) any
;  later version.
;
;  This library is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License
;  along with this library; see the file COPYING. If not, write to the
;  Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
;   MA 02110-1301, USA.
;
;  As a special exception, if you link this library with other files,
;  some of which are compiled with SDCC, to produce an executable,
;  this library does not by itself cause the resulting executable to
;  be covered by the GNU General Public License. This exception does
;  not however invalidate any other reasons why the executable file
;  might be covered by the GNU General Public License.
;--------------------------------------------------------------------------

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
	.area CONST   (CODE)
    .area UART0S0 (CODE)
    .area UART0S1 (CODE)
    .area UART0S2 (CODE)
    .area UART0S3 (CODE)
    .area UART0S4 (CODE)
    .area UART0S5 (CODE)
    .area WTCANSLP0 (CODE)
    .area WTCANSLP1 (CODE)
    .area WTCANSLP2 (CODE)
    .area WTSTDBY0 (CODE)
    .area WTSTDBY1 (CODE)
    .area WTSTDBY2 (CODE)

 	.area VECTOR  (CODE)
	.globl __interrupt_vect
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup

	.globl __sdcc_gsinit_startup
	.globl __start__stack

	.area GSINIT0 (CODE)

	nop
__sdcc_gsinit_startup::
	mov	sp,#__start__stack - 1

	.area GSINIT2 (CODE)

	lcall	__sdcc_external_startup
	mov	a,dpl
	jz	__sdcc_init_data
	ljmp	__sdcc_program_startup
__sdcc_init_data:

	.area GSFINAL (CODE)
__sdcc_program_startup:
	ljmp	_bootloader

	.area	SSEG	(DATA)
__start__stack:
	.ds	1
