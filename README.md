# A 4-week Research Internship on VSDSquadron Mini RISC-V Dev Board

[Click here for board link](https://www.vlsisystemdesign.com/vsdsquadronmini/)




![VSd_Board](image1.png)

BOARD SPECIFICATIONS:

| Tech specs   |   |    |
|------------|------------|------------|
| **Board** | Name     | VSDSquadron Mini    |
|      | SKU    | VSDSQM    |
| **Microcontroller**    | CH32V003F4U6 chip with 32-bit RISC-V core based on RV32EC instruction set    |     |
| **USB connector** | USB 2.0 Type-C    |     |
| **Pins**     | Built-in LED Pin     | 1X onboard user led (PD6)     |
|      | Digital I/O pins     | 15     |
|      | Analog I/O pins     | 10-bit ADC, PD0-PD7, PA1, PA2, PC4     |
|      | PWM pins     | 14X     |
|      | External interrupts     | 	8 external interrupt edge detectors, but it only maps one external interrupt to 18 I/O ports     |
| **Communication**     | USART     | 	1x, PD6(RX), PD5(TX)     |
|      | I2C     | 1x, PC1(SDA), PC2(SCL)    |
|      | SPI     | 1x, PC5(SCK), PC1(NSS), PC6(MOSI), PC7(MISO)     |
|      | Programmer/debugger     | Onboard RISC-V programmer/debugger, USB to TTL serial port support     |
| **Power**     | I/O voltage     | 3.3 V    |
|      | Input voltage (nominal)     | 5 V    |
|      | Source Current per I/O Pin    | 8 mA     |
|      | Sink Current per I/O Pin     | 8 mA     |
| **Clock speed**     | Processor    | 24 MHz     |
| **Memory**     | SRAM     | 2kb onchip volatile sram,16kb external program memory     |
   

This repo is intended to document the weekly progress.

### The first online meet was held on 16th of Feb 2024 @6PM

<details>
    <summary> TASK 1 </summary>
 
1) install Yosys 

2) install iverilog 

3) install gtkwave

### CLONING RISC-V GNU TOOLCHAIN

## To install git 
```sudo apt install git-all```   

 *make sure to install the dependencies*
![git_all](i1-1.jpg)



### INSTALLING YOSYS, IVERILOG & GTKWAVE.

### 1.YOSYS


```git clone https://github.com/YosysHQ/yosys.git```
![git_clone](a1.jpg)
```cd yosys``` 

```sudo apt install make```
![sudo_apt](a2.jpg)
```sudo apt-get install build-essential clang bison flex \libreadline-dev gawk tcl-dev libffi-dev git \ graphviz xdot pkg-config python3 libboost-system-dev\libboost-python-dev libboost-filesystem-dev zlib1g-dev```

```make config-gcc```

```make``` 

```sudo make install```
![make_install](a3.jpg)


### 2.iVerilog
*installing iVerilog*

```sudo apt update```

```sudo apt-get install iverilog```
![iVerilog](a4.jpg)

### 3.GTkWave
*installing GTkWave*

``` sudo apt-get install gtkwave ```

![gtkwave](a5.jpg)
</details>

### The Second online meet was held on 20th of Feb 2024 @6PM

<details>
    <summary> TASK 2 </summary>

### To identify Input ports, input waveforms, output ports and output waveforms of the design.

### *Column of I/O Elements:*

| Sl.No   | Name of the Pin  | Direction  | Width | Description |
|------------|------------|------------|--------|-----|
| 1. | Product_Out     | Output     |1|Product|
| 2.     | Coin_In    | Input     | 2 |  Only three Coins |
|      |     |      |  | 1=2'b01|
|      |     |      |  | 2=2'b10|
|      |     |      |  | 5=2'b11|
| 3.     | Clk     | Input     | 1 | Clock Signal|
| 4.     | Coin_Out   | Output     | 2 |  Only three Coins |
|      |     |      |  | 1=2'b01|
|      |     |      |  | 2=2'b10|
|      |     |      |  | 5=2'b11|
| 5.     | Rst    | Input     | 1 | Reset Signal|
| 6.     | En    | Input     | 1 | Enable Signal|



###  *Block Diagram of Vending Machine:*

![vending machine block diagram](<vending machine block diagram.jpg>)

</details>    