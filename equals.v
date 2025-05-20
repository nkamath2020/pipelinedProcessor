module equals16bit (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire is_equal
);
    assign is_equal = (a == b);
endmodule