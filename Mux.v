module Mux(In, out, i0, i1);

input wire [31:0] i0, i1;

input wire In;

output reg [31:0]out;

always @ (i0, i1, In)

begin
	case (In)
              1'b0 : out <= i0;
              1'b1 : out <= i1;

	endcase

end

endmodule
