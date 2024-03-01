# read design

read_verilog vend.v

# generic synthesis
synth -top vend

# mapping to mycells.lib
# dfflibmap -liberty /usr/local/share/qflow/tech/osu018/osu018_stdcells.lib

abc -liberty ../../sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
stat -liberty ../../sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
# flatten
# write synthesized design
write_verilog -noattr  vend_netlist.v
