module bigRam(Address,Din,Dout,Clk,en,WR);

input Clk;
input en;
input [7:0] Address;
input [31:0] Din;
output[31:0] Dout;
input WR;

wire CS0,CS1,CS2,CS3;

wire [31:0] Dont_mg0,Dont_mg1,Dont_mg2,Dont_mg3; 
wire [31:0] Dout_mg0,Dout_mg1,Dout_mg2,Dout_mg3; 

RamDecoder Decoder1(.a(Address[7]),.b(Address[6]),.en(en),.CS0(CS0),.CS1(CS1),.CS2(CS2),.CS3(CS3));

SmallRam   Ram1x1(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS0),.Di(Din[7:0]),.Do(Dont_mg0[7:0]));
SmallRam   Ram1x2(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS0),.Di(Din[15:8]),.Do(Dont_mg0[15:8]));
SmallRam   Ram1x3(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS0),.Di(Din[23:16]),.Do(Dont_mg0[23:16]));
SmallRam   Ram1x4(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS0),.Di(Din[31:24]),.Do(Dont_mg0[31:24]));

SmallRam   Ram2x1(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS1),.Di(Din[7:0]),.Do(Dont_mg1[7:0]));
SmallRam   Ram2x2(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS1),.Di(Din[15:8]),.Do(Dont_mg1[15:8]));
SmallRam   Ram2x3(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS1),.Di(Din[23:16]),.Do(Dont_mg1[23:16]));
SmallRam   Ram2x4(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS1),.Di(Din[31:24]),.Do(Dont_mg1[31:24]));

SmallRam   Ram3x1(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS2),.Di(Din[7:0]),.Do(Dont_mg2[7:0]));
SmallRam   Ram3x2(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS2),.Di(Din[15:8]),.Do(Dont_mg2[15:8]));
SmallRam   Ram3x3(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS2),.Di(Din[23:16]),.Do(Dont_mg2[23:16]));
SmallRam   Ram3x4(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS2),.Di(Din[31:24]),.Do(Dont_mg2[31:24]));

SmallRam   Ram4x1(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS3),.Di(Din[7:0]),.Do(Dont_mg3[7:0]));
SmallRam   Ram4x2(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS3),.Di(Din[15:8]),.Do(Dont_mg3[15:8]));
SmallRam   Ram4x3(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS3),.Di(Din[23:16]),.Do(Dont_mg3[23:16]));
SmallRam   Ram4x4(.Address(Address[5:0]),.WR(WR),.Clk(Clk),.CS(CS3),.Di(Din[31:24]),.Do(Dont_mg3[31:24]));

RamTriStateBuffer TriStateBuffer0(.input_x(Dont_mg0), .en(CS0), .output_x(Dout_mg0[31:0]));
RamTriStateBuffer TriStateBuffer1(.input_x(Dont_mg1), .en(CS1), .output_x(Dout_mg1[31:0]));
RamTriStateBuffer TriStateBuffer2(.input_x(Dont_mg2), .en(CS2), .output_x(Dout_mg2[31:0]));
RamTriStateBuffer TriStateBuffer3(.input_x(Dont_mg3), .en(CS3), .output_x(Dout_mg3[31:0]));

assign Dout = Dout_mg1[31:0];
assign Dout = Dout_mg2[31:0];
assign Dout = Dout_mg0[31:0];
assign Dout = Dout_mg3[31:0];

endmodule

