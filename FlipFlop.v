module FlipFlop(input D, clk, reset, output reg Q);
wire res_clk;
assign resclk = ~reset & clk;
always@(posedge res_clk)
begin
if(reset != 0)
Q<=D;
else Q<=0;
end
endmodule
