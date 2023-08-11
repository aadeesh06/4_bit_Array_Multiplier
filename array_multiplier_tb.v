`include "array_multiplier.v"
// array multiplier test bench
module array_multiplier_tb;
    reg [3:0] x, y;
    wire [7:0] product;

    array_multiplier DUT(.x(x), .y(y), .product(product));
    initial begin
        $dumpfile("array_multiplier.vcd");
        $dumpvars(0,array_multiplier_tb);
        $monitor($time , " x = %d x = %b y = %d y = %b prdt = %d prdt = %b" , x, y, product, x, y, product);

        #5
        x = 4'b1101;
        y = 4'b1001;

        #5
        x = 4'b1110;
        y = 4'b0011;
        #5 $finish;
    end

endmodule