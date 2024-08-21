module CLA_N#(parameter N=3)(input logic[2**N-1:0]A,B,
				  input logic Cin,
				  output logic[2**N-1:0]S,
				  output logic Cout);
logic[((2**N)/4)-2:0]Cint;
genvar i;
generate
	for(i=3;i<=2**N-1;i=i+4)
		begin : gen_loop
		if(i==3)
			begin
			CLA_4 C1(A[i:i-3],B[i:i-3],Cin,S[i:i-3],Cint[0]);
			end
		else if(i==2**N-1)
			begin
			CLA_4 C1(A[i:i-3],B[i:i-3],Cint[((i+1)/4)-2],S[i:i-3],Cout);
			end
		else
			begin
			CLA_4 C2(A[i:i-3],B[i:i-3],Cint[((i+1)/4)-2],S[i:i-3],Cint[((i+1)/4)-1]);
			end
		end 
	endgenerate
endmodule
