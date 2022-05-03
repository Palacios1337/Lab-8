module RegMux(s, out, i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31);

parameter N = 32;

input wire [N-1:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15;

input wire [N-1:0] i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31;

input wire [4:0]s;

output reg [N-1:0]out;

always @ (i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, s)

begin
	case (s)
              5'b00000 : out <= i0;
              5'b00001 : out <= i1;
              5'b00010 : out <= i2;
              5'b00011 : out <= i3;
              5'b00100 : out <= i4;
              5'b00101 : out <= i5;
              5'b00110 : out <= i6;
              5'b00111 : out <= i7;
              5'b01000 : out <= i8;
              5'b01001 : out <= i9;
              5'b01010 : out <= i10;
              5'b01011 : out <= i11;
              5'b01100 : out <= i12;
              5'b01101 : out <= i13;
              5'b01110 : out <= i14;
              5'b01111 : out <= i15;
              5'b10000 : out <= i16;
              5'b10001 : out <= i17;
              5'b10010 : out <= i18;
              5'b10011 : out <= i19;
              5'b10100 : out <= i20;
              5'b10101 : out <= i21;
              5'b10110 : out <= i22;
              5'b10111 : out <= i23;
              5'b11000 : out <= i24;
              5'b11001 : out <= i25;
              5'b11010 : out <= i26;
              5'b11011 : out <= i27;
              5'b11100 : out <= i28;
              5'b11101 : out <= i29;
              5'b11110 : out <= i30;
              5'b11111 : out <= i31;

	endcase

end

endmodule