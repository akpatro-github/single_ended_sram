# A comparative study of 6T SRAM with 6T SE-SRAM cell
## Table of Contents
  - Introduction
  - Methodology
  - Standard 6T SRAM cell
    - Block Diagram
    - Pre-Layout Simulation
    - Layout
  - SE-SRAM cell
    - Block Diagram
    - Pre-Layout Simulation
    - Layout
  - Comparative analysis between standard 6T with SE-SRAM cell
  - Conclusion
  
## Introduction
## Methodology
  - Memory size:- 1k X 32-bit
  - Operating voltage:- 5V
  - Used Techonology:- 0.5um SCMOS technique
  - Access time:- <30ns
  - Tools used:- NGSpice, Magic, Sue2
  
## Standard 6T SRAM cell
### Block Diagram
![SRAM_6t](https://user-images.githubusercontent.com/71965706/100325376-88df7580-2fee-11eb-82a3-139c157a41ae.png)
### Pre-Layout simulation
![clk sync](https://user-images.githubusercontent.com/71965706/100342257-c0a4e800-3003-11eb-9f07-3659b51fae7d.png)
### Layout
![layout_sram](https://user-images.githubusercontent.com/71965706/100325835-263aa980-2fef-11eb-9b65-cdb1c0ed82b0.png)
## SE-SRAM cell
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
### Write-stability
![write_stability](https://user-images.githubusercontent.com/71965706/100342158-98b58480-3003-11eb-9db6-a2740956fe9d.png)
