module Game_Pixel_Gen(
        input clka,
        input [9:0] h_cnt,
        input [9:0] v_cnt,
        input [9*9-1:0] board_blank,
	    input [9*9*4-1:0] board,
        output reg [11:0] pixel_game_out
    );

	parameter SIZE = 52;
    parameter [9:0] blk_pos [8:0] = {0, 53, 106, 161, 214, 267, 322, 375, 428};
    parameter [11:0] color [0:4] = {
        12'h23A,
        12'h019,
        12'hD99,
        12'hC77,
        12'h106
    };

    // --------------- Enable number signals --------------- // 
	wire enable_num_display = (h_cnt < 480) & board[(row*9+col)*4+3-:4] != 0;
    // ==========================
    // Address for pixel
    // ==========================
    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	wire [11:0] pixel_num_addr = enable_num_display ? (v_cnt-blk_pos[row]) * SIZE + (h_cnt-blk_pos[col]) : 0;

    // ==========================
    // Memory of game background and number
    // ==========================
	wire [3:0] game_mem;
    wire num_mem [1:9];
    
    // ==========================
    // Pixel of game background
    // ==========================
    wire [11:0] pixel_game;

    // ==========================
    // Row and column
    // ==========================
	wire [3:0] row;
	wire [3:0] col;
	Cnt_to_Row_Col CtR_inst(v_cnt, row);
	Cnt_to_Row_Col CtC_inst(h_cnt, col);

    always @(*) begin
		if (num_mem[board[(row*9+col)*4+3-:4]]) begin
            if (board_blank[row*9+col]) begin
                pixel_game_out = 12'h000;
            end else begin
                pixel_game_out = 12'he00;
            end
		end else begin
			pixel_game_out = color[game_mem];
		end
	end

    Game_Mem_Gen blk_mem_gen_game(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(game_mem)
	); 

	Num1_Mem_Gen num1_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[1])
	);

	Num2_Mem_Gen num2_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[2])
	);

	Num3_Mem_Gen num3_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[3])
	);

	Num4_Mem_Gen num4_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[4])
	);

	Num5_Mem_Gen num5_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[5])
	);

	Num6_Mem_Gen num6_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[6])
	);

	Num7_Mem_Gen num7_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[7])
	);

	Num8_Mem_Gen num8_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[8])
	);

	Num9_Mem_Gen num9_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr),
		.dina(0),
		.douta(num_mem[9])
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