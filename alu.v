module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] SEL,
    output reg [3:0] OUT
);

always @(*) begin
    case (SEL)
        3'b000: OUT = A + B;       // ADD
        3'b001: OUT = A - B;       // SUB
        3'b010: OUT = A & B;       // AND
        3'b011: OUT = A | B;       // OR
        3'b100: OUT = ~A;          // NOT A
        default: OUT = 4'b0000;    // Default case
    endcase
end
