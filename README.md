# SES-Imagotag 2.6/2.2 BWR UU340 hacking
Reverse engineering and tooling for the Axsem AX8052 based UU340 variant of the SES-ImagoTag Vusion 2.6BWR

![Board overview](./images/Board-Overview.png)
## Chips used

- [AX8052F143 - MCU + radio - 8051](./docs/axsem-ax8052-datasheet.PDF)
- [FM11NT081 - NFC](../../raw/master/doc/NT3H2111_2211.pdf)
- [GDEW026Z39 - 2.6" EPD display](./docs/GDEW026Z39.pdf)
- or [GDEW0213Z16 - 2.13" EPD display](./docs/GDEW0213Z16.pdf)
- both displays use [IL0373](./docs/IL0373.pdf) driver
- [{suspected} 1Mbit FLASH]

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
- PB:1 - 
- PB:2 - 
- PB:3 - 
- PB:4 - 
- PB:5 - 
- PB:6 - Green LED
- PB:7 - Blue LED

### Port C
- PC:0 - 
- PC:1 - 
- PC:2 - 
- PC:3 - SPI Miso
- PC:4 - Red LED
- PC:5 - 
- PC:6 - 
- PC:7 - 

### Port 1
- P1:0 - NFC VCC (seems to power NFC chip and SPI flash)
- P1:1 - NFC FD (field detection)
- P1:2 - EPD DC (data/command select for display)
- P1:3 - EPD BUSY (detect if display busy)
- P1:4 - SPI flash CS 
- P1:5 - SPI flash CLK
- P1:6 - SPI flahs MOSI
- P1:7 - SPI flahs MISO

### Port 2
- P2:0 - EPD Reset (display reset)
- P2:1 - debug data and white LED
- P2:2 - debug clock and LED boost chip enable (TPS61071)