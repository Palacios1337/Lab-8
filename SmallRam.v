module SmallRam(Address,WR,Clk,CS,Di,Do);

input [5:0]Address;
input WR;
input Clk;
input CS;
input [7:0] Di;

output [7:0] Do;

reg [7:0] mem_array[63:0];
reg [7:0] mem_out;


always @(posedge Clk) begin
	if(CS && WR) begin
	 mem_array[Address] <= Di;
	end
end

always @(posedge Clk) begin
		mem_out <= mem_array[Address];
end

assign Do = CS ? mem_out : 8'b0;

endmodule