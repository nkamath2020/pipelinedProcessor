module adder( //16 bit
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] sum,
    output wire carry_out
);
    assign {carry_out, sum} = a + b;
endmodule
