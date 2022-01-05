module Pixel_Gen (h_cnt, v_cnt, clka, stage, board, pixel);
    input [9:0] h_cnt; 
	input [9:0] v_cnt; 	
    input clka;
    input stage;
	input [9*9*4-1:0] board;
    output reg [11:0] pixel;

	parameter SIZE = 52;
	parameter Menu = 0;
	parameter Game = 1;

	parameter [9:0] blk_pos [0:8] = {
		0, 53, 106, 161, 214, 267, 322, 375, 428
	};

    // ==========================
    // Address for pixel
    // ==========================
    wire [16:0] pixel_background_addr;
	wire pixel_num_addr;

    // ==========================
    // Number display enable signals
    // ==========================
	wire enable_num_display;

    // ==========================
    // different Pixels
    // ==========================
	wire [11:0] pixel_game;
	wire pixel_menu;
    wire [0:9] pixel_number;

	// ==========================
    // Row and column
    // ==========================
	reg [3:0] row;
	reg [3:0] col;

	always @(*) begin
		if (h_cnt <= 51) begin
			row = 4'h0;
		end else if (h_cnt <= 105) begin
			row = 4'h1;
		end else if (h_cnt <= 159) begin
			row = 4'h2;
		end else if (h_cnt <= 211) begin
			row = 4'h3;
		end else if (h_cnt <= 265) begin
			row = 4'h4;
		end else if (h_cnt <= 319) begin
			row = 4'h5;
		end else if (h_cnt <= 371) begin
			row = 4'h6;
		end else if (h_cnt <= 425) begin
			row = 4'h7;
		end else if (h_cnt <= 479) begin
			row = 4'h8;
		end else begin
			row = 4'hf;
		end
	end 

	always @(*) begin
		if (v_cnt <= 51) begin
			col = 4'h0;
		end else if (v_cnt <= 105) begin
			col = 4'h1;
		end else if (v_cnt <= 159) begin
			col = 4'h2;
		end else if (v_cnt <= 211) begin
			col = 4'h3;
		end else if (v_cnt <= 265) begin
			col = 4'h4;
		end else if (v_cnt <= 319) begin
			col = 4'h5;
		end else if (v_cnt <= 371) begin
			col = 4'h6;
		end else if (v_cnt <= 425) begin
			col = 4'h7;
		end else if (v_cnt <= 479) begin
			col = 4'h8;
		end else begin
			col = 4'hf;
		end
	end 

    // --------------- Address assign --------------- // 
    assign pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	always @(*) begin
		if (enable_num_display == 0) begin
			pixel_num_addr = 0;
		end else begin
			pixel_num_addr = enable_num_display ? (v_cnt-blk_pos[col]) * SIZE + (h_cnt-blk_pos[row]) : 0;
		end
	end
	
    // --------------- Enable number signals assign --------------- // 
	always @(*) begin
		if (col == 4'hf) begin
			enable_num_display = 0;
		end else begin
			enable_num_display = (blk_pos[row] <= h_cnt && h_cnt < blk_pos[row]+SIZE) & (blk_pos[col] <= v_cnt && v_cnt < blk_pos[col]+SIZE);
		end
	end

    always @(*) begin
		if (stage == Menu) begin
			pixel = (pixel_menu) ? 12'h000 : 12'hfff;
		end else begin
			if (pixel_number == 0) begin
				pixel = pixel_game;
			end else begin
				pixel = 12'h000;
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
		.addra(pixel_num_addr[0]),
		.dina(0),
		.douta(pixel_number[0])
	);

	Num1_Mem_Gen num1_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[1]),
		.dina(0),
		.douta(pixel_number[1])
	);

	Num2_Mem_Gen num2_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[2]),
		.dina(0),
		.douta(pixel_number[2])
	);

	Num3_Mem_Gen num3_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[3]),
		.dina(0),
		.douta(pixel_number[3])
	);

	Num4_Mem_Gen num4_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[4]),
		.dina(0),
		.douta(pixel_number[4])
	);

	Num5_Mem_Gen num5_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[5]),
		.dina(0),
		.douta(pixel_number[5])
	);

	Num6_Mem_Gen num6_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[6]),
		.dina(0),
		.douta(pixel_number[6])
	);

	Num7_Mem_Gen num7_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[7]),
		.dina(0),
		.douta(pixel_number[7])
	);

	Num8_Mem_Gen num8_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[8]),
		.dina(0),
		.douta(pixel_number[8])
	);

	Num9_Mem_Gen num9_mem_gen_inst(
		.clka(clka),
		.wea(0),
		.addra(pixel_num_addr[9]),
		.dina(0),
		.douta(pixel_number[9])
	);

endmodule