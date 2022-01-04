module top(
	input clk,
	input rst,
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
	wire show_data;
	wire [11:0] pixel_data;
	wire [11:0] pixel_out;
	wire valid;
	wire [9:0] h_cnt;  // 640
	wire [9:0] v_cnt;  // 480

	assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel :12'h0;
	assign pixel = (show_data) ? pixel_data : pixel_out;

	clock_divisor clk_wiz_0_inst(
		.clk(clk),
		.clk1(clk_25MHz),
		.clk22(clk_22)
	);

	game_mem_addr_gen game_mem_addr_gen_inst(
		.clk(clk_22),
		.rst(rst),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.pixel_addr(pixel_game)
	);

	menu_pixel_gen menu_pixel_gen_inst(
       .h_cnt(h_cnt),
	   .v_cnt(v_cnt),
	   .pixel(pixel_menu)
    );

	number_pixel_gen number_pixel_gen_inst(
       .h_cnt(h_cnt),
	   .v_cnt(v_cnt),
	   .index(index),
	   .number(number),
	   .pixel(pixel_number)
    );
		
	blk_mem_gen_0 blk_mem_gen_0_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_addr),
		.dina(data[11:0]),
		.douta(pixel_out)
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