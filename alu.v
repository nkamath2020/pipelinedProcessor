
module ALU (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire alu_op,                 // 0 = ADD, 1 = XOR
    output wire [15:0] result,
    output wire carry           
);
    wire [15:0] sum;
    wire [15:0] xorResult;
    wire add_carry;

    adder adder1(.a(a), .b(b), .sum(sum), .carry_out(add_carry));

    xor16bit xor_gate (.a(a), .b(b), .y(xorResult));

    assign result = alu_op ? xor_result : sum;
    assign carry_out = alu_op ? 1'b0 : add_carry;
endmodule
