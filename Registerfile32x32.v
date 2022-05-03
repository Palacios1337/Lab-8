module Registerfile32x32(A, B, SA, SB, D, DA, En, Reset, Clock);

	input [4:0]SA;
	input [4:0]SB;
	input [4:0]DA;
	input En;
	input Reset;
	input Clock;
	
	input [31:0]D;
	output [31:0]A;
	output [31:0]B;	
	
	wire[31:0] RegisterToMux0;
	wire[31:0] RegisterToMux1;
	wire[31:0] RegisterToMux2;
	wire[31:0] RegisterToMux3;
	wire[31:0] RegisterToMux4;
	wire[31:0] RegisterToMux5;
	wire[31:0] RegisterToMux6;
	wire[31:0] RegisterToMux7;
	wire[31:0] RegisterToMux8;
	wire[31:0] RegisterToMux9;
	wire[31:0] RegisterToMux10;
	wire[31:0] RegisterToMux11;
	wire[31:0] RegisterToMux12;
	wire[31:0] RegisterToMux13;
	wire[31:0] RegisterToMux14;
	wire[31:0] RegisterToMux15;
	wire[31:0] RegisterToMux16;
	wire[31:0] RegisterToMux17;
	wire[31:0] RegisterToMux18;
	wire[31:0] RegisterToMux19;
	wire[31:0] RegisterToMux20;
	wire[31:0] RegisterToMux21;
	wire[31:0] RegisterToMux22;
	wire[31:0] RegisterToMux23;
	wire[31:0] RegisterToMux24;
	wire[31:0] RegisterToMux25;
	wire[31:0] RegisterToMux26;
	wire[31:0] RegisterToMux27;
	wire[31:0] RegisterToMux28;
	wire[31:0] RegisterToMux29;
	wire[31:0] RegisterToMux30;
	wire[31:0] RegisterToMux31;

	wire[31:0] DecoderToReg; 

	
	RegDecoder U0(.in(DA),.out(DecoderToReg),.en(En));
	
	Register64 R0(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[0]),.dout(RegisterToMux0[31:0]));
	Register64 R1(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[1]),.dout(RegisterToMux1[31:0]));
	Register64 R2(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[2]),.dout(RegisterToMux2[31:0]));
	Register64 R3(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[3]),.dout(RegisterToMux3[31:0]));
	Register64 R4(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[4]),.dout(RegisterToMux4[31:0]));
	Register64 R5(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[5]),.dout(RegisterToMux5[31:0]));
	Register64 R6(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[6]),.dout(RegisterToMux6[31:0]));
	Register64 R7(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[7]),.dout(RegisterToMux7[31:0]));
	Register64 R8(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[8]),.dout(RegisterToMux8[31:0]));
	Register64 R9(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[9]),.dout(RegisterToMux9[31:0]));
	Register64 R10(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[10]),.dout(RegisterToMux10[31:0]));
	Register64 R11(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[11]),.dout(RegisterToMux11[31:0]));
	Register64 R12(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[12]),.dout(RegisterToMux12[31:0]));
	Register64 R13(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[13]),.dout(RegisterToMux13[31:0]));
	Register64 R14(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[14]),.dout(RegisterToMux14[31:0]));
	Register64 R15(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[15]),.dout(RegisterToMux15[31:0]));
	Register64 R16(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[16]),.dout(RegisterToMux16[31:0]));
	Register64 R17(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[17]),.dout(RegisterToMux17[31:0]));
	Register64 R18(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[18]),.dout(RegisterToMux18[31:0]));
	Register64 R19(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[19]),.dout(RegisterToMux19[31:0]));
	Register64 R20(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[20]),.dout(RegisterToMux20[31:0]));
	Register64 R21(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[21]),.dout(RegisterToMux21[31:0]));
	Register64 R22(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[22]),.dout(RegisterToMux22[31:0]));
	Register64 R23(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[23]),.dout(RegisterToMux23[31:0]));
	Register64 R24(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[24]),.dout(RegisterToMux24[31:0]));
	Register64 R25(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[25]),.dout(RegisterToMux25[31:0]));
	Register64 R26(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[26]),.dout(RegisterToMux26[31:0]));
	Register64 R27(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[27]),.dout(RegisterToMux27[31:0]));
	Register64 R28(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[28]),.dout(RegisterToMux28[31:0]));
	Register64 R29(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[29]),.dout(RegisterToMux29[31:0]));
	Register64 R30(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[30]),.dout(RegisterToMux30[31:0]));
	Register64 R31(.din(D),.clk(Clock),.rst(Reset),.load(DecoderToReg[31]),.dout(RegisterToMux31[31:0]));

	
	
	RegMux MuxA(.s(SA),.out(A),.i0(RegisterToMux0),.i1(RegisterToMux1),.i2(RegisterToMux2),.i3(RegisterToMux3),.i4(RegisterToMux4),.i5(RegisterToMux5),.i6(RegisterToMux6),.i7(RegisterToMux7),.i8(RegisterToMux8),.i9(RegisterToMux9),.i10(RegisterToMux10),.i11(RegisterToMux11),.i12(RegisterToMux12),.i13(RegisterToMux13),.i14(RegisterToMux14),.i15(RegisterToMux15),.i16(RegisterToMux16),.i17(RegisterToMux17),.i18(RegisterToMux18),.i19(RegisterToMux19),.i20(RegisterToMux20),.i21(RegisterToMux21),.i22(RegisterToMux22),.i23(RegisterToMux23),.i24(RegisterToMux24),.i25(RegisterToMux25),.i26(RegisterToMux26),.i27(RegisterToMux27),.i28(RegisterToMux28),.i29(RegisterToMux29),.i30(RegisterToMux30),.i31(RegisterToMux31));
	
	RegMux MuxB(.s(SB),.out(B),.i0(RegisterToMux0),.i1(RegisterToMux1),.i2(RegisterToMux2),.i3(RegisterToMux3),.i4(RegisterToMux4),.i5(RegisterToMux5),.i6(RegisterToMux6),.i7(RegisterToMux7),.i8(RegisterToMux8),.i9(RegisterToMux9),.i10(RegisterToMux10),.i11(RegisterToMux11),.i12(RegisterToMux12),.i13(RegisterToMux13),.i14(RegisterToMux14),.i15(RegisterToMux15),.i16(RegisterToMux16),.i17(RegisterToMux17),.i18(RegisterToMux18),.i19(RegisterToMux19),.i20(RegisterToMux20),.i21(RegisterToMux21),.i22(RegisterToMux22),.i23(RegisterToMux23),.i24(RegisterToMux24),.i25(RegisterToMux25),.i26(RegisterToMux26),.i27(RegisterToMux27),.i28(RegisterToMux28),.i29(RegisterToMux29),.i30(RegisterToMux30),.i31(RegisterToMux31));
	
	
	
	
	
endmodule