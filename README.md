# ARITHMETIC-LOGIC-UNIT-ALU-VLSI
Sathiyapriya S
CODTECH IT SOLUTIONS PVT.LTD
Intern ID:CT04WH113
Online Internship will span 4 weeks from March 12th, 2025 to April 12th, 2025.
Mentor : Neela Santhosh Kumar(Human Resources & Academic Head, CODTECH IT SOLUTIONS PRIVATE LIMITED)


# Basic ALU Design using Verilog with Simulation in GTKWave

This project presents the design and simulation of a **Basic Arithmetic and Logic Unit (ALU)** implemented in **Verilog HDL**, with waveform analysis using **GTKWave**. It is ideal for beginners who are exploring the fundamentals of digital design, specifically combinational logic design, and wish to understand how hardware components like ALUs are modeled and tested.

## Project Objective

The main objective of this project is to build a **4-bit ALU (Arithmetic Logic Unit)** that supports a set of basic arithmetic and logic operations such as:

- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise NOT

The ALU receives two 4-bit input operands and a 3-bit selection signal that determines which operation is executed. The output is a 4-bit result depending on the selected operation.

## Files Included

- `alu.v` — The Verilog module defining the ALU logic.
- `tb_alu.v` — A testbench module that applies various test inputs to the ALU and records the output.

## Features of the ALU

| SEL (3-bit) | Operation   | Description                     |
|-------------|-------------|---------------------------------|
| `000`       | ADD         | Adds A and B                    |
| `001`       | SUB         | Subtracts B from A              |
| `010`       | AND         | Bitwise AND of A and B          |
| `011`       | OR          | Bitwise OR of A and B           |
| `100`       | NOT         | Bitwise NOT of A (B ignored)    |
| Other       | DEFAULT     | Outputs `0000`                  |

The ALU is **combinational**, meaning that the output changes immediately based on the inputs.

## Simulation and GTKWave Visualization

The simulation is performed using **Icarus Verilog**, and output waveforms are visualized using **GTKWave**. The testbench applies a sequence of inputs for each operation and generates a VCD file for waveform inspection.

### Test Values Used:
- `A = 0101` (5 in decimal)
- `B = 0011` (3 in decimal)
- SEL codes ranging from `000` to `100`

## How to Run

1. Install [Icarus Verilog](https://bleyer.org/icarus/) and [GTKWave](http://gtkwave.sourceforge.net/)
2. Open a terminal and navigate to the project folder.
3. Compile and simulate:

```bash
iverilog -o alu_test alu.v tb_alu.v
vvp alu_test
gtkwave dump.vcd
```

4. GTKWave will launch, and you can add signals from the left pane to the waveform viewer.

## Output Preview (GTKWave)

In GTKWave, you'll see:
- The input signals (`A`, `B`, `SEL`)
- The output result (`OUT`)
- Timing of operations visualized as waveforms

This allows you to verify correct transitions and logic behavior visually.

## Learning Outcomes

- Hands-on experience with **Verilog HDL**
- Understanding of **basic combinational logic design**
- Creating **testbenches for simulation**
- Using **GTKWave for waveform visualization**
- Familiarity with **command-line tools** like `iverilog` and `vvp`

## Future Scope

This ALU can be expanded to include:
- Multiplication and division
- Comparison operations (greater, equal, less)
- Overflow detection
- Carry-out and borrow outputs
- Integration into a simple CPU architecture

## Acknowledgments

This project was designed and simulated as part of a learning initiative to understand digital logic fundamentals. It serves as a base for students and hobbyists working on digital system design and HDL-based simulations.

## Output
