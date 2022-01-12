module Over_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input MOUSE_LEFT,
    input mouse_on_return_button,
    output reg [11:0] pixel_over_out
    );

    parameter WHITE = 12'hFFF;
    parameter BLACK = 12'h000;
    parameter TOUCH = 12'h32E;
    parameter CLICK = 12'h3E2;

    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 320 * (v_cnt>>1)) % 76800;
    wire [1:0] over_mem;

    always @(*) begin
        case (over_mem)
            0: pixel_over_out= WHITE;
            1: pixel_over_out = BLACK;
            2: begin
                if (mouse_on_return_button) begin
                    if (MOUSE_LEFT) begin
                        pixel_over_out = CLICK; 
                    end else begin
                        pixel_over_out = TOUCH;
                    end
                end else begin
                    pixel_over_out = BLACK;
                end
            end
            default : pixel_over_out = BLACK;
        endcase
    end

    Over_Mem_Gen blk_mem_gen_over(
		.clka(clka),
		.wea(0),
		.addra(pixel_background_addr),
		.dina(0),
		.douta(over_mem)
	); 

endmodule