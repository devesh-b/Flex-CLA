module CLA_N_tb();

reg[63:0]A,B;
reg Cin;
wire[63:0]S;
wire Cout;

CLA_N dut(A,B,Cin,S,Cout);

initial
	begin
		A=64'h0000_0000_0000_0000;B=64'h0000_0000_0000_0000;Cin=1'b0;#50;
		A=64'hC24A_A5C6_D789_F54A;B=64'h24DA_B1C3_D731_178D;Cin=1'b1;#50;
		A=64'hAC32_D126_C23A_23F6;B=64'hC2E9_A89E_FA23_AD4A;Cin=1'b0;#50;
		$finish;
	end
endmodule
	