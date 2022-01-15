module Over_Pixel_Gen (
    input clka,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input MOUSE_LEFT,
    input mouse_on_return_button,
    output [3:0] enable_time_over,
    output reg [11:0] pixel_num_addr,
    output reg [11:0] pixel_over_out
    );

    parameter WHITE = 12'hFFF;
    parameter BLACK = 12'h000;
    parameter TOUCH = 12'h32E;
    parameter CLICK = 12'hDD2;

    parameter SIZE = 10'd52;

    wire [16:0] pixel_background_addr = ((h_cnt>>1) + 10'd320 * (v_cnt>>1)) % 76800;
    wire [1:0] over_mem;

    assign enable_time_over[3] = (h_cnt >= 10'd213 & h_cnt < 10'd265 & v_cnt >= 10'd210 & v_cnt < 10'd262);
	assign enable_time_over[2] = (h_cnt >= 10'd266 & h_cnt < 10'd318 & v_cnt >= 10'd210 & v_cnt < 10'd262);
	assign enable_time_over[1] = (h_cnt >= 10'd322 & h_cnt < 10'd374 & v_cnt >= 10'd210 & v_cnt < 10'd262);
	assign enable_time_over[0] = (h_cnt >= 10'd375 & h_cnt < 10'd427 & v_cnt >= 10'd210 & v_cnt < 10'd262);

    always @(*) begin
		if (enable_time_over[3]) begin
			pixel_num_addr = (v_cnt-10'd210) * SIZE + (h_cnt-10'd213);
		end else if (enable_time_over[2]) begin
			pixel_num_addr = (v_cnt-10'd210) * SIZE + (h_cnt-10'd266);
		end else if (enable_time_over[1]) begin
			pixel_num_addr = (v_cnt-10'd210) * SIZE + (h_cnt-10'd322);
		end else if (enable_time_over[0]) begin
			pixel_num_addr = (v_cnt-10'd210) * SIZE + (h_cnt-10'd375);
		end else begin
			pixel_num_addr = 0;
		end
	end

    always @(*) begin
        case (over_mem)
            0: pixel_over_out = BLACK;
            1: pixel_over_out = WHITE;
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
            3: pixel_over_out = WHITE;
            default : pixel_over_out = BLACK;
        endcase
    end

    Over_Mem_Gen blk_mem_gen_over(
		.clka(clka),
		.addra(pixel_background_addr),
		.douta(over_mem)
	); 

endmodule