module Lab8Tb();

reg Clk;
reg Reset;
reg PCSrc;
reg ALUSrc;
reg [3:0]ALUOp;
reg Cin;
reg RamEn;
reg RamWR;
reg MuxWB;
wire [31:0]Final_Out;
reg RegWrite;
reg [1:0]immsel;

TopLab8 thingy(.Clk(Clk),.Reset(Reset),.PCSrc(PCSrc),.ALUSrc(ALUSrc),.ALUOp(ALUOp),.Cin(Cin),.RamEn(RamEn),.RamWR(RamWR),.MuxWB(MuxWB),.Final_Out(Final_Out),.RegWrite(RegWrite),.immsel(immsel));

initial begin
 Reset <= 1'b1;
 Clk <= 0;
 PCSrc <= 0;
 RegWrite <= 1;
 ALUSrc <= 1;
 ALUOp <= 4'b0000;
 RamWR <= 0;
 MuxWB <= 1;
 RamEn <= 1;
 immsel <= 00;
 Cin <= 0;

#50;
 Clk<= 1;
#50;

 Clk<=  1'b0;
 Reset <= 1'b0;
#50;

 Clk <= 1'b1;
#50;
 Clk <=1'b0;
#50;

 ALUSrc <=1'b0;
 Clk <=1'b1;
#50

 Clk <=1'b0;
#50;

 MuxWB <=1'b0;
 ALUSrc <=1'b1;
 RegWrite <=1'b0;
 RamWR<= 1'b1;
 immsel <=2'b01;
 Clk <=1'b1;
#50;
 Clk <=1'b0;
#50;
 Clk <=1'b1;
#50;
 Clk <=1'b0;
#50;
 immsel <=2'b00;
 RegWrite <=1'b1;
 RamWR <=1'b0;
 Clk <=1'b1;
#50;
 Clk <=1'b0;
#50;
 PCSrc<= 1'b1;
 ALUOp <=4'b1000;
 immsel<= 2'b11;
 ALUSrc<=  0;
 RegWrite <= 0;
 Clk <= 1;
#50;
 Clk <= 0;

#50;
 Clk <= 1;
#50;
 Clk <= 0;
#50;
 Clk <= 1 ;
#50;


	
	$finish;
	
	
end

endmodule

