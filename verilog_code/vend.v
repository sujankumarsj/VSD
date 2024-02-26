module vend(pu,i,j,rst,clk,p,c);
input pu,i,j,rst,clk;
output p,c;
reg[2:0] state,ns;
parameter
s0=3'b00,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101,s6=3'b110,s7=3'b111;
always@(posedge clk or negedge rst)
if(~rst)state=s0;
else state=ns;
always@(state or i or j or pu)
case(state)
  s0:ns=pu?s0:(i?(j?s2:s1):s0);
  s1:ns=pu?s5:(i?(j?s3:s2):s1);
  s2:ns=pu?s6:(i?(j?s4:s3):s2);  
  s3:ns=s0;
s4:ns=s0;
s5:ns=s0;
s6:ns=s0;
s7:ns=s0;
endcase
assign
{p,c}={(state[0]&state[1]&~state[2])|(~state[0]&~state[1]&state[2]),(state[2]&~state[1])|(state[2]&~state[0])};
endmodule