# SES-Imagotag 2.6/2.2 BWR UU340 hacking
Reverse engineering and tooling for the Axsem AX8052 based UU340 variant of the SES-ImagoTag Vusion 2.6BWR

![Board overview](./images/Board-Overview.png)
## Chips used

- U1 [AX8052F143 - MCU + radio - 8051](./docs/axsem-ax8052-datasheet.PDF)
- U2 [FM11NT081 - NFC](./docs/FM11NT0X1D_ps_eng.pdf)
- CN1 [GDEW026Z39 - 2.6" EPD display](./docs/GDEW026Z39.pdf)
- CN1 or [GDEW0213Z16 - 2.13" EPD display](./docs/GDEW0213Z16.pdf)
- both displays use [IL0373](./docs/IL0373.pdf) driver
- U3 [{suspected} 1Mbit FLASH]

## Additional documentation

- [Axsem Serial bootloader](./docs/axsem-serial-bootloader.PDF)

## AX8052F143 connections [UNDER CONSTRUCTION]

### Port A 
- PA:0 - 
- PA:1 - 
- PA:2 - 
- PA:3 - 
- PA:4 - 
- PA:5 - 
- PA:6 - 
- PA:7 - 

### Port B
- PB:0 - White LED
- PB:1 - SPI CS (NFC)
- PB:2 - SPI CS (EINK)
- PB:3 - Bootloader trigger
- PB:4 - UART
- PB:5 - UART
- PB:6 - Green LED
- PB:7 - Blue LED

### Port C
- PC:0 - SPI CS (FLASH)
- PC:1 - SPI SCLK
- PC:2 - SPI MOSI
- PC:3 - SPI MISO
- PC:4 - Red LED


