# Verilog-projects
## Getting Started
* Install [iverilog](https://bleyer.org/icarus/)
* Run `iverilog filename.v filename_tb.v` where the latter is the testbench file
* Run `vvp a.out` to display the output in terminal

## Viewing it as a wave
* Install [GTKWave](https://gtkwave.sourceforge.net/)
* Run `gtkwave savedname.vcd`. For example, `gtkwave displaytest.vcd`
* The "savedname" is the same as the name used while execute the dumpfile command in the testbench
