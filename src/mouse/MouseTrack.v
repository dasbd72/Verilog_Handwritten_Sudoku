/* 
    Mouse (0, 0) at bottom right corner
    block range
    
    (639, 160)(639, 160)
    (  0, 160)(  0, 160)
 */
module MouseDraw #(
    parameter BLKSIZE   = 52,
    parameter SCREENW   = 640,
    parameter SCREENH   = 480,
    parameter SWAIT     = 2'd0,
    parameter SDRAW     = 2'd1,
    parameter SFIN      = 2'd2,
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

    reg             next_valid;
    reg             delayed_MOUSE_LEFT;
    wire            MOUSE_LEFT_up;

    wire            SWAIT_2_SDRAW;
    wire            SDRAW_2_SFIN;
    wire            mouse_valid;
    wire            track_recording;

    always @(posedge clk) begin
        if(rst) begin
            block_x             <= 0;
            block_y             <= 0;
            track               <= 0;
            state               <= SWAIT;
            count               <= 0;
            delayed_MOUSE_LEFT  <= 0;
        end else begin
            block_x             <= next_block_x;
            block_y             <= next_block_y;
            track               <= next_track;
            state               <= next_state;
            count               <= next_count;
            delayed_MOUSE_LEFT  <= MOUSE_LEFT;
        end
    end
    
    assign mouse_x_pos      = SCREENW - 1 - MOUSE_X_POS;
    assign mouse_y_pos      = SCREENH - 1 - MOUSE_Y_POS;
    assign mouse_valid      = mouse_x_pos >= 160;
    assign track_recording  =   MOUSE_LEFT && (
                                mouse_x_pos >= block_x_pos &&
                                mouse_y_pos >= block_y_pos &&
                                mouse_x_pos < block_x_pos + BLKSIZE &&
                                mouse_y_pos < block_y_pos + BLKSIZE );
    assign SWAIT_2_SDRAW    = (state == SWAIT) && (MOUSE_LEFT && mouse_valid);
    assign SDRAW_2_SFIN     =  (state == SDRAW) && (count == TIME);
    assign MOUSE_LEFT_up    = delayed_MOUSE_LEFT & ~MOUSE_LEFT;
    assign valid            = (state == SFIN);

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
    /* Block Calculation */
    always @(*) begin
        if(SWAIT_2_SDRAW) begin
            if (mouse_y_pos >= 428) next_block_y = 8;
            else if (mouse_y_pos >= 374) next_block_y = 7;
            else if (mouse_y_pos >= 320) next_block_y = 6;
            else if (mouse_y_pos >= 268) next_block_y = 5;
            else if (mouse_y_pos >= 214) next_block_y = 4;
            else if (mouse_y_pos >= 160) next_block_y = 3;
            else if (mouse_y_pos >= 108) next_block_y = 2;
            else if (mouse_y_pos >= 54) next_block_y = 1;
            else if (mouse_y_pos >= 0) next_block_y = 0;
            else next_block_y = 9;
        end else next_block_y = block_y;
        if(SWAIT_2_SDRAW) begin
            if (mouse_x_pos >= 588) next_block_x = 8;
            else if (mouse_x_pos >= 534) next_block_x = 7;
            else if (mouse_x_pos >= 480) next_block_x = 6;
            else if (mouse_x_pos >= 428) next_block_x = 5;
            else if (mouse_x_pos >= 374) next_block_x = 4;
            else if (mouse_x_pos >= 320) next_block_x = 3;
            else if (mouse_x_pos >= 268) next_block_x = 2;
            else if (mouse_x_pos >= 214) next_block_x = 1;
            else if (mouse_x_pos >= 160) next_block_x = 0;
            else next_block_x = 9;
        end else next_block_x = block_x;

        if (block_y == 8) block_y_pos = 428;
        else if (block_y == 7) block_y_pos = 374;
        else if (block_y == 6) block_y_pos = 320;
        else if (block_y == 5) block_y_pos = 268;
        else if (block_y == 4) block_y_pos = 214;
        else if (block_y == 3) block_y_pos = 160;
        else if (block_y == 2) block_y_pos = 108;
        else if (block_y == 1) block_y_pos = 54;
        else if (block_y == 0) block_y_pos = 0;
        else block_y_pos = 0;

        if (block_x == 8) block_x_pos = 588;
        else if (block_x == 7) block_x_pos = 534;
        else if (block_x == 6) block_x_pos = 480;
        else if (block_x == 5) block_x_pos = 428;
        else if (block_x == 4) block_x_pos = 374;
        else if (block_x == 3) block_x_pos = 320;
        else if (block_x == 2) block_x_pos = 268;
        else if (block_x == 1) block_x_pos = 214;
        else if (block_x == 0) block_x_pos = 160;
        else block_x_pos = 0;
    end
    // ========================================
    // Track Calculation
    // ========================================
    always @(*) begin
        case (state)
            SWAIT: next_track = 2703'b0;
            SDRAW: begin
                if(SDRAW_2_SFIN) begin
                    next_track = track;
                end else begin
                    if(track_recording) next_track = track | (1 << ((mouse_y_pos - block_y_pos) * BLKSIZE + (mouse_x_pos - block_x_pos))); 
                    else next_track = track;
                end
            end
            SFIN:   next_track = 0;
            default: next_track = track;
        endcase
    end

    // ========================================
    // Counting Mouse Up time
    // ========================================
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