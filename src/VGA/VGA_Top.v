module VGA_Top(
	input clk,
	input [1:0] State,
	input rst,
	input change,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync
	);

	wire [11:0] din_game;
	wire din_menu;
	wire clk_25MHz;
	wire clk_22;
	wire valid;
	wire [9:0] h_cnt;  // 640
	wire [9:0] v_cnt;  // 480
	wire [16:0] pixel_addr;
	reg [11:0] pixel;
	wire pixel_menu;
	wire [11:0] pixel_game;
	wire [11:0] pixel_number;
	wire [11:0] pixel_out;

	assign pixel_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
	assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel : 12'h0;
	always @(*) begin
		if (change) begin
			pixel = pixel_game;
		end else begin
			if (pixel_menu == 0) begin
				pixel = 12'hfff;
			end else begin
				pixel = 12'h000;
			end
		end
	end

	clock_divisor clk_wiz_0_inst(
		.clk(clk),
		.clk1(clk_25MHz),
		.clk22(clk_22)
	);

	Number_Pixel_Gen number_pixel_gen_inst(
       .h_cnt(h_cnt),
	   .v_cnt(v_cnt),
	   .index(index),
	   .number(number),
	   .pixel(pixel_number)
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

	Vga_Controller vga_inst(
		.pclk(clk_25MHz),
		.reset(rst),
		.hsync(hsync),
		.vsync(vsync),
		.valid(valid),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt)
	);
      
endmodule
