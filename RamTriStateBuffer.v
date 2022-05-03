module RamTriStateBuffer(input_x, en, output_x);

input [31:0] input_x;
input en;

output [31:0]output_x;

//assign output_x[31:0] = en? input_x[31:0] : 'bz;

assign output_x = en ? input_x: 32'bz;

endmodule
