# SES-Imagotag 2.6/2.2 BWR UU340 hacking
Reverse engineering and tooling for the Axsem AX8052 based UU340 variant of the SES-ImagoTag Vusion 2.6BWR

![Board overview](./images/Board-Overview.png)
## Chips used

- U1 - [AX8052F143 - MCU + radio - 8051](./docs/axsem-ax8052-datasheet.PDF)
- U2 - [FM11NT081DS - NFC](./docs/FM11NT0X1D_ps_eng.pdf)
- CN1 
    - [GDEW026Z39 - 2.6" EPD display](./docs/GDEW026Z39.pdf)
    - or [GDEW0213Z16 - 2.13" EPD display](./docs/GDEW0213Z16.pdf)
- both displays use [IL0373](./docs/IL0373.pdf) driver
- U3 - [{suspected} 1Mbit FLASH]

## Additional documentation

- [Axsem Serial bootloader](./docs/axsem-serial-bootloader.PDF)

## AX8052F143 connections

I'll create a markdown table with all the pin connections organized according to your requested headers.

| MCU Pin | Device/Bus | Signal name | Description |
|---------|------------|-------------|-------------|
| PA0 | E-Ink | D/C | Data/Command signal |
| PA1 | SPI | CS | E-Ink chip select |
| PA2 |  | - | Connected to Transistor U5 |
| PA3 |  | P | Crystal Oscillator positive terminal |
| PA4 |  | N | Crystal Oscillator negative terminal |
| PA5 |  | - | Connected to Transistor U4 |
| PB0 | LED | - | White LED control |
| PB1 | SPI | CS | NFC chip select |
| PB2 | E-Ink | BUSY | E-Ink busy status signal |
| PB3 | BOOT/NFC | FD | Bootloader and NFC Field Detection |
| PB4 | UART | TX | UART transmit |
| PB5 | UART/E-Ink | RX/RST | UART receive and E-Ink reset |
| PB6 | LED | - | Green LED channel |
| PB7 | LED | - | Blue LED channel |
| PC0 | SPI | CS | FLASH chip select |
| PC1 | SPI | SCLK | SPI clock |
| PC2 | SPI | MOSI | SPI master out slave in |
| PC3 | SPI | MISO | SPI master in slave out |
| PC4 | LED | - | Red LED channel |



