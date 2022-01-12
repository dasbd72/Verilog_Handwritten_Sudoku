module Cnt_to_Row_Col (cnt, out);
	input [9:0] cnt;
	output reg [3:0] out;

	always @(*) begin
		if (cnt <= 51) begin
			out = 4'h8;
		end else if (cnt <= 105) begin
			out = 4'h7;
		end else if (cnt <= 159) begin
			out = 4'h6;
		end else if (cnt <= 211) begin
			out = 4'h5;
		end else if (cnt <= 265) begin
			out = 4'h4;
		end else if (cnt <= 319) begin
			out = 4'h3;
		end else if (cnt <= 371) begin
			out = 4'h2;
		end else if (cnt <= 425) begin
			out = 4'h1;
		end else if (cnt <= 479) begin
			out = 4'h0;
		end else begin
			out = 4'hf;
		end
	end 

endmodule