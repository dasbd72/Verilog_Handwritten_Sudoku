module Clock_VGA(clk, clk_vga);
	input clk;
	output clk_vga;
	reg [21:0] num;
	wire [21:0] next_num;

	always @(posedge clk) begin
		num <= next_num;
	end

	assign next_num = num + 1'b1;
	assign clk_vga = num[1];
endmodule
