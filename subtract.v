module subtract(A,B,Cin,out);

input [31:0]A;
input [31:0]B ;
input Cin;
output [31:0]out;

wire [31:0]Bsignal;
wire [31:0]Cinsignal;

assign Bsignal[31:0] = ~B[31:0] + 1'b1;
assign Cinsignal[31:0] = ~Cin;

assign out = A[31:0] + Bsignal[31:0];




endmodule
