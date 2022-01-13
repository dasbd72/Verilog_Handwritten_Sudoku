module Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
	input [9:0] v_cnt, 	
    input [1:0] state,
	input receive_connect,
	input send_connect,
	input MOUSE_LEFT,
	input mouse_on_start_button,
	input mouse_on_connect_button,
	input mouse_on_return_button,
	input [9*9-1:0] board_blank,
	input [9*9*4-1:0] board,
	input [15:0] time_spent,
    output reg [11:0] pixel_out
	);

	parameter [1:0] SMENU = 2'd0;
	parameter [1:0] SGAME = 2'd1;
	parameter [1:0] SOVER = 2'd2;

	wire [11:0] pixel_game_out;
	wire [11:0] pixel_menu_out;
	wire [11:0] pixel_over_out;
	reg [11:0] pixel_num_addr;
    wire num_mem [0:9];

	wire [3:0] enable_time_game, enable_time_over;
	wire enable_black, enable_red;
	wire [11:0] pixel_num_addr_game, pixel_num_addr_over;
	wire [3:0] display_num;

	always @(*) begin
		case (state) 
			SMENU: begin
				pixel_num_addr = 0;
				pixel_out = pixel_menu_out;
			end
			SGAME: begin
				pixel_num_addr = pixel_num_addr_game;
				if (enable_black) begin
					if (num_mem[display_num]) begin
						pixel_out = 12'h000;
					end else begin
						pixel_out = pixel_game_out;
					end
				end else if (enable_red) begin
					if (num_mem[display_num]) begin
						pixel_out = 12'he00;
					end else begin
						pixel_out = pixel_game_out;
					end
				end else if (enable_time_game[3] & num_mem[time_spent[15:12]]) begin
					pixel_out = 12'hD1D;
				end else if (enable_time_game[2] & num_mem[time_spent[11:8]]) begin
					pixel_out = 12'hD1D;
				end else if (enable_time_game[1] & num_mem[time_spent[7:4]]) begin
					pixel_out = 12'hC0C;
				end else if (enable_time_game[0] & num_mem[time_spent[3:0]]) begin
					pixel_out = 12'hC0C;
				end else begin
					pixel_out = pixel_game_out;
				end
			end
			SOVER: begin 
				pixel_num_addr = pixel_num_addr_over;
				if (enable_time_over[3] & num_mem[time_spent[15:12]]) begin
					pixel_out = 12'haa0;
				end else if (enable_time_over[2] & num_mem[time_spent[11:8]]) begin
					pixel_out = 12'haa0;
				end else if (enable_time_over[1] & num_mem[time_spent[7:4]]) begin
					pixel_out = 12'h990;
				end else if (enable_time_over[0] & num_mem[time_spent[3:0]]) begin
					pixel_out = 12'h990;
				end else begin
					pixel_out = pixel_over_out;
				end
			end
			default: pixel_out = 12'h000;
		endcase 
	end

	Game_Pixel_Gen game_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.board_blank(board_blank),
		.board(board),
		.pixel_num_addr(pixel_num_addr_game),
		.enable_time_game(enable_time_game),
		.enable_black(enable_black),
		.enable_red(enable_red),
		.display_num(display_num),
		.pixel_game_out(pixel_game_out)
	);

    Menu_Pixel_Gen menu_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.receive_connect(receive_connect),
		.send_connect(send_connect),
		.MOUSE_LEFT(MOUSE_LEFT),
		.mouse_on_start_button(mouse_on_start_button),
		.mouse_on_connect_button(mouse_on_connect_button),
		.pixel_menu_out(pixel_menu_out)	
	);

	Over_Pixel_Gen over_pixel_gen_inst(
		.clka(clka),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.MOUSE_LEFT(MOUSE_LEFT),
		.mouse_on_return_button(mouse_on_return_button),
		.enable_time_over(enable_time_over),
		.pixel_num_addr(pixel_num_addr_over),
		.pixel_over_out(pixel_over_out)	
	);

	Num0_Mem_Gen num0_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[0])
	);

	Num1_Mem_Gen num1_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[1])
	);

	Num2_Mem_Gen num2_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[2])
	);

	Num3_Mem_Gen num3_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[3])
	);

	Num4_Mem_Gen num4_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[4])
	);

	Num5_Mem_Gen num5_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[5])
	);

	Num6_Mem_Gen num6_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[6])
	);

	Num7_Mem_Gen num7_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[7])
	);

	Num8_Mem_Gen num8_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[8])
	);

	Num9_Mem_Gen num9_mem_gen_inst(
		.clka(clka),
		.addra(pixel_num_addr),
		.douta(num_mem[9])
	);

endmodule

