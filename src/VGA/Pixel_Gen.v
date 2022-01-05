module Pixel_Gen (h_cnt, v_cnt, clka, state, pixel);
    input [9:0] h_cnt; 
	input [9:0] v_cnt; 
    input clka;
    input state;
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
	wire [11:0] pixel_num_addr [0:9];

    // ==========================
    // Number display enable signals
    // ==========================
	wire [0:9] enable_num_display;

    // ==========================
    // different Pixels
    // ==========================
	wire [11:0] pixel_game;
	wire pixel_menu;
    wire [0:9] pixel_number;

    // --------------- Address assign --------------- // 
    assign pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	assign pixel_num_addr[0] = enable_num_display[0] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[0]) : 0;
	assign pixel_num_addr[1] = enable_num_display[1] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[1]) : 0;
	assign pixel_num_addr[2] = enable_num_display[2] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[2]) : 0;
	assign pixel_num_addr[3] = enable_num_display[3] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[3]) : 0;
	assign pixel_num_addr[4] = enable_num_display[4] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[4]) : 0;
	assign pixel_num_addr[5] = enable_num_display[5] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[5]) : 0;
	assign pixel_num_addr[6] = enable_num_display[6] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[6]) : 0;
	assign pixel_num_addr[7] = enable_num_display[7] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[7]) : 0;
	assign pixel_num_addr[8] = enable_num_display[8] ? (v_cnt-blk_pos[0]) * SIZE + (h_cnt-blk_pos[8]) : 0;
	assign pixel_num_addr[9] = enable_num_display[9] ? (v_cnt-blk_pos[1]) * SIZE + (h_cnt-blk_pos[0]) : 0;
	
    // --------------- Enable number signals assign --------------- // 
    assign enable_num_display[0] = (blk_pos[0] <= h_cnt && h_cnt < blk_pos[0]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[1] = (blk_pos[1] <= h_cnt && h_cnt < blk_pos[1]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[2] = (blk_pos[2] <= h_cnt && h_cnt < blk_pos[2]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[3] = (blk_pos[3] <= h_cnt && h_cnt < blk_pos[3]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[4] = (blk_pos[4] <= h_cnt && h_cnt < blk_pos[4]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[5] = (blk_pos[5] <= h_cnt && h_cnt < blk_pos[5]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[6] = (blk_pos[6] <= h_cnt && h_cnt < blk_pos[6]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[7] = (blk_pos[7] <= h_cnt && h_cnt < blk_pos[7]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[8] = (blk_pos[8] <= h_cnt && h_cnt < blk_pos[8]+SIZE) & (blk_pos[0] <= v_cnt && v_cnt < blk_pos[0]+SIZE);
	assign enable_num_display[9] = (blk_pos[0] <= h_cnt && h_cnt < blk_pos[0]+SIZE) & (blk_pos[1] <= v_cnt && v_cnt < blk_pos[1]+SIZE);


    always @(*) begin
		if (state == Menu) begin
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