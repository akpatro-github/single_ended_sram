# A comparative study of 6T SRAM with 6T SE-SRAM cell
## Table of Contents
  - [Methodology](https://github.com/akpatro-github/single_ended_sram#Methodology)
  - [Standard 6T SRAM cell](https://github.com/akpatro-github/single_ended_sram#Standard 6T SRAM cell)
    - [Block Diagram](https://github.com/akpatro-github/single_ended_sram#Block Diagram)
    - [Pre-Layout Simulation](https://github.com/akpatro-github/single_ended_sram#Pre-Layout Simulation)
    - [Layout](https://github.com/akpatro-github/single_ended_sram#Layout)
  - [SE-SRAM cell](https://github.com/akpatro-github/single_ended_sram#SE-SRAM cell)
    - [Block Diagram](https://github.com/akpatro-github/single_ended_sram#Block Diagram)
    - [Pre-Layout Simulation](https://github.com/akpatro-github/single_ended_sram#Pre-Layout Simulation)
    - [Layout](https://github.com/akpatro-github/single_ended_sram#Layout)
  - [Comparative analysis between standard 6T with SE-SRAM cell](https://github.com/akpatro-github/single_ended_sram#Comparative analysis between standard 6T with SE-SRAM celll)
  - [Conclusion](https://github.com/akpatro-github/single_ended_sram#Conclusion)
  
## Methodology
  - Memory size:- 1k X 32-bit
  - Operating voltage:- 5V
  - Used Techonology:- 0.5um SCMOS technique
  - Access time:- <30ns
  - Tools used:- NGSpice, Magic, Sue2
  
## Standard 6T SRAM cell
  The standard 6T SRAM cell consists of two back to back inverter for storing the data and two access transistors for read and write operation.
### Block Diagram:-
![SRAM_6t](https://user-images.githubusercontent.com/71965706/100325376-88df7580-2fee-11eb-82a3-139c157a41ae.png)
### Pre-Layout simulation:-
![clk sync](https://user-images.githubusercontent.com/71965706/100342257-c0a4e800-3003-11eb-9f07-3659b51fae7d.png)
### Layout:-
![layout_sram](https://user-images.githubusercontent.com/71965706/100325835-263aa980-2fef-11eb-9b65-cdb1c0ed82b0.png)
  
  Layout has been done by open-source layout tool Magic.
## SE-SRAM cell
  The single-ended 6T SRAM cell consists of two cross-coupled inverters connected to bitline(BL) with an access transistor (M5) and a data storage node isolation transistor (M6). For Read operation, a read assist transistor(Mra) is connected with an M6 transistor. One of the Inverter consists of a write assist transistor (Mwa) as shown in the figure. The read operation is controlled by the read assist transistor (Mra) by giving an input R. Similarly, the write operation is controlled by the write assist transistor (Mwa) and access transistor (M5) which depends upon the input W0 and WL.

### Block Diagram
![sesram1](https://user-images.githubusercontent.com/71965706/100325572-da880000-2fee-11eb-9ad5-2331e739a263.png)
### Pre-layout simulation
![se_sram](https://user-images.githubusercontent.com/71965706/100325658-f1c6ed80-2fee-11eb-8d35-8d41d155d7fa.png)
### Layout
![layout_sesram](https://user-images.githubusercontent.com/71965706/100325750-0acf9e80-2fef-11eb-9075-8a58d30678f1.png)
## Comparative analysis between standard 6t with SE-SRAM cell
### SNM (Static Noise Margin):-
#### 6T SRAM cell
![snm_sram](https://user-images.githubusercontent.com/71965706/100327960-f7720280-2ff1-11eb-9906-884b78d83c7d.png)
#### SE-SRAM cell
![snm_sesram](https://user-images.githubusercontent.com/71965706/100340882-d74a3f80-3001-11eb-9078-570dc2e4ee78.png)
#### Read SNM for different PVT corners
![snm_pvt](https://user-images.githubusercontent.com/71965706/100341728-f5646f80-3002-11eb-9b70-f6537c771c7c.png)

  The single ended 6T bitcell provides 4.5X higher worst-case read SNM as compared to the standard 6T SRAM bitcell under the same process variations. 
### Write-stability
![write_stability](https://user-images.githubusercontent.com/71965706/100342158-98b58480-3003-11eb-9db6-a2740956fe9d.png)

  The write trip point voltage of a proposed 6T is 28% (1.4V) higher than the standard 6T. Thus the single ended 6T design has a little bit of high write ability than the standard 6T design. However, it has an advantage since an erroneous write will not take place easily compared to standard 6T cell.

## Conclusion
  This project presents a 6T SE-SRAM cell. In the proposed 6T SE SRAM Cell : 
  - Read current path is isolated from the data storage node Q and QB and, hence less vulnerable to noise.
  - Isolation of read current path improves the SNM > 4x compared to standard 6T Cell
  - Strong write ability compared to standard 6T cell using MOSIS 0.5um CMOS technology. 

## Contributor
- Vikash kumar
## Acknowledgement
- Dr.Saroj Rout, Associate Professor, Silicon Institute of Technology
- Mr.Santunu sarangi, Assistant professor, Silicon Institute of Technology 
