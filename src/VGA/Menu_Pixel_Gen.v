module Menu_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input connected,
    input MOUSE_LEFT,
    input mouse_on_start_button,
    input mouse_on_connect_button,
    output reg [11:0] pixel_menu_out
    );

    parameter WHITE = 12'hFFF;
    parameter BLACK = 12'h000;
    parameter TOUCH = 12'h32E;
    parameter CLICK = 12'h3E2;
    parameter isCONNECT = 12'h567;

    wire [18:0] pixel_background_addr = h_cnt + 640 * v_cnt;
    wire [1:0] menu_mem;

    always @(*) begin
        case (menu_mem)
            0: pixel_menu_out = BLACK;
            1: pixel_menu_out = WHITE;
            2: begin
                if (v_cnt < 310) begin // Start button
                    if (mouse_on_start_button) begin
                        if (MOUSE_LEFT) begin
                            pixel_menu_out = CLICK; 
                        end else begin
                            pixel_menu_out = TOUCH;
                        end
                    end else begin
                        pixel_menu_out = BLACK;
                    end    
                end else begin // Connect button
                    if (connected) begin
                        pixel_menu_out = isCONNECT;
                    end else if (mouse_on_connect_button) begin
                        if (MOUSE_LEFT) begin
                            pixel_menu_out = CLICK; 
                        end else begin
                            pixel_menu_out = TOUCH;
                        end
                    end else begin
                        pixel_menu_out = BLACK;
                    end    
                end
            end
            3: pixel_menu_out = WHITE;
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