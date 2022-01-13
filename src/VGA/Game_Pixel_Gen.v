module Game_Pixel_Gen(
        input clka,
        input [9:0] h_cnt,
        input [9:0] v_cnt,
        input [9*9-1:0] board_blank,
	    input [9*9*4-1:0] board,
		input [15:0] time_spent,
        output reg [11:0] pixel_game_out
    );

	parameter SIZE = 52;
    parameter [9:0] blk_pos [8:0] = {0, 53, 106, 161, 214, 267, 322, 375, 428};
    
	reg [11:0] color;

	always @(*) begin
		case (game_mem)
			0: color = 12'h23A; // Blue
			1: color = 12'h019; 
			2: color = 12'hD99;
			3: color = 12'hC77;
			4: color = 12'h038;
			default: color = 12'h000;
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
    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	reg [11:0] pixel_num_addr;

	wire enable_mXX = (h_cnt >= 500 & h_cnt < 552 & v_cnt >= 200 & v_cnt < 252);
	wire enable_mX =  (h_cnt >= 560 & h_cnt < 612 & v_cnt >= 200 & v_cnt < 252);
	wire enable_sXX = (h_cnt >= 500 & h_cnt < 552 & v_cnt >= 260 & v_cnt < 312);
	wire enable_sX =  (h_cnt >= 560 & h_cnt < 612 & v_cnt >= 260 & v_cnt < 312);

	always @(*) begin
		if (enable_num_display) begin
			pixel_num_addr = (v_cnt-blk_pos[row]) * SIZE + (h_cnt-blk_pos[col]);
		end else if (enable_mXX) begin
			pixel_num_addr = (v_cnt-200) * SIZE + (h_cnt-500);
		end else if (enable_mX) begin
			pixel_num_addr = (v_cnt-200) * SIZE + (h_cnt-560);
		end else if (enable_sXX) begin
			pixel_num_addr = (v_cnt-260) * SIZE + (h_cnt-500);
		end else if (enable_sX) begin
			pixel_num_addr = (v_cnt-260) * SIZE + (h_cnt-560);
		end else begin
			pixel_num_addr = 0;
		end
	end

    // ==========================
    // Memory of game background and number
    // ==========================
	wire [2:0] game_mem;
    wire num_mem [0:9];

    always @(*) begin
		if (enable_num_display) begin	
			if (num_mem[board[(row*9+col)*4+3-:4]]) begin
				if (board_blank[row*9+col]) begin
					pixel_game_out = 12'h000;
				end else begin
					pixel_game_out = 12'he00;
				end
			end else begin
				pixel_game_out = color;
			end
		end else if (enable_mXX && num_mem[time_spent[15:12]]) begin
			pixel_game_out = 12'h000;
		end else if (enable_mX && num_mem[time_spent[11:8]]) begin
			pixel_game_out = 12'h000;
		end else if (enable_sXX && num_mem[time_spent[7:4]]) begin
			pixel_game_out = 12'h000;
		end else if (enable_sX && num_mem[time_spent[3:0]]) begin
			pixel_game_out = 12'h000;
		end else begin
			pixel_game_out = color;
		end
		

	end

    Game_Mem_Gen blk_mem_gen_game(
		.clka(clka),
		.addra(pixel_background_addr),
		.douta(game_mem)
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
