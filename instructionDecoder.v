module instructionDecoder(InnD,Rd,Rs1,Rs2,imm);

input [31:0] InnD;
output reg [4:0] Rd;
output reg [4:0] Rs1;
output reg [4:0] Rs2;
output reg [31:0] imm;


always @(InnD) begin



 Rd <= InnD[11:7];
 Rs1 <= InnD[19:15];
 Rs2 <= InnD[24:20];
 //imm <= InnD[31:20];
 imm <= InnD[31:0];
end

endmodule
