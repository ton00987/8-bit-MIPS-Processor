# 8-bit-MIPS-Processor
This project reduce 32-bit MIPS processor to 8-bit MIPS processor and cut off some components.
It is developed by VHDL langauge in Quartus II 13.1 web edition.

## Instruction Set
R-type of 8-bit-MIPS-Processor
| op    | rs    | rt    | rd    |
| :--:  | :--:  | :--:  | :--:  |
| 2 bit | 2 bit | 2 bit | 2 bit |

I-type of 8-bit-MIPS-Processor
| op    | rs    | rt    | const |
| :--:  | :--:  | :--:  | :--:  |
| 2 bit | 2 bit | 2 bit | 2 bit |

### Program counter (PC)
It use for count sequence of instruction.
![PC](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/ALU.JPG)

### Intruction memory
Store instruction and send it to Registers, Control and Sign-extend.
![Instruction memory](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Instruction_mem.JPG)

### Registers
Read data and send it to ALU. It use for write data that getting back from ALU too.
![Registers](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Registers.JPG)

### Arithmetic Logic Unit (ALU)
Do an arithmetic and send value to Registers.
![ALU](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/ALU.JPG)

### Control Unit
Control operation of both MUX.
![Control](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Control.JPG)

### MUX 2-bit
Select address of Registers to write data.
![MUX2bit](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Mux2bit.JPG)

### MUX 8-bit
Select constant or data from register to do an arrithmetic.
![MUX8bit](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Mux8bit.JPG)

### Sign-extend
Expand 2-bit to 8-bit to do an arithmetic with 8-bit values.
![SE](https://github.com/ton00987/8-bit-MIPS-Processor/blob/master/component%20pic/Sign-extend.JPG)
