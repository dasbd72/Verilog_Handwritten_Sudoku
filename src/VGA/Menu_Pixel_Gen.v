module Menu_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input MOUSE_LEFT,
    input mouse_on_start_button,
    output reg [11:0] pixel_menu_out
    );

    parameter WHITE = 12'hFFF;
    parameter BLACK = 12'h000;
    parameter TOUCH = 12'h32E;
    parameter CLICK = 12'h3E2;
    parameter notCONNECT = 12'h123;
    parameter isCONNECT = 12'h567;

    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
    wire [1:0] menu_mem;

    always @(*) begin
        case (menu_mem)
            0: pixel_menu_out= WHITE;
            1: pixel_menu_out = BLACK;
            2: begin
                if (mouse_on_start_button) begin
                    if (MOUSE_LEFT) begin
                        pixel_menu_out = CLICK; 
                    end else begin
                        pixel_menu_out = TOUCH;
                    end
                end else begin
                    pixel_menu_out = BLACK;
                end
            end
            3: pixel_menu_out = notCONNECT;
            default : pixel_menu_out = BLACK;
        endcase
    end

    Menu_Mem_Gen blk_mem_gen_menu(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(menu_mem)
	); 
    
endmodule