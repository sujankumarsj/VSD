module testbench();
reg pu,i,j,rst,clk;
wire p,c;
vend test(pu,i,j,rst,clk,p,c);
always
#5 clk=~clk;
initial
begin
i=1'bO;
j=1'b0;
clk=1'b0;
rst=1'b0;
pu=1'b0;
#5 rst=1'b1;
#5 i=1'b1;  
#5 pu=1'b1;
#100 $finish;
end
endmodule