module FA_8(input sub,input [7:0] A,input [7:0] B,output [7:0] S,output C_out);
wire [7:0] C;
wire [7:0]X;
assign X={8{sub}} ^ B[7:0];
Full_Adder S1(sub,A[0],X[0],S[0],C[0]);
Full_Adder S2(A[1],X[1],C[0],S[1],C[1]);
Full_Adder S3(A[2],X[2],C[1],S[2],C[2]);
Full_Adder S4(A[3],X[3],C[2],S[3],C[3]);
Full_Adder S5(A[4],X[4],C[3],S[4],C[4]);
Full_Adder S6(A[5],X[5],C[4],S[5],C[5]);
Full_Adder S7(A[6],X[6],C[5],S[6],C[6]);
Full_Adder S8(A[7],X[7],C[6],S[7],C[7]);
assign C_out = sub ^ C[7];
endmodule
