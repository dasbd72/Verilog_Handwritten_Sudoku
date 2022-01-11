module Vga_Top(
	input clk,
	input rst,
	input stage,
	input enable_mouse_display,
	input [11:0] mouse_pixel,
	input [81*4-1:0] board,
	input [81-1:0] board_blank,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output [9:0] h_cnt,
	output [9:0] v_cnt,
	output hsync,
	output vsync
	);

	wire clk_vga;
	wire valid;
	
	wire [11:0] pixel;
	wire [11:0] pixel_out;
	
	assign {vgaRed, vgaGreen, vgaBlue} = (valid) ? pixel : 12'h0;
	assign pixel = (enable_mouse_display) ? mouse_pixel : pixel_out;

	Clock_VGA clock_vga_inst(
		.clk(clk),
		.clk_vga(clk_vga)
	);

	Pixel_Gen pixel_gen_inst(
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.clka(clk_vga),
		.stage(stage),
		.board_blank(board_blank),
		.board(board),
		.pixel_out(pixel_out)
	);

	Vga_Controller vga_controller_inst(
		.pclk(clk_vga),
		.reset(rst),
		.hsync(hsync),
		.vsync(vsync),
		.valid(valid),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt)
	);
      
endmodule
