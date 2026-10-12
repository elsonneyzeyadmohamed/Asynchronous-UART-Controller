# Asynchronous UART Controller

A UART-controlled digital system implemented in Verilog.

## Contents
- Project PDFs: `Final_System.pdf` and `System_Assignment.pdf`
- Functional RTL modules and a testbench in `rtl/`
- Questa/ModelSim simulation scripts (`run.do`, `rtl/run.do`, and `rtl/wave.do`)
- Lint reports and waiver files(lint rtl goal and cdc goals)
- Synthesis reports and .tcl files in 'syn'
- DFT reports and .tcl files
- Post synthesis and Post DFT formality reports and .tcl
- MIT license

The top-level functional design is `rtl/SYS_TOP.v`; the testbench is `rtl/tb_SYS_TOP.v`. To run the simulation in Questa/ModelSim from the repository root, execute:

```tcl
do run.do
```

A simulator is not included.
