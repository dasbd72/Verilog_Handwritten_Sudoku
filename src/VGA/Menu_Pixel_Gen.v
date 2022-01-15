module Menu_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input receive_connect,
    input send_connect,
    input MOUSE_LEFT,
    input mouse_on_start_button,
    input mouse_on_connect_button,
    output reg [11:0] pixel_menu_out
    );

    parameter WHITE = 12'hFFF;
    parameter BLACK = 12'h000;
    parameter TOUCH = 12'h32E;
    parameter CLICK = 12'hDD2;
    parameter RECEIVE_CONNECT = 12'h7FF;
    parameter SEND_CONNECT = 12'h456;
    parameter isCONNECT = 12'h1E1;

    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 10'd320 * (v_cnt>>1)) % 76800;
    wire [1:0] menu_mem;

    always @(*) begin
        case (menu_mem)
            2'd0: pixel_menu_out = BLACK;
            2'd1: pixel_menu_out = WHITE;
            2'd2: begin
                if (v_cnt < 10'd310) begin // Start button
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
                    if (receive_connect & send_connect) begin
                        pixel_menu_out = isCONNECT;
                    end else if (receive_connect) begin 
                        if (mouse_on_connect_button & MOUSE_LEFT) begin
                            pixel_menu_out = CLICK; 
                        end else begin
                            pixel_menu_out = RECEIVE_CONNECT;
                        end
                    end else if (send_connect) begin
                        pixel_menu_out = SEND_CONNECT;
                    end else if (mouse_on_connect_button) begin
                        if (MOUSE_LEFT) begin
                            pixel_menu_out = CLICK; 
                        end else begin
                            pixel_menu_out = TOUCH;
                        end
                    end  else begin
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
		.addra(pixel_background_addr),
		.douta(menu_mem)
	); 
    
endmodule