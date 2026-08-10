# 2-to-1 Encoder using Verilog

## Overview

This project implements a simple **2-to-1 Encoder** using Verilog HDL.

An encoder is a combinational digital circuit that converts an active input signal into a corresponding binary output.

In this project, the encoder has:

* 2 input lines: `I0` and `I1`
* 1 output line: `Y`

The design assumes that only one input is HIGH at a time.

## Block Diagram

```text
        I0 ───────┐
                  │
                  │
               ┌──▼───┐
               │ 2:1  │──── Y
               │Encoder│
               └──▲───┘
                  │
        I1 ───────┘
```

## Truth Table

| I0 | I1 | Y       |
| -- | -- | ------- |
| 0  | 0  | 0       |
| 1  | 0  | 0       |
| 0  | 1  | 1       |
| 1  | 1  | Invalid |

The Boolean expression for the output is:

```text
Y = I1
```

## Project Structure

```text
2-to-1-Encoder-Verilog/
│
├── src/
│   └── encoder_2to1.v
│
├── testbench/
│   └── encoder_2to1_tb.v
│
├── simulation/
│   └── README.md
│
└── README.md
```

## Verilog Design

The encoder is implemented using a continuous assignment:

```verilog
assign Y = I1;
```

When `I1` is HIGH, the output is HIGH. When `I0` is HIGH, the output remains LOW.

## Simulation

The testbench applies the following input combinations:

1. `I0 = 0, I1 = 0`
2. `I0 = 1, I1 = 0`
3. `I0 = 0, I1 = 1`
4. `I0 = 1, I1 = 1`

The simulation can be performed using Icarus Verilog.

### Compile

```bash
iverilog -o encoder_sim src/encoder_2to1.v testbench/encoder_2to1_tb.v
```

### Run

```bash
vvp encoder_sim
```

## Expected Result

```text
2-to-1 Encoder Simulation
-------------------------
Time=0 | I0=0 I1=0 | Y=0
Time=10 | I0=1 I1=0 | Y=0
Time=20 | I0=0 I1=1 | Y=1
Time=30 | I0=1 I1=1 | Y=1
```

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave (optional, for waveform viewing)
* Git
* GitHub

## Learning Objectives

This project demonstrates:

* Basic Verilog module design
* Combinational logic
* Continuous assignment
* Testbench creation
* Verilog simulation
* Truth-table verification
* Organizing an HDL project on GitHub

## Conclusion

The 2-to-1 encoder was successfully designed and simulated using Verilog HDL. The simulation verifies the expected relationship between the input and output signals.
