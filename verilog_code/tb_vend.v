module testbench();
reg pu,i,j,rst,clk;
wire p,c;
vend test(pu,i,j,rst,clk,p,c);
always
#5 clk=~clk;
initial
begin
i=1'b0;
j=1'b0;
clk=1'b0;
rst=1'b0;
pu=1'b0;
#5 i=1'b0;
#5 j=1'b0;
#5 rst=1'b1;
#10 i=1'b0;
#10 j=1'b1;
#10 rst=1'b0;
#15 i=1'b0;
#15 j=1'b1;
#15 rst=1'b1; 
#20 i=1'b1;
#20 j=1'b0;
#20 rst=1'b0;
#25 i=1'b1;
#25 j=1'b0;
#25 rst=1'b1;
#30 i=1'b1;
#30 j=1'b1;
#30 rst=1'b0;
#35 i=1'b1;
#35 j=1'b1;
#35 rst=1'b1;  
#100 $finish;
end
   initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars; 
    end
endmodule