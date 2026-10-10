# Asynchronous UART Controller

A UART-controlled digital system implemented in Verilog.

## Contents

- Functional RTL modules and a testbench in `rtl/`
- Questa/ModelSim simulation scripts (`run.do`, `rtl/run.do`, and `rtl/wave.do`)
- Two selected lint reports: `moresimple.rpt` and `waiver.rpt`
- Project PDFs: `Final_System.pdf` and `System_Assignment.pdf`
- MIT license

The top-level functional design is `rtl/SYS_TOP.v`; the testbench is `rtl/tb_SYS_TOP.v`. To run the simulation in Questa/ModelSim from the repository root, execute:

```tcl
do run.do
```

A simulator is not included.

## Publication scope

This repository omits local work directories and environment snapshots such as `.sg.env`. Generated implementation reports, logs, netlists, tool-specific databases, and DFT-specific sources and scripts were not published. Third-party tools and technology libraries remain subject to their owners' terms.
