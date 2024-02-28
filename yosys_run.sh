# read design

read_verilog vend.v

# generic synthesis
synth -top vend

# mapping to mycells.lib
dfflibmap -liberty /usr/local/share/qflow/tech/osu018/osu018_stdcells.lib
abc -liberty /usr/local/share/qflow/tech/osu018/osu018_stdcells.lib
clean
flatten
# write synthesized design
write_verilog -assert vend.v
