module Full_Adder(input A,B,Cin,output Sum,Cout);
wire X,Y,Z;
xor (X,A,B);
xor (Sum,X,Cin);
and (Y,A,B);
and (Z,X,Cin);
or (Cout,Y,Z);/*
assign X=A ^ B;
assign Y=A & B;
assign Z=X & Cin;
assign Sum=X ^ Cin;
assign Cout=Y | Z;*/
endmodule 