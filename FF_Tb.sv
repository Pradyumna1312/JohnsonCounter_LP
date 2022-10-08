module FF_Tb();
reg reset,D, clk;
reg [4:0] delay1;
wire Q;
real i;

initial for(i=0;i<100;i++) delay(3) clk = ~clk;

initial begin  
        clk = 0;  
        D = 0;  
        reset = 0;  
        delay 18 D = 1;  
        #11; reset = 1;
        #10 reset =0; 
        for (i = 0; i < 5; i=i+1) begin  
            delay1 = $random;  
            #(delay1) D = i;  
        end 
        #20 $stop;
    end  
    

/*
property scheck;
Q ##1 D;
endproperty

assert property((@posedge clk) scheck);
else $error("Assertion Failed");
*/
initial
begin
$dumpfile("FF_test.vcd");
$dumpvars(0,FF_Tb);
end

FlipFlop f1(D, clk, reset, Q);

initial $monitor("Time = %d,  reset = %h, D = %h, Q = %0b",$time,reset,D,Q);
endmodule
