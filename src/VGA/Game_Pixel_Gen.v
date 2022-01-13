module Game_Pixel_Gen(
        input clka,
        input [9:0] h_cnt,
        input [9:0] v_cnt,
        input [9*9-1:0] board_blank,
	    input [9*9*4-1:0] board,
		output reg [11:0] pixel_num_addr,
		output [3:0] enable_time_game,
		output enable_black,
		output enable_red,
		output [3:0] display_num,
        output reg [11:0] pixel_game_out
    );

	parameter SIZE = 52;
    parameter [9:0] blk_pos [8:0] = {10'd0, 10'd53, 10'd106, 10'd161, 10'd214, 10'd267, 10'd322, 10'd375, 10'd428};

	always @(*) begin
		case (game_mem)
			0: pixel_game_out = 12'h23A;
			1: pixel_game_out = 12'h019; 
			2: pixel_game_out = 12'hD99;
			3: pixel_game_out = 12'hC77;
			4: pixel_game_out = 12'h038;
			default: pixel_game_out = 12'h000;
		endcase
	end

    // ==========================
    // Row and column
    // ==========================
	wire [3:0] row;
	wire [3:0] col;
	Cnt_to_Row_Col CtR_inst(v_cnt, row);
	Cnt_to_Row_Col CtC_inst(h_cnt, col);

	wire enable_num_display = (h_cnt < 480) & board[(row*9+col)*4+3-:4] != 0;
	assign enable_black = enable_num_display & board_blank[row*9+col];
	assign enable_red = enable_num_display & !board_blank[row*9+col];

	assign enable_time_game[3] = (h_cnt >= 10'd500 & h_cnt < 10'd552 & v_cnt >= 10'd200 & v_cnt < 10'd252);
	assign enable_time_game[2] = (h_cnt >= 10'd560 & h_cnt < 10'd612 & v_cnt >= 10'd200 & v_cnt < 10'd252);
	assign enable_time_game[1] = (h_cnt >= 10'd500 & h_cnt < 10'd552 & v_cnt >= 10'd260 & v_cnt < 10'd312);
	assign enable_time_game[0] = (h_cnt >= 10'd560 & h_cnt < 10'd612 & v_cnt >= 10'd260 & v_cnt < 10'd312);
	
    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 10'd320 * (v_cnt>>1)) % 76800;
	wire [2:0] game_mem;

	assign display_num = board[(row*9+col)*4+3-:4];

	always @(*) begin
		if (enable_num_display) begin
			pixel_num_addr = (v_cnt-blk_pos[row]) * SIZE + (h_cnt-blk_pos[col]);
		end else if (enable_time_game[3]) begin
			pixel_num_addr = (v_cnt-10'd200) * SIZE + (h_cnt-10'd500);
		end else if (enable_time_game[2]) begin
			pixel_num_addr = (v_cnt-10'd200) * SIZE + (h_cnt-10'd560);
		end else if (enable_time_game[1]) begin
			pixel_num_addr = (v_cnt-10'd260) * SIZE + (h_cnt-10'd500);
		end else if (enable_time_game[0]) begin
			pixel_num_addr = (v_cnt-10'd260) * SIZE + (h_cnt-10'd560);
		end else begin
			pixel_num_addr = 0;
		end
	end

    Game_Mem_Gen blk_mem_gen_game(
		.clka(clka),
		.addra(pixel_background_addr),
		.douta(game_mem)
	); 

endmodule
