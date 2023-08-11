//this is a 4 - bit array multiplier
module array_multiplier(x, y, product);
    input [3:0]x, y;
    output [7:0]product;

    wire [31:0]w;

    and a2(product[0], x[0], y[0]);
    and a3(w[0], x[1], y[0]);
    and a4(w[1], x[2], y[0]);
    and a5(w[2], x[3], y[0]);
    and a6(w[3], x[0], y[1]);
    and a7(w[4], x[1], y[1]);
    and a8(w[5], x[2], y[1]);
    and a9(w[6], x[3], y[1]);

    half_adder h3(w[0], w[3], product[1], w[7]);
    full_adder f1(w[1], w[4], w[7], w[8], w[9]);
    full_adder f2(w[2], w[5], w[9], w[10], w[11]);
    half_adder h4(w[6], w[11], w[12], w[13]);

    and a10(w[14], x[0], y[2]);
    and a11(w[15], x[1], y[2]);
    and a12(w[16], x[2], y[2]);
    and a13(w[17], x[3], y[2]);

    half_adder h5(w[8], w[14], product[2], w[18]);
    full_adder f3(w[10], w[15], w[18], w[19], w[20]);
    full_adder f4(w[12], w[16], w[20], w[21], w[22]);
    full_adder f5(w[13], w[17], w[22], w[23], w[24]);

    and a14(w[25], x[0], y[3]);
    and a15(w[26], x[1], y[3]);
    and a16(w[27], x[2], y[3]);
    and a17(w[28], x[3], y[3]);

    half_adder h6(w[19], w[25], product[3], w[29]);
    full_adder f6(w[21], w[26], w[29], product[4], w[30]);
    full_adder f7(w[23], w[27], w[30], product[5], w[31]);
    full_adder f8(w[24], w[28], w[31], product[6], product[7]);
endmodule