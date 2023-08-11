module half_adder(x , y , sum , carry);
    input x , y;
    output sum , carry;
    xor x1(sum , x , y);
    and a1(carry , x , y);
endmodule