module Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
	input [9:0] v_cnt, 	
    input stage,
	input [9*9-1:0] board_blank,
	input [9*9*4-1:0] board,
    output [11:0] pixel_out
	);

	parameter Menu = 0;
	parameter Game = 1;

	wire [11:0] pixel_game_out;
	wire [11:0] pixel_menu_out;

	assign pixel_out = (stage == Menu) ? pixel_menu_out : pixel_game_out;

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
		.pixel_menu_out(pixel_menu_out)	
	);

endmodule

