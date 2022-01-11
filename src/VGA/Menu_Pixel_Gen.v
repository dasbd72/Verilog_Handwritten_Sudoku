module Menu_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    output [11:0] pixel_menu_out
    );

    parameter [11:0] color [0:2] = {
        12'hFFF, // White
        12'h000, // Black
        12'h32E
    };

    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
    wire [1:0] menu_mem;
    
    assign pixel_menu_out = color[menu_mem];

    Menu_Mem_Gen blk_mem_gen_menu(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(menu_mem)
	); 
    
endmodule