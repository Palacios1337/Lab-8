module TopLab8(Clk,Reset,PCSrc,ALUSrc,ALUOp,Cin,RamEn,RamWR,MuxWB,Final_Out,RegWrite,immsel);


input PCSrc;
input Clk;
input Reset;
input ALUSrc;
input Cin;
input RamEn;
input RamWR;
input MuxWB;
input RegWrite;
input [3:0] ALUOp;
input [1:0] immsel;
output [31:0]Final_Out;
wire [31:0]Adderout;
wire [4:0] Rd;
wire [4:0] Rs1;
wire [4:0] Rs2;
wire [31:0] imm;
wire [31:0] Is;
//wire [7:0] PCi;
wire [31:0] PCo;
wire [31:0] regOut1;
wire [31:0] regOut2;
wire [31:0]ImmGenOut;
wire [3:0]Status;
wire [31:0]MuxToALU;
wire [31:0]ALUResult;
wire [31:0]BigRamResult;
wire [31:0]MuxToRF;
wire[31:0] MuxToPC;
wire[31:0] SumToMux;


Program_Counter Program_Counter_1(.clk(Clk), .reset(Reset), .PCi(MuxToPC), .PCo(PCo));

adder4 adder4_1(.PCi(PCo), .PCo(Adderout));
Mux MuxAdderAndAddSum(.In(PCSrc), .out(MuxToPC), .i0(Adderout), .i1(SumToMux));
AddSum AddSum1(.InA(PCo),.InB(ImmGenOut),.Result(SumToMux));
ROM ROM1(.out(Is),.address(PCo));


Registerfile32x32 RegFile1(.A(regOut1), .B(regOut2), .SA(Rs1), .SB(Rs2), .D(MuxToRF), .DA(Rd), .En(RegWrite), .Reset(Reset), .Clock(Clk));

instructionDecoder instDecode1(.InnD(Is),.Rd(Rd),.Rs1(Rs1),.Rs2(Rs2),.imm(imm));
immgen immgen1(.instr(imm), .immout(ImmGenOut),.immsel(immsel));

Mux MuxRegOut2AndImmGen(.In(ALUSrc), .out(MuxToALU), .i0(regOut2[31:0]), .i1(ImmGenOut[31:0]));
Mux MuxRamAndALU(.In(MuxWB), .out(MuxToRF), .i0(BigRamResult[31:0]), .i1(ALUResult[31:0]));
bigRam RAM1(.Address(ALUResult[7:0]),.Din(regOut2),.Dout(BigRamResult[31:0]),.Clk(~Clk),.en(RamEn),.WR(RamWR));
ALU ALU1(.A(regOut1),.B(MuxToALU),.Cin(Cin),.Opcode(ALUOp),.S(ALUResult),.Status(Status));

assign Final_Out = MuxToRF;


endmodule
