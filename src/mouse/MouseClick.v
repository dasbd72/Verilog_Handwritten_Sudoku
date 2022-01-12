module MouseClick (
	input clka,
    input [9:0] MOUSE_X_POS,
    input [9:0] MOUSE_Y_POS,
    output mouse_on_start_button,
	output mouse_on_connect_button,
    output mouse_on_return_button
    );

    wire [16:0] pixel_addr = ((MOUSE_X_POS>>1) + 320 * (MOUSE_Y_POS>>1)) % 76800;
    wire [1:0] menu_mem, over_mem;
    
    assign mouse_on_start_button = MOUSE_Y_POS < 310 & (menu_mem == 2 || menu_mem == 3); 
	assign mouse_on_connect_button = MOUSE_Y_POS >= 310 & (menu_mem == 2 || menu_mem == 3);
    assign mouse_on_return_button = over_mem == 2; 

    Menu_Mem_Gen blk_mem_gen_menu2(
		.clka(clka),
		.wea(0),
		.addra(pixel_addr),
		.dina(0),
		.douta(menu_mem)
	); 

    Over_Mem_Gen blk_mem_gen_over2(
		.clka(clka),
		.wea(0),
		.addra(pixel_addr),
		.dina(0),
		.douta(over_mem)
	); 
    
endmodule