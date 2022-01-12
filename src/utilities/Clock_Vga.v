module Clock_VGA(clk, clka);
	input clk;
	output clka;
	reg [21:0] num;
	wire [21:0] next_num;

	always @(posedge clk) begin
		num <= next_num;
	end

	assign next_num = num + 1'b1;
	assign clka = num[1];
endmodule
