# Single Port RAM: RTL to GDSII Flow

## Overview
This repository contains the RTL-to-GDSII flow implementation of a Single Port RAM design. The project includes RTL design, verification, synthesis, placement & routing, and final layout generation using industry-standard EDA tools.

## Features
- **RTL Design**: Verilog-based implementation of a Single Port RAM.
- **Functional Verification**: Testbench for verifying correctness.
- **Synthesis**: Logic synthesis using standard cell libraries.
- **Place & Route**: Floorplanning, placement, clock tree synthesis (CTS), routing, and signoff.
- **GDSII Generation**: Final layout ready for fabrication.

## Tools Used
- **Verilog** for RTL coding
- **ModelSim/QuestaSim** for simulation and functional verification
- **Cadence Genus** for synthesis
- **Cadence Innovus** for place & route
- **Cadence Virtuoso** for DRC/LVS signoff

## Results
- Functional verification reports
- Timing analysis and power reports
- Final layout with DRC/LVS clean GDSII

## Author
[Sriram M](https://github.com/rayzar06)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

