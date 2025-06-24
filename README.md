# 8-Bit Magnitude Comparator — RTL to GDSII ASIC Project

> Author: Vinit Kumar Gupta | Roll No: 23BIT089<br>
> Workshop Project — RTL to GDSII Flow | Pandit Deendayal Energy University<br>
> Tech Stack: Verilog · Synopsys Toolchain · Full Digital ASIC Flow

---

## Overview

This project showcases the complete RTL-to-GDSII implementation of a sequential 8-bit magnitude comparator using the Synopsys ASIC toolchain and SAED 32nm standard cell library. It was developed as part of a 5-day hands-on VLSI workshop, culminating in the successful generation of a synthesized netlist, physical layout, and post-layout timing closure using industry-grade tools.

### About 8-bit Magnitude Comparator

An 8-bit magnitude comparator is a digital logic circuit that compares two 8-bit binary inputs (A and B) and determines their relationship:

* `A > B` → Output a\_gt\_b = 1
* `A < B` → Output a\_lt\_b = 1
* `A == B` → Output a\_eq\_b = 1

The design is synchronous, clock-driven, and modeled in Verilog HDL.

---

## Project Highlights

- Fully functional sequential RTL design of an 8-bit comparator
- Behavioral simulation using VCS + waveform debugging via Verdi
- Logic synthesis using Design Compiler with SAED32nm standard cells
- Custom SDC constraints and gate-level optimization (compile\_ultra)
- Physical design using IC Compiler II: floorplanning → routing
- Post-layout STA with PrimeTime; timing met with slack = 0.58 ns

---

## 🧱 Folder Structure

```
VINIT_23BIT089_8BIT_COMPARATOR/
│
├── VINIT_23BIT089_REPORT.pdf            # Full report with all steps and snapshots
│
├── RTL/
│   └── comparator_8bit_rtl.v            # RTL Verilog code for 8-bit Comparator
│
└── SCRIPTS/
    ├── common_setup.tcl                 # Shared setup script
    ├── dc_setup.tcl                     # Setup for Design Compiler
    ├── comparator_8bit.sdc              # SDC timing constraints
    ├── clock.tcl                        # Clock setup script for ICC-II
    ├── floorplan.tcl                    # Floorplanning script
    ├── placement.tcl                    # Placement script
    ├── power_planning.tcl               # Power planning TCL
    ├── route.tcl                        # Routing TCL
    ├── comparator_8bit_tb.v             # Testbench for functional simulation
    └── run_pt_p1.tcl                    # PrimeTime timing analysis script
```

---

## Toolchain Used

| Tool                         | Purpose                                    |
| ---------------------------- | ------------------------------------------ |
| VCS + Verdi                  | Functional RTL simulation & waveform debug |
| Design Compiler (dc\_shell)  | RTL → Gate-Level Synthesis                 |
| IC Compiler II (icc2\_shell) | Floorplan, Placement, CTS, Routing         |
| PrimeTime                    | Post-layout Static Timing Analysis         |
| SAED32RVT 0.78V 40°C         | Standard Cell Library                      |

---

📎 Complete Report: [VINIT\_23BIT089\_REPORT.pdf](./VINIT_23BIT089_REPORT.pdf)
