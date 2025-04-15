`timescale 1ns / 1ps

module tb_ALU;
    reg [3:0] A, B;
    reg [2:0] SEL;
    wire [3:0] OUT;

    ALU uut (
        .A(A),
        .B(B),
        .SEL(SEL),
        .OUT(OUT)
    );

    initial begin
        $display("Time\tA\tB\tSEL\tOUT");
        $monitor("%g\t%b\t%b\t%b\t%b", $time, A, B, SEL, OUT);

        // ADD
        A = 4'b0101; B = 4'b0011; SEL = 3'b000; #10;
        // SUB
        A = 4'b0101; B = 4'b0011; SEL = 3'b001; #10;
        // AND
        A = 4'b1100; B = 4'b1010; SEL = 3'b010; #10;
        // OR
        A = 4'b1100; B = 4'b1010; SEL = 3'b011; #10;
        // NOT
        A = 4'b1100; B = 4'b0000; SEL = 3'b100; #10;

        $stop;
    end
endmodule
