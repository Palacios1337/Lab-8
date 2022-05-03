module Register64(din,clk,rst,load,dout);

parameter N = 32;

input clk;
input rst;
input load;
input [N-1:0]din;
output reg [N-1:0]dout;

always @(posedge clk) begin

	if(rst == 1)
		dout <= 0;
	else if (load ==1)
		dout <= din;
	end

endmodule
