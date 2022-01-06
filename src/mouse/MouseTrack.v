/* 
    Mouse (0, 0) at bottom right corner
    block range
    
    (639, 160)(639, 160)
    (  0, 160)(  0, 160)
 */
module MouseDraw #(
    parameter SIZE = 52,
    parameter W = 640,
    parameter H = 480
    ) (
    input   wire            clk,
    input   wire            rst,
    input   wire [9 : 0]    MOUSE_X_POS,
    input   wire [9 : 0]    MOUSE_Y_POS,
    input   wire            MOUSE_LEFT,
    output  reg             valid,
    output  reg  [6 : 0]    block_pos,
    output  reg  [2703 : 0] track
    );

    localparam SWAIT = 2'd0;
    localparam SDRAW = 2'd1;
    localparam SFIN  = 2'd2;
    localparam MAXTIME = 31'd150000000; // 10**8
    reg  [1:0]      state, next_state;
    reg  [31:0]     count, next_count;

    wire [9:0]      mouse_x, mouse_y;
    wire [3:0]      block_x, block_y;
    wire [9:0]      block_x_pos, block_y_pos;
    reg  [6:0]      next_block_pos;
    reg  [2703:0]   next_track;

    // Condition Signal
    wire            SWAIT_2_SDRAW;
    wire            SDRAW_2_SFIN;
    reg             next_valid;
    wire            mouse_valid;
    wire            track_enable;

    always @(posedge clk) begin
        if(rst) begin
            valid       <= 1'b0;
            block_pos   <= 0;
            track       <= 0;
            state       <= SWAIT;
            count       <= 32'b0;
        end else begin
            valid       <= next_valid;
            block_pos   <= next_block_pos;
            track       <= next_track;
            state       <= next_state;
            count       <= next_count;
        end
    end
    
    assign mouse_x = W - 1 - MOUSE_X_POS;
    assign mouse_y = H - 1 - MOUSE_Y_POS;
    assign mouse_valid = mouse_x >= 160;
    assign track_enable = MOUSE_LEFT && 
                        (MOUSE_X_POS >= block_x * SIZE) && 
                        (MOUSE_Y_POS >= block_y * SIZE) && 
                        (MOUSE_X_POS < (block_x + 1) * SIZE) && 
                        (MOUSE_Y_POS < (block_y + 1) * SIZE);
    assign block_x = MOUSE_X_POS / SIZE;
    assign block_y = MOUSE_Y_POS / SIZE;
    assign SWAIT_2_SDRAW = MOUSE_LEFT && mouse_valid;
    assign SDRAW_2_SFIN = (count == (MAXTIME-1));

    // ============
    // Track Calculation
    // ============
    always @(*) begin
        case (state)
            SWAIT: begin
                next_track = 2703'b0;
            end
            SDRAW: begin
                if(SDRAW_2_SFIN) begin
                    next_track = track;
                end else begin
                    if(track_enable) begin
                        next_track[(MOUSE_Y_POS - block_y * SIZE) * SIZE + (MOUSE_X_POS - block_x * SIZE)] = 1'b1;
                    end 
                    else begin
                        next_track = track;
                    end
                end
            end
            default: begin
                next_track = 2703'b0;
            end
        endcase
    end
    // ============
    // SIGNALS
    // ============
    always @(*) begin
        case (state)
            SDRAW: begin
                if(SDRAW_2_SFIN) next_valid = 1'b1;
                else next_valid = 1'b0;
            end
            default: next_valid = 1'b0;
        endcase

        case (state)
            SWAIT: next_block_pos = block_y * 9 + block_x;
            default: next_block_pos = block_pos;
        endcase
    end
    // ============
    // State Change
    // ============
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
            default: next_state = SWAIT;
        endcase
    end

    // ============
    // Counting Drawing Continuing time
    // ============
    always @(*) begin
        case (state)
            SDRAW: next_count = count + 32'b1;
            default: next_count = 32'b0;
        endcase
    end
endmodule