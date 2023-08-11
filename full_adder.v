module full_adder(x, y , c_in, sum , carry);
    input x , y , c_in;
    output sum , carry;
    wire temp_sum, temp_carry1 , temp_carry2;
    half_adder h1(x , y, temp_sum, temp_carry1);
    half_adder h2(temp_sum, c_in, sum,  temp_carry2);
    or o1(carry, temp_carry1, temp_carry2);
endmodule
