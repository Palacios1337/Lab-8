module ALU(A,B,Cin,Opcode,S,Status);

input  [31:0] A,B;
input Cin;
input [3:0]Opcode; // {instr30,instr[14:12]

output [31:0]S;
output reg [3:0]Status;

wire [31:0] Cout;
wire [31:0] AdderToMux;
wire [31:0] MuxToOutside;
wire [31:0] Xoring,Anding,Oring,Noring;
wire [31:0] Left,Right;
wire [31:0] SubtractorToMux;
wire [31:0] AddorSub;

assign Xoring = A ^ B;
assign Anding = A & B;
assign Oring = A|B;
assign Noring = ~(A|B);



ALUAdd Adder_0(.A(A[0]),.B(B[0]),.Cin(Cin),.S(AdderToMux[0]),.Cout(Cout[0]));
subtract subtract_0(.A(A),.B(B),.Cin(Cin),.out(SubtractorToMux));

Mux MuxInALU(.In(Opcode[3]), .out(AddorSub), .i0(AdderToMux), .i1(SubtractorToMux));

	genvar x;
	generate
		for (x = 1; 32>x; x=x+1)begin: FA
			ALUAdd AdderForver(.A(A[x]),.B(B[x]),.Cin(Cout[x-1]),.S(AdderToMux[x]),.Cout(Cout[x]));
		end
	endgenerate

ALULRShifter LRShifter0(.a(A), .b(B[4:0]),.left(Left),.right(Right));
	
ALUMux EntireMux(.s(Opcode), .out(MuxToOutside), .i0(AddorSub), .i1(Left), .i2(Right), .i3(Noring), .i4(Xoring), .i5(Right), .i6(Oring), .i7(Anding));

always @(Opcode,MuxToOutside,Cout,A,B) begin
	
	Status[0] <= Cout[31];

	Status[1] <= MuxToOutside[31];
	if (MuxToOutside == 32'b0) begin
		Status[2] <= 1'b1;
	end
	else begin
	Status[2] <= 1'b0;
	end
	Status[3] <= (~A[31])&(~B[31])&(MuxToOutside[31]) | (A[31])&(B[31])&(~MuxToOutside[31]);
end

assign S = MuxToOutside;

endmodule
