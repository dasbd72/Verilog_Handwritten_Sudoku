module Vga_Top(
	input clka,
	input rst,
	input [1:0] state,
	input receive_connect,
	input send_connect,
	input MOUSE_LEFT,
	input enable_mouse_display,
	input enable_track_display_out,
	input mouse_on_start_button,
	input mouse_on_connect_button,
	input mouse_on_return_button,
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

	wire valid;
	reg [11:0] pixel;
	wire [11:0] pixel_out;

	parameter [1:0] SMENU = 2'd0;
	parameter [1:0] SGAME = 2'd1;
	parameter [1:0] SOVER = 2'd2;
	
	assign {vgaRed, vgaGreen, vgaBlue} = (valid) ? pixel : 12'h0;

	always @(*) begin
		if (enable_mouse_display) begin
			pixel = mouse_pixel;
		end else if (enable_track_display_out & state == SGAME) begin
			pixel = 12'h000;
		end else begin
			pixel = pixel_out;
		end
	end

	Pixel_Gen pixel_gen_inst(
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.clka(clka),
		.state(state),
		.receive_connect(receive_connect),
		.send_connect(send_connect),
		.MOUSE_LEFT(MOUSE_LEFT),
		.mouse_on_start_button(mouse_on_start_button),
		.mouse_on_connect_button(mouse_on_connect_button),
		.mouse_on_return_button(mouse_on_return_button),
		.board_blank(board_blank),
		.board(board),
		.pixel_out(pixel_out)
	);

	Vga_Controller vga_controller_inst(
		.pclk(clka),
		.reset(rst),
		.hsync(hsync),
		.vsync(vsync),
		.valid(valid),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt)
	);
      
endmodule
