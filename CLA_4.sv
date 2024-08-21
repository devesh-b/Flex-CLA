module CLA_4(input logic[3:0]A,B,
				 input logic Cin,
				 output logic[3:0]S,
				 output logic Cout);
logic[3:0]P,G;
logic Pi,Gi,Cint;
logic[4:0]Int;

assign P=A^B;
assign G=A&B;

assign Pi=P[0]&P[1]&P[2]&P[3];
assign Cint=Pi&Cin;

assign Int[0]=P[1]&G[0];
assign Int[1]=Int[0]|G[1];
assign Int[2]=Int[1]&P[2];
assign Int[3]=Int[2]|G[2];
assign Int[4]=Int[3]&P[3];
assign Gi=Int[4]|G[3];

assign Cout=Gi|Cint;
assign S=P^Cin;
endmodule
