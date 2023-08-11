`include "half_adder.v"
// Half adder test bench
module half_adder_tb;
    reg x , y;
    wire sum , carry;
    half_adder DUT(.x(x), .y(y), .sum(sum), .carry(carry));
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,half_adder_tb);
        $monitor($time, "x = %b y = %b sum = %b carry = %b", x, y , sum ,carry);
        #2 x = 0; y = 0;
        #2 x = 0; y = 1;
        #2 x = 1; y = 0;
        #2 x = 1; y = 1;
        #2 $finish; 
    end
endmodule