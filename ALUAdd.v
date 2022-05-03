module ALUAdd(A,B,Cin,S,Cout);

	input A,B,Cin;
	output S,Cout;

	wire X,Y,Z;

	xor (X,A,B);
	xor (S,X,Cin);
	
	and (Y,X,Cin);
	and (Z,A,B);
	
	or (Cout,Y,Z);
	
endmodule