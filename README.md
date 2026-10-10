# Asynchronous UART Controller

A parameterized, UART-controlled digital system implemented in Verilog. The design combines a register file, an arithmetic and logic unit (ALU), asynchronous UART receive and transmit paths, clock and reset control, and an asynchronous FIFO.

## Features

- UART receiver with configurable parity and parity/stop error outputs
- UART transmitter
- Command controller and 16-entry register file
- 8-bit ALU with 16-bit result, including arithmetic, logic, compare, and shift operations
- Asynchronous FIFO between the system and UART clock domains
- Clock divider, clock gating, reset synchronizers, and data synchronizer
- Separate synthesis and scan insertion scripts

## Top-level interface

The functional top module is `SYS_TOP` in [`rtl/SYS_TOP.v`](rtl/SYS_TOP.v).

| Port | Direction | Description |
| --- | --- | --- |
| `REF_CLK` | input | System reference clock (50 MHz in the supplied constraints) |
| `UART_CLK` | input | UART reference clock (3.6864 MHz in the supplied constraints) |
| `RST` | input | Active-low asynchronous reset |
| `RX_IN` | input | UART serial input |
| `TX_OUT` | output | UART serial output |
| `PAR_ERR` | output | UART parity error indicator |
| `STP_ERR` | output | UART stop-bit error indicator |

The supplied register-file defaults enable even parity, use an RX prescale of 32, and set the TX divider ratio to 32. The system therefore uses the clock values above as the defaults for the supplied simulation and constraints; update the design settings and timing constraints together when changing them.

## UART command protocol

Commands are sent as 8-bit UART data bytes. The command byte is followed by the fields listed below.

| Command | Following bytes | Behavior |
| --- | --- | --- |
| `0xAA` | address, data | Write `data` to the selected register |
| `0xBB` | address | Read the selected register; the value is transmitted back |
| `0xCC` | operand A, operand B, ALU function | Store operands, execute an ALU operation, and transmit the 16-bit result low byte first |
| `0xDD` | ALU function | Execute using the previously stored operands and transmit the result low byte first |

ALU function codes are defined in [`rtl/ALU.v`](rtl/ALU.v). The register file initializes register 0 and register 1 as ALU operands, register 2 as UART configuration, and register 3 as the TX divider ratio.

## Simulation

The testbench is [`rtl/tb_SYS_TOP.v`](rtl/tb_SYS_TOP.v). It exercises register write/readback and ALU add/multiply commands. The root-level [`run.do`](run.do) compiles the functional RTL and testbench with Questa/ModelSim and runs the simulation.

From the repository root in the simulator transcript, run:

```tcl
do run.do
```

The testbench prints `PASS`/`FAIL` messages for its scenarios. A simulator is not included in this repository.

## Synthesis and DFT flows

- [`syn/run_synthesis.tcl`](syn/run_synthesis.tcl) contains the synthesis flow and [`syn/SYS_TOP.sdc`](syn/SYS_TOP.sdc) contains timing constraints.
- [`DFT/run_dft.tcl`](DFT/run_dft.tcl) and [`DFT/cons.tcl`](DFT/cons.tcl) contain scan insertion settings; [`DFT/SYS_TOP_dft.sdc`](DFT/SYS_TOP_dft.sdc) contains DFT timing constraints.
- The DFT top is [`rtl/SYS_TOP_dft.v`](rtl/SYS_TOP_dft.v). It replaces `SYS_TOP.v` for scan insertion; do not compile both top-level variants into the same design.

These flows target Synopsys Design Compiler/DFT Compiler and a TSMC 130 nm standard-cell library. The technology libraries are not included. The scripts expect the library files below a local `std_cells/` directory and use their original library cell names. Obtain and use only libraries you are licensed to access. The flows have not been validated in this repository environment.

From the repository root, run the synthesis script with the tool's working directory set to `syn/`, and run the DFT script with the working directory set to `DFT/`, so their relative `cons.tcl` and output paths resolve correctly. Archived synthesis and DFT netlists, timing data, reports, logs, and scripts from the supplied project are included where present. Generated working databases are excluded.

## Repository layout

```text
rtl/                         Synthesizable Verilog, functional and DFT top levels, and testbench
syn/                         Synthesis scripts, netlists, constraints, reports, and logs
DFT/                         DFT scripts, netlists, constraints, reports, and logs
Formality_post-*_Stage/      Archived formal verification reports and scripts
lint/                        Selected moresimple.rpt and waiver.rpt outputs
Final_System.pdf             Project documentation
System_Assignment.pdf        Assignment document
run.do                       Questa/ModelSim simulation entry point
```

## Notes

Confidential working-result trees (directories whose names contain work) and the local SpyGlass .sg.env environment snapshot are intentionally excluded. The PDFs and archived non-work synthesis, DFT, formal, and two selected lint reports are included. The MIT License in this repository applies to project materials only to the extent the copyright holder has authority to license them; third-party tools and technology libraries remain subject to their owners’ terms.
