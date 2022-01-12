module Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
	input [9:0] v_cnt, 	
    input [1:0] state,
	input MOUSE_LEFT,
	input mouse_on_start_button,
	input mouse_on_return_button,
	input [9*9-1:0] board_blank,
	input [9*9*4-1:0] board,
    output reg [11:0] pixel_out
	);

	parameter [1:0] SMENU = 2'd0;
	parameter [1:0] SGAME = 2'd1;
	parameter [1:0] SOVER = 2'd2;

	wire [11:0] pixel_game_out;
	wire [11:0] pixel_menu_out;
	wire [11:0] pixel_over_out;

	always @(*) begin
		case (state) 
			SMENU: pixel_out = pixel_menu_out;
			SGAME: pixel_out = pixel_game_out;
			SOVER: pixel_out = pixel_over_out;
		endcase 
	end


	Game_Pixel_Gen game_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.board_blank(board_blank),
		.board(board),
		.pixel_game_out(pixel_game_out)
	);

    Menu_Pixel_Gen menu_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.MOUSE_LEFT(MOUSE_LEFT),
		.mouse_on_start_button(mouse_on_start_button),
		.pixel_menu_out(pixel_menu_out)	
	);

	Over_Pixel_Gen over_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.MOUSE_LEFT(MOUSE_LEFT),
		.mouse_on_return_button(mouse_on_return_button),
		.pixel_over_out(pixel_over_out)	
	);

endmodule

