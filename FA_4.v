module FA_4(input C_in,input [3:0] A , B,output [3:0] S,output C_out);
wire C0,C1,C2;
Full_Adder S1(A[0],B[0],C_in,S[0],C0);
Full_Adder S2(A[1],B[1],C0,S[1],C1);
Full_Adder S3(A[2],B[2],C1,S[2],C2);
Full_Adder S4(A[3],B[3],C2,S[3],C_out);
endmodule


/*module FA_4(sum,cout,a,b,cin);
   output [3:0] sum;
   output  cout;
   input [3:0]  a,b;
   input  cin;
   wire cout0,cout1,cout2;
   FA_4 f1 (sum[0], cout0, a[0], b[0], cin);
   FA_4 f2 (sum[1], cout1, a[1], b[1], cout0);
   FA_4 f3 (sum[2], cout2, a[2], b[2], cout1);
   FA_4 f4 (sum[3], cout, a[3], b[3], cout2);
endmodule*/
