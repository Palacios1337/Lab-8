module Program_Counter(clk, reset, PCi, PCo);

input clk, reset;
input [31:0]PCi;

output reg [31:0]PCo;


always @ (posedge clk) begin

	if (reset == 1'b1)
	PCo = 32'b0;
   else
	PCo = PCi;

end

endmodule
