module ALU (input [7:0]A,B,
            input [2:0]opcode,
            output cout,cflag,
            output o1,o2,
            output [7:0]out,
            output [7:0]out1,
            output [7:0]out2);
reg [7:0] temp;
reg cflg;
reg o;
wire c1,c2;

assign c1=1'b0;
assign c2=1'b1;

FA_8 s1(c1,A[7:0],B[7:0],out1[7:0],o1);
FA_8 s2(c2,A[7:0],B[7:0],out2[7:0],o2);

always @(*)
begin

if (A>B)
begin
	 cflg=1'b1;
end

else
	 cflg=1'b0;
	 
if (opcode==3'b000)

begin
    temp=out1;
	 o=o1;
end

else if (opcode==3'b001)

begin
	 temp=out2;
	 o=o2;
end

else if(opcode == 3'b010)

    temp=A & B;
	 
else if (opcode ==3'b011)

    temp=A | B;
	 
else if (opcode == 3'b100)

    temp=A ^ B;
	 
else if (opcode ==3'b101)

    temp=A > B;

else if (opcode ==3'b110)

    temp= A << 1;
	 
else if (opcode ==3'b111)

    temp= B << 1;
	 
else

    temp=8'bx;
	 
end

assign out=temp;
assign cout=o;
assign cflag=cflg;

endmodule 