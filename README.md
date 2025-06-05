# VINIT_23BIT089 — 8-Bit Magnitude Comparator Project

## RTL to GDSII Flow Submission

-   Author: Vinit Kumar Gupta
-   Roll No: 23BIT089
-   Workshop: 5-Day RTL to GDSII Workshop
-   Project Title: RTL to GDSII Implementation of an 8-bit Magnitude Comparator
-   Toolchain: Synopsys DC / IC Compiler II / PrimeTime / Verdi

---

## 📁 Folder Structure

All project files are organized as follows:

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

## 🔧 Tools Used

-   VCS & Verdi – for RTL Simulation and Debugging
-   Design Compiler (DC) – for Logic Synthesis
-   IC Compiler II (ICC-II) – for Floorplan, Powerplan, Placement, Clock and Routing
-   PrimeTime (PT) – for Static Timing Analysis

---

## 📌 Key Notes

-   All scripts are configured with proper relative paths for reproducibility.
-   Slack achieved at the end of routing: `0.58 ns` (positive and < 1.0 ns as required)
-   Detailed screenshots and reports are provided in the PDF document.

---

> 💡 For any questions or tool-specific paths, refer to comments within each script.
