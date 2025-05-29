module processor (
    input clk,
    input reset
);
//IF/ID registers
reg[31:0] IFID_pc;
reg[31:0] IFID_instruction;

wire[31:0] one;
wire[31:0] pc_next;
wire pc_alu_operation;
wire pc_alu_carry;

assign one = 1;
assign pc_alu_operation = 0; //ADD

ALU IFID_PC_ALU(one, IFID_pc, pc_alu_operation, pc_next, carry);

//IFID always block
always @(posedge clk) begin
    IFID_pc <= pc_next;
    
    
end

//ID/EX registers
reg[31:0] IDEX_pc;
reg[15:0] IDEX_sign_extend;
reg[31:0] IDEX_regA;
reg[31:0] IDEX_regB;

//EX/MEM registers
reg[31:0] EXMEM_pc_offset;
reg[0:0] EXMEM_equals;
reg[31:0] EXMEM_alu;
reg[31:0] EXMEM_regB;

//MEM/WB registers
reg[31:0] MEMWB_alu;
reg[31:0] MEMWB_alu;



endmodule