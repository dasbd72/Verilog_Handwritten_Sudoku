/* 
    Mouse (0, 0) at bottom right corner
    block range
    
    (639, 160)(639, 160)
    (  0, 160)(  0, 160)
 */
module MouseDraw #(
    parameter BLKSIZE   = 6'd52,
    parameter SCREENW   = 10'd640,
    parameter SCREENH   = 10'd480,
    parameter [1:0] SWAIT     = 2'd0,
    parameter [1:0] SDRAW     = 2'd1,
    parameter [1:0] SFIN      = 2'd2,
    parameter TIME      = 31'd50000000
    ) (
    input   wire            clk,
    input   wire            rst,
    input   wire [9 : 0]    MOUSE_X_POS,
    input   wire [9 : 0]    MOUSE_Y_POS,
    input   wire            MOUSE_LEFT,
    output  wire            valid,
    output  reg  [2703 : 0] track,
    output  reg  [3:0]      block_x, block_y,
    output  reg  [9:0]      block_x_pos, block_y_pos
    );

    
    reg  [1:0]      state;
    reg  [1:0]      next_state;

    reg  [31:0]     count;
    reg  [31:0]     next_count;

    wire [9:0]      mouse_x_pos;
    wire [9:0]      mouse_y_pos;
    reg  [3:0]      next_block_x;
    reg  [3:0]      next_block_y;
    reg  [2703:0]   next_track;

    /* Mouse Signal */
    reg             delayed_MOUSE_LEFT;
    wire            MOUSE_LEFT_up;

    /* Utilities */
    wire            SWAIT_2_SDRAW;
    wire            SDRAW_2_SFIN;
    wire            mouse_valid;
    reg             track_recording;
    reg  [31:0]     mouse_track_pos;

    // ========================================
    // DFFS
    // ========================================
    always @(posedge clk) begin
        if(rst) begin
            block_x             <= 4'b0;
            block_y             <= 4'b0;
            track               <= 0;
            state               <= SWAIT;
            count               <= 0;
            delayed_MOUSE_LEFT  <= 1'b0;
        end else begin
            block_x             <= next_block_x;
            block_y             <= next_block_y;
            track               <= next_track;
            state               <= next_state;
            count               <= next_count;
            delayed_MOUSE_LEFT  <= MOUSE_LEFT;
        end
    end
    // ========================================
    // Delayed
    // ========================================
    always @(posedge clk ) begin
        mouse_track_pos <= ((mouse_y_pos - block_y_pos) * BLKSIZE + (mouse_x_pos - block_x_pos));
        track_recording <=  MOUSE_LEFT && (
                            mouse_x_pos >= block_x_pos &&
                            mouse_y_pos >= block_y_pos &&
                            mouse_x_pos < block_x_pos + BLKSIZE &&
                            mouse_y_pos < block_y_pos + BLKSIZE );
    end

    // ========================================
    // State Change
    // ========================================
    always @(*) begin
        case (state)
            SWAIT: begin
                if(SWAIT_2_SDRAW) next_state = SDRAW;
                else next_state = state;
            end
            SDRAW: begin
                if(SDRAW_2_SFIN) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = state;
        endcase
    end
    
    // ========================================
    // Combinationals
    // ========================================
    assign mouse_x_pos      = SCREENW - 1 - MOUSE_X_POS;
    assign mouse_y_pos      = SCREENH - 1 - MOUSE_Y_POS;
    assign mouse_valid      = mouse_x_pos >= 160;
    assign SWAIT_2_SDRAW    = (state == SWAIT) && (MOUSE_LEFT && mouse_valid);
    assign SDRAW_2_SFIN     =  (state == SDRAW) && (count == TIME);
    assign MOUSE_LEFT_up    = delayed_MOUSE_LEFT & ~MOUSE_LEFT;
    assign valid            = (state == SFIN);
    // ====================
    // Block Calculation
    // ====================
    always @(*) begin
        if(SWAIT_2_SDRAW) begin
            if (mouse_y_pos >= 428) next_block_y        = 4'd8;
            else if (mouse_y_pos >= 374) next_block_y   = 4'd7;
            else if (mouse_y_pos >= 320) next_block_y   = 4'd6;
            else if (mouse_y_pos >= 268) next_block_y   = 4'd5;
            else if (mouse_y_pos >= 214) next_block_y   = 4'd4;
            else if (mouse_y_pos >= 160) next_block_y   = 4'd3;
            else if (mouse_y_pos >= 108) next_block_y   = 4'd2;
            else if (mouse_y_pos >= 54) next_block_y    = 4'd1;
            else if (mouse_y_pos >= 0) next_block_y     = 4'd0;
            else next_block_y = 4'd9;
        end else next_block_y = block_y;
        if(SWAIT_2_SDRAW) begin
            if (mouse_x_pos >= 588) next_block_x      = 4'd8;
            else if (mouse_x_pos >= 534) next_block_x = 4'd7;
            else if (mouse_x_pos >= 480) next_block_x = 4'd6;
            else if (mouse_x_pos >= 428) next_block_x = 4'd5;
            else if (mouse_x_pos >= 374) next_block_x = 4'd4;
            else if (mouse_x_pos >= 320) next_block_x = 4'd3;
            else if (mouse_x_pos >= 268) next_block_x = 4'd2;
            else if (mouse_x_pos >= 214) next_block_x = 4'd1;
            else if (mouse_x_pos >= 160) next_block_x = 4'd0;
            else next_block_x = 4'd9;
        end else next_block_x = block_x;
    end
    always @(*) begin
        case (block_y)
            4'd8:    block_y_pos = 10'd428;
            4'd7:    block_y_pos = 10'd374;
            4'd6:    block_y_pos = 10'd320;
            4'd5:    block_y_pos = 10'd268;
            4'd4:    block_y_pos = 10'd214;
            4'd3:    block_y_pos = 10'd160;
            4'd2:    block_y_pos = 10'd108;
            4'd1:    block_y_pos = 10'd54;
            4'd0:    block_y_pos = 10'd0;
            default: block_y_pos = 10'd0;
        endcase
        case (block_x)
            4'd8:    block_x_pos = 10'd588;
            4'd7:    block_x_pos = 10'd534;
            4'd6:    block_x_pos = 10'd480;
            4'd5:    block_x_pos = 10'd428;
            4'd4:    block_x_pos = 10'd374;
            4'd3:    block_x_pos = 10'd320;
            4'd2:    block_x_pos = 10'd268;
            4'd1:    block_x_pos = 10'd214;
            4'd0:    block_x_pos = 10'd160;
            default: block_x_pos = 10'd160;
        endcase
    end
    // ====================
    // Track Calculation
    // ====================
    always @(*) begin
        case (state)
            SWAIT: next_track = 2703'b0;
            SDRAW: begin
                if(SDRAW_2_SFIN) begin
                    next_track = track;
                end else begin
                    if(track_recording) next_track = track | (1 << mouse_track_pos); 
                    else next_track = track;
                end
            end
            SFIN:   next_track = track;
            default: next_track = track;
        endcase
    end

    // ====================
    // Counting Mouse Up time
    // ====================
    always @(*) begin
        case (state)
            SWAIT: next_count = 0;
            SDRAW: begin
                if(count != 0) begin
                    if(count == TIME) next_count = 0;
                    else begin
                        if(MOUSE_LEFT) next_count = 0;
                        else next_count = count + 1;
                    end
                end else begin
                    if(MOUSE_LEFT_up) next_count = 1;
                    else next_count = 0;
                end
            end
            SFIN: next_count = 0;
            default: next_count = 0;
        endcase
    end
    
endmodule