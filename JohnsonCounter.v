module JohnsonCounter(input clk, output[3:0] Q);
wire clkA,clkB,clkC,clkD,QA,QB,QC,QD;
wire Da,DB,DC,DD;
assign QA = Q[0:0];
assign QB = Q[1:1];
assign QC = Q[2:2];
assign QD = Q[3:3];
assign DA = ~QD, DB=~QA, DC=~QB, DD=~QC ;
assign clkA = clk&(DA^QA), clkB = clk&(DB^QB), clkC = clk&(DC^QC), clkD = clk&(DD^QD);
FlipFlop f1(DA,clkA,reset,QA);
FlipFlop f2(DB,clkB,reset,QB);
FlipFlop f3(DC,clkC,reset,QC);
FlipFlop f4(DD,clkD,reset,QD);
endmodule
