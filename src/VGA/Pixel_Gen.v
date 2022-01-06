module Pixel_Gen (h_cnt, v_cnt, clka, stage, board_blank, board, pixel);
    input [9:0] h_cnt; 
	input [9:0] v_cnt; 	
    input clka;
    input stage;
	input [9*9-1:0] board_blank;
	input [9*9*4-1:0] board;
    output reg [11:0] pixel;

	parameter SIZE = 52;
	parameter Menu = 0;
	parameter Game = 1;

	parameter [9:0] blk_pos [8:0] = {
		0, 53, 106, 161, 214, 267, 322, 375, 428
	};

    // ==========================
    // Address for pixel
    // ==========================
    wire [16:0] pixel_background_addr;
	wire [11:0] pixel_num_addr;

    // ==========================
    // Number display enable signals
    // ==========================
	wire enable_num_display;

    // ==========================
    // different Pixels
    // ==========================
	wire [11:0] pixel_game;
	wire pixel_menu;
    wire pixel_number [1:9];

	// ==========================
    // Row and column
    // ==========================
	wire [3:0] row;
	wire [3:0] col;
	Cnt_to_Row_Col CtR(v_cnt, row);
	Cnt_to_Row_Col CtC(h_cnt, col);

    // --------------- Address assign --------------- // 
    assign pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	assign pixel_num_addr = enable_num_display ? (v_cnt-blk_pos[row]) * SIZE + (h_cnt-blk_pos[col]) : 0;
	
    // --------------- Enable number signals assign --------------- // 
	assign enable_num_display = (h_cnt < 480) & board[(row*9+col)*4+3-:4] != 0;

    always @(*) begin
		if (stage == Menu) begin
			pixel = (pixel_menu) ? 12'h000 : 12'hfff;
		end else begin
			if (pixel_number[board[(row*9+col)*4+3-:4]]) begin
				if (board_blank[row*9+col]) begin
					pixel = 12'h000;
				end else begin
					pixel = 12'he00;
				end
			end else begin
				pixel = pixel_game;
			end
		end
	end

    Menu_Mem_Gen blk_mem_gen_menu(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(pixel_menu)
	); 

	Game_Mem_Gen blk_mem_gen_game(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(pixel_game)
	); 

	Num0_Mem_Gen num0_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[0])
	);

	Num1_Mem_Gen num1_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[1])
	);

	Num2_Mem_Gen num2_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[2])
	);

	Num3_Mem_Gen num3_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[3])
	);

	Num4_Mem_Gen num4_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[4])
	);

	Num5_Mem_Gen num5_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[5])
	);

	Num6_Mem_Gen num6_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[6])
	);

	Num7_Mem_Gen num7_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[7])
	);

	Num8_Mem_Gen num8_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[8])
	);

	Num9_Mem_Gen num9_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(pixel_number[9])
	);

endmodule

module Cnt_to_Row_Col (cnt, out);
	input [9:0] cnt;
	output reg [3:0] out;

	always @(*) begin
		if (cnt <= 51) begin
			out = 4'h8;
		end else if (cnt <= 105) begin
			out = 4'h7;
		end else if (cnt <= 159) begin
			out = 4'h6;
		end else if (cnt <= 211) begin
			out = 4'h5;
		end else if (cnt <= 265) begin
			out = 4'h4;
		end else if (cnt <= 319) begin
			out = 4'h3;
		end else if (cnt <= 371) begin
			out = 4'h2;
		end else if (cnt <= 425) begin
			out = 4'h1;
		end else if (cnt <= 479) begin
			out = 4'h0;
		end else begin
			out = 4'hf;
		end
	end 

endmodule