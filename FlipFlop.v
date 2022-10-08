module FlipFlop(input D, clk, reset, output reg Q);
always@(posedge clk, posedge reset) 
begin
if(reset == 1'b0)
Q<=D;
else Q<=1'b0;
end
endmodule
