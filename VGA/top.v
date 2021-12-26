module top(
	input clk,
	input rst,
	input change,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync
	);

	wire [11:0] data;
	wire clk_25MHz;
	wire clk_22;
	wire [16:0] pixel_addr;
	wire [11:0] pixel;
	wire [11:0] pixel_out [1:0];
	wire valid;
	wire [9:0] h_cnt; //640
	wire [9:0] v_cnt;  //480

	assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel :12'h0;
	assign pixel = (change) ? pixel_out[0] : pixel_out[1];

	wire ena0 = change;
	wire ena1 = ~change;

	clock_divisor clk_wiz_0_inst(
		.clk(clk),
		.clk1(clk_25MHz),
		.clk22(clk_22)
	);

	mem_addr_gen mem_addr_gen_inst(
	.clk(clk_22),
	.rst(rst),
	.h_cnt(h_cnt),
	.v_cnt(v_cnt),
	.pixel_addr(pixel_addr)
	);
		
	blk_mem_gen_0 blk_mem_gen_0_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_addr),
		.dina(data[11:0]),
		.douta(pixel_out[0])
	); 

	blk_mem_gen_1 blk_mem_gen_1_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_addr),
		.dina(data[11:0]),
		.douta(pixel_out[1])
	); 

	vga_controller   vga_inst(
		.pclk(clk_25MHz),
		.reset(rst),
		.hsync(hsync),
		.vsync(vsync),
		.valid(valid),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt)
	);
      
endmodule
