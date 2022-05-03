module RamDecoder(a,b,en,CS0,CS1,CS2,CS3);

input a;
input b;
input en;

output  CS0,CS1,CS2,CS3; 

assign CS0= (~a) & (~b) & en;
assign CS1= (~a) & b & en;
assign CS2= a & (~b) & en;
assign CS3= a & b & en;

endmodule