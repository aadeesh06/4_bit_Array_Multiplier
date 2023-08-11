`include "full_adder.v"
// Full adder test bench
module full_adder_tb;
    reg x, y , c_in;
    wire sum , carry;
    full_adder DUT(.x(x), .y(y), .c_in(c_in), .sum(sum), .carry(carry));
    initial 
    begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);
        $monitor($time, " x = %b y = %b c_in = %b sum = %b , carry = %b" , x, y, c_in, sum , carry);
        #2 x = 0; y = 0; c_in = 0;
        #2 x = 0; y = 0; c_in = 1;
        #2 x = 0; y = 1; c_in = 0;
        #2 x = 0; y = 1; c_in = 1;
        #2 x = 1; y = 0; c_in = 0;
        #2 x = 1; y = 0; c_in = 1;
        #2 x = 1; y = 1; c_in = 0;
        #2 x = 1; y = 1; c_in = 1;
        #2 $finish;
    end
endmodule