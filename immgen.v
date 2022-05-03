//module immgen(immin, immout);
//input [31:0] immin;
//output [31:0] immout;
//assign immout[31:12] = {20{immin[11]}};
//assign immout[11:0] = immin;
//endmodule

module immgen(instr, immout, immsel);

input [31:0] instr;

input [1:0] immsel;

output reg [31:0] immout;

always @ (instr, immsel) begin

              case (immsel)

                           2'b00 : begin //I-type

                                                                    immout[11:0] = instr[31:20];

                                                                    immout[31:12] = {20{instr[31]}};

                                                                    end

                           2'b01 : begin //S-type

                                                                    immout[11:5] = instr[31:25];

                                                                    immout[4:0] = instr[11:7];

                                                                    immout[31:12] = {20{instr[31]}};

                                                                    end

                           2'b11 : begin //B-type

                                                                    //immout[11:5] = instr[31:25];

                                                                    immout[4:0] = instr[11:7];

                                                                    immout[31:5] = {27{instr[31]}};
//010000000010000100001100011 01000
                                                                    end
										default: immout =32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
              endcase           

end

endmodule
