module adder4(PCi, PCo);

input [31:0]PCi;
output [31:0]PCo;

assign PCo = PCi + 32'b00000100;

endmodule
