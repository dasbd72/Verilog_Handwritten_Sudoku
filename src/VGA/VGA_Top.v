module Vga_Top(
	input clk,
	input rst,
	input stage,
	input [81*4-1:0] board,
	input [81-1:0] board_blank,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync,
	inout PS2_CLK,
	inout PS2_DATA
	);

	wire clk_vga;
	wire valid;
	wire [9:0] h_cnt;  // 640
	wire [9:0] v_cnt;  // 480
	
	wire [11:0] pixel;
	wire [11:0] pixel_out;
	
	// ==========================
    // Mouse signals 
    // ==========================
	wire enable_mouse_display;
	wire [9:0] MOUSE_X_POS , MOUSE_Y_POS;
    wire MOUSE_LEFT , MOUSE_MIDDLE , MOUSE_RIGHT , MOUSE_NEW_EVENT;
    wire [3:0] mouse_cursor_red , mouse_cursor_green , mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};
	
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
		.pixel(pixel_out)
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

	Mouse mouse_inst(
		.clk(clk),
		.h_cntr_reg(h_cnt),
		.v_cntr_reg(v_cnt),
		.enable_mouse_display(enable_mouse_display),
		.MOUSE_X_POS(MOUSE_X_POS),
		.MOUSE_Y_POS(MOUSE_Y_POS),
		.MOUSE_LEFT(MOUSE_LEFT),
		.MOUSE_MIDDLE(MOUSE_MIDDLE),
		.MOUSE_RIGHT(MOUSE_RIGHT),
		.MOUSE_NEW_EVENT(MOUSE_NEW_EVENT),
		.mouse_cursor_red(mouse_cursor_red),
		.mouse_cursor_green(mouse_cursor_green),
		.mouse_cursor_blue(mouse_cursor_blue),
		.PS2_CLK(PS2_CLK),
		.PS2_DATA(PS2_DATA)
	);
      
endmodule
