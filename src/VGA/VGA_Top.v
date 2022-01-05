module VGA_Top(
	input clk,
	input rst,
	input change,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync,
	inout PS2_CLK,
	inout PS2_DATA
	);

	wire [11:0] din_game;
	wire din_menu, din_num;
	wire clk_25MHz, clk_22;
	wire valid;
	wire [9:0] h_cnt;  // 640
	wire [9:0] v_cnt;  // 480
	wire [16:0] pixel_addr;
	wire [11:0] pixel_num_addr [0:9];
	wire pixel_menu;
	wire [11:0] pixel_game;
	reg [11:0] pixel;


	wire pixel_number [0:9];
	wire enable_num_display [0:9];
	wire enable_mouse_display;
	wire [9:0] MOUSE_X_POS , MOUSE_Y_POS;
    wire MOUSE_LEFT , MOUSE_MIDDLE , MOUSE_RIGHT , MOUSE_NEW_EVENT;
    wire [3:0] mouse_cursor_red , mouse_cursor_green , mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};


	assign pixel_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	assign pixel_num_addr[0] = enable_num_display[0] ? v_cnt * 52 + h_cnt : 0;
	assign pixel_num_addr[1] = enable_num_display[1] ? v_cnt * 52 + (h_cnt-53) : 0;
	assign pixel_num_addr[2] = enable_num_display[2] ? v_cnt * 52 + (h_cnt-106) : 0;
	assign pixel_num_addr[3] = enable_num_display[3] ? v_cnt * 52 + (h_cnt-161) : 0;

	assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel : 12'h0;
	always @(*) begin
		if (enable_mouse_display) begin
			pixel = mouse_pixel;
		end else if (enable_num_display[0] && pixel_number[0]==1) begin
			pixel = 12'h000;
		end else if (enable_num_display[1] && pixel_number[1]==1) begin
			pixel = 12'h000;
		end else if (enable_num_display[2] && pixel_number[2]==1) begin
			pixel = 12'h000;
		end else if (enable_num_display[3] && pixel_number[3]==1) begin
			pixel = 12'h000;
		end else if (change) begin
			pixel = pixel_game;
		end else begin
			if (pixel_menu == 0) begin
				pixel = 12'hfff;
			end else begin
				pixel = 12'h000;
			end
		end
	end

	assign enable_num_display[0] = (0 <= h_cnt && h_cnt < 52) & (0 <= v_cnt && v_cnt < 52);
	assign enable_num_display[1] = (53 <= h_cnt && h_cnt < 53+52) & (0 <= v_cnt && v_cnt < 52);
	assign enable_num_display[2] = (106 <= h_cnt && h_cnt < 106+52) & (0 <= v_cnt && v_cnt < 52);
	assign enable_num_display[3] = (161 <= h_cnt && h_cnt < 161+52) & (0 <= v_cnt && v_cnt < 52);

	clock_divisor clk_wiz_0_inst(
		.clk(clk),
		.clk1(clk_25MHz),
		.clk22(clk_22)
	);
		
	blk_mem_gen_0 blk_mem_gen_menu(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_addr),
		.dina(din_menu),
		.douta(pixel_menu)
	); 

	blk_mem_gen_1 blk_mem_gen_game(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_addr),
		.dina(din_game[11:0]),
		.douta(pixel_game)
	); 

	num0_mem_gen num0_mem_gen_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_num_addr[0]),
		.dina(din_num),
		.douta(pixel_number[0])
	);

	num1_mem_gen num1_mem_gen_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_num_addr[1]),
		.dina(din_num),
		.douta(pixel_number[1])
	);

	num2_mem_gen num2_mem_gen_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_num_addr[2]),
		.dina(din_num),
		.douta(pixel_number[2])
	);

	num3_mem_gen num3_mem_gen_inst(
		.clka(clk_25MHz),
		.wea(0),
		.addra(pixel_num_addr[3]),
		.dina(din_num),
		.douta(pixel_number[3])
	);

	Vga_Controller vga_inst(
		.pclk(clk_25MHz),
		.reset(rst),
		.hsync(hsync),
		.vsync(vsync),
		.valid(valid),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt)
	);

	Mouse mouse_inst(
		.clk(clk),
		.h_cntr_reg(h_cnt),
		.v_cntr_reg(v_cnt),
		.enable_mouse_display(enable_mouse_display),
		.MOUSE_X_POS(MOUSE_X_POS),
		.MOUSE_Y_POS(MOUSE_Y_POS),
		.MOUSE_LEFT(MOUSE_LEFT),
		.MOUSE_MIDDLE(MOUSE_MIDDLE),
		.MOUSE_RIGHT(MOUSE_RIGHT),
		.MOUSE_NEW_EVENT(MOUSE_NEW_EVENT),
		.mouse_cursor_red(mouse_cursor_red),
		.mouse_cursor_green(mouse_cursor_green),
		.mouse_cursor_blue(mouse_cursor_blue),
		.PS2_CLK(PS2_CLK),
		.PS2_DATA(PS2_DATA)
	);
      
endmodule
