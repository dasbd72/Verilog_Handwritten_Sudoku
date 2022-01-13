module Sudoku_Solver #(
    parameter SIZE  = 81*4,
    parameter SWAIT = 2'd0,
    parameter SGAME = 2'd1,
    parameter SFIN  = 2'd2,
    parameter CFIN  = 32'd500000000
    ) (
    input wire              clk,
    input wire              reset,
    input wire              start,
    input wire              read,
    input wire [3:0]        data,
    input wire [3:0]        row,
    input wire [3:0]        col,
    input wire [9:0]        MOUSE_X_POS,
    input wire [9:0]        MOUSE_Y_POS,
    input wire              MOUSE_MIDDLE,
    input wire              MOUSE_RIGHT,
    input wire [81*4-1:0]   init_board,
    input wire [81-1:0]     init_board_blank,
    output reg [81*4-1:0]   board,
    output reg [81-1:0]     board_blank,
    output reg              valid
    );
    
    reg  [1:0]  state;
    reg  [1:0]  next_state;
    reg  [31:0] count;
    reg  [31:0] next_count;

    reg  [81*4-1:0] next_board;
    wire [81*4-1:0] next_board_game;
    reg  [81-1:0]   next_board_blank;

    reg  [3:0] row_next;
    reg  [3:0] col_next;
    reg  [3:0] data_next;
    reg  [3:0] data_reg;
    reg  [3:0] next_data_reg;

    wire next_valid;

    /* Mouse */
    wire [3:0] mouse_row, mouse_col; 
    Cnt_to_Row_Col MtR_inst(MOUSE_Y_POS, mouse_row);
	Cnt_to_Row_Col MtC_inst(MOUSE_X_POS, mouse_col);

    /*  Game end or not */    
    wire [0:8] row_valid, col_valid, blk_valid;
    wire board_correct;

    /* mouse btn signal */
    reg  MOUSE_RIGHT_delay;
    wire MOUSE_RIGHT_up;
    reg  MOUSE_MIDDLE_delay;
    wire MOUSE_MIDDLE_up;

    // ==========================
    // DFF
    // ==========================
    always @(posedge clk) begin
        if (reset) begin
            state       <= SWAIT;
            count       <= 0;
            board       <= 0;
            board_blank <= 0;
            data_reg    <= 0;
            valid       <= 0;
        end else begin
            state       <= next_state;
            count       <= next_count;
            board       <= next_board;
            board_blank <= next_board_blank;
            data_reg    <= next_data_reg;
            valid       <= next_valid;
        end
    end
    always @(posedge clk ) begin
        MOUSE_RIGHT_delay <= MOUSE_RIGHT;
        MOUSE_MIDDLE_delay <= MOUSE_MIDDLE;
    end

    // ==========================
    // Combinationals
    // ==========================
    assign board_correct = (&row_valid) & (&col_valid) & (&blk_valid);
    assign MOUSE_RIGHT_up = MOUSE_RIGHT_delay & ~MOUSE_RIGHT;
    assign MOUSE_MIDDLE_up = MOUSE_MIDDLE_delay & ~MOUSE_MIDDLE;

    assign next_valid = (state == SFIN && count == CFIN);

    /* state */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start)           next_state = SGAME;
                else                next_state = state;
            end
            SGAME: begin
                if(board_correct)   next_state = SFIN;
                else                next_state = state;
            end
            SFIN: begin
                if(count == CFIN)   next_state = SWAIT;
                else                next_state = state;
            end
            default:                next_state = state;
        endcase
    end
    /* count */
    always @(*) begin
        case (state)
            SGAME: begin
                if(board_correct)   next_count = 1;
                else                next_count = 0;
            end 
            SFIN: begin
                if(count == CFIN)   next_count = 0;
                else                next_count = count + 1;
            end
            default:                next_count = 0;
        endcase
    end
    /* board */
    genvar i;
    generate
        for(i = 0; i < 81; i=i+1) begin
            assign next_board_game[(i+1)*4-1-:4] = (i == col_next + (row_next * 9)) ? data_next : board[(i+1)*4-1-:4];
        end
    endgenerate
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_board = init_board;
                else      next_board = 0;
            end
            SGAME: begin
                if(board_correct) next_board = board;
                else              next_board = next_board_game;
            end
            SFIN:  next_board          = board;
            default: next_board        = board;
        endcase
    end
    /* board blank */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_board_blank = init_board_blank;
                else      next_board_blank = 0;
            end
            default:    next_board_blank    = board_blank;
        endcase
    end
    /* data_reg */
    always @(*) begin
        case (state)
            SWAIT: next_data_reg = 0;
            SGAME: begin
                if(read) next_data_reg = data;
                else next_data_reg = data_reg;
            end
            default: next_data_reg = data_reg;
        endcase
    end


    // ==========================
    // data
    // ==========================
    always @(*) begin
        if (read && board_blank[row*9+col]) begin
            row_next = row;
            col_next = col;
            data_next = data;
        end else if (MOUSE_MIDDLE_up && board_blank[mouse_row*9+mouse_col]) begin
            row_next = mouse_row;
            col_next = mouse_col;
            data_next = 0;
        end else if (MOUSE_RIGHT_up && board_blank[mouse_row*9+mouse_col]) begin
            row_next = mouse_row;
            col_next = mouse_col;
            data_next = data_reg;
        end else begin
            row_next = row;
            col_next = col;
            data_next = board[(row_next*9+col_next)*4+3-:4];
        end
    end

    // ------------- Row ------------- 
    Check_Valid CV_row0(row_valid[0], board[SIZE-1-:4], board[SIZE-5-:4], board[SIZE-9-:4], board[SIZE-13-:4], 
                        board[SIZE-17-:4], board[SIZE-21-:4], board[SIZE-25-:4], board[SIZE-29-:4], board[SIZE-33-:4]); 
    Check_Valid CV_row1(row_valid[1], board[SIZE-37-:4], board[SIZE-41-:4], board[SIZE-45-:4], board[SIZE-49-:4], 
                        board[SIZE-53-:4], board[SIZE-57-:4], board[SIZE-61-:4], board[SIZE-65-:4], board[SIZE-69-:4]); 
    Check_Valid CV_row2(row_valid[2], board[SIZE-73-:4], board[SIZE-77-:4], board[SIZE-81-:4], board[SIZE-85-:4], 
                        board[SIZE-89-:4], board[SIZE-93-:4], board[SIZE-97-:4], board[SIZE-101-:4], board[SIZE-105-:4]);
    Check_Valid CV_row3(row_valid[3], board[SIZE-109-:4], board[SIZE-113-:4], board[SIZE-117-:4], board[SIZE-121-:4], 
                        board[SIZE-125-:4], board[SIZE-129-:4], board[SIZE-133-:4], board[SIZE-137-:4], board[SIZE-141-:4]);
    Check_Valid CV_row4(row_valid[4], board[SIZE-145-:4], board[SIZE-149-:4], board[SIZE-153-:4], board[SIZE-157-:4], 
                        board[SIZE-161-:4], board[SIZE-165-:4], board[SIZE-169-:4], board[SIZE-173-:4], board[SIZE-177-:4]);
    Check_Valid CV_row5(row_valid[5], board[SIZE-181-:4], board[SIZE-185-:4], board[SIZE-189-:4], board[SIZE-193-:4], 
                        board[SIZE-197-:4], board[SIZE-201-:4], board[SIZE-205-:4], board[SIZE-209-:4], board[SIZE-213-:4]);
    Check_Valid CV_row6(row_valid[6], board[SIZE-217-:4], board[SIZE-221-:4], board[SIZE-225-:4], board[SIZE-229-:4], 
                        board[SIZE-233-:4], board[SIZE-237-:4], board[SIZE-241-:4], board[SIZE-245-:4], board[SIZE-249-:4]);
    Check_Valid CV_row7(row_valid[7], board[SIZE-253-:4], board[SIZE-257-:4], board[SIZE-261-:4], board[SIZE-265-:4], 
                        board[SIZE-269-:4], board[SIZE-273-:4], board[SIZE-277-:4], board[SIZE-281-:4], board[SIZE-285-:4]);
    Check_Valid CV_row8(row_valid[8], board[SIZE-289-:4], board[SIZE-293-:4], board[SIZE-297-:4], board[SIZE-301-:4], 
                        board[SIZE-305-:4], board[SIZE-309-:4], board[SIZE-313-:4], board[SIZE-317-:4], board[SIZE-321-:4]);
    // ------------- Column ------------- 
    Check_Valid CV_col0(col_valid[0], board[SIZE-1-:4], board[SIZE-37-:4], board[SIZE-73-:4], board[SIZE-109-:4], 
                        board[SIZE-145-:4], board[SIZE-181-:4], board[SIZE-217-:4], board[SIZE-253-:4], board[SIZE-289-:4]);
    Check_Valid CV_col1(col_valid[1], board[SIZE-5-:4], board[SIZE-41-:4], board[SIZE-77-:4], board[SIZE-113-:4], 
                        board[SIZE-149-:4], board[SIZE-185-:4], board[SIZE-221-:4], board[SIZE-257-:4], board[SIZE-293-:4]);
    Check_Valid CV_col2(col_valid[2], board[SIZE-9-:4], board[SIZE-45-:4], board[SIZE-81-:4], board[SIZE-117-:4], 
                        board[SIZE-153-:4], board[SIZE-189-:4], board[SIZE-225-:4], board[SIZE-261-:4], board[SIZE-297-:4]);
    Check_Valid CV_col3(col_valid[3], board[SIZE-13-:4], board[SIZE-49-:4], board[SIZE-85-:4], board[SIZE-121-:4], 
                        board[SIZE-157-:4], board[SIZE-193-:4], board[SIZE-229-:4], board[SIZE-265-:4], board[SIZE-301-:4]);
    Check_Valid CV_col4(col_valid[4], board[SIZE-17-:4], board[SIZE-53-:4], board[SIZE-89-:4], board[SIZE-125-:4], 
                        board[SIZE-161-:4], board[SIZE-197-:4], board[SIZE-233-:4], board[SIZE-269-:4], board[SIZE-305-:4]);
    Check_Valid CV_col5(col_valid[5], board[SIZE-21-:4], board[SIZE-57-:4], board[SIZE-93-:4], board[SIZE-129-:4], 
                        board[SIZE-165-:4], board[SIZE-201-:4], board[SIZE-237-:4], board[SIZE-273-:4], board[SIZE-309-:4]);
    Check_Valid CV_col6(col_valid[6], board[SIZE-25-:4], board[SIZE-61-:4], board[SIZE-97-:4], board[SIZE-133-:4], 
                        board[SIZE-169-:4], board[SIZE-205-:4], board[SIZE-241-:4], board[SIZE-277-:4], board[SIZE-313-:4]);
    Check_Valid CV_col7(col_valid[7], board[SIZE-29-:4], board[SIZE-65-:4], board[SIZE-101-:4], board[SIZE-137-:4], 
                        board[SIZE-173-:4], board[SIZE-209-:4], board[SIZE-245-:4], board[SIZE-281-:4], board[SIZE-317-:4]);
    Check_Valid CV_col8(col_valid[8], board[SIZE-33-:4], board[SIZE-69-:4], board[SIZE-105-:4], board[SIZE-141-:4], 
                        board[SIZE-177-:4], board[SIZE-213-:4], board[SIZE-249-:4], board[SIZE-285-:4], board[SIZE-321-:4]);
    // ------------- Block ------------- 
    Check_Valid CV_blk0(blk_valid[0], board[SIZE-1-:4], board[SIZE-5-:4], board[SIZE-9-:4], board[SIZE-37-:4], 
                        board[SIZE-41-:4], board[SIZE-45-:4], board[SIZE-73-:4], board[SIZE-77-:4], board[SIZE-81-:4]);
    Check_Valid CV_blk1(blk_valid[1], board[SIZE-13-:4], board[SIZE-17-:4], board[SIZE-21-:4], board[SIZE-49-:4], 
                        board[SIZE-53-:4], board[SIZE-57-:4], board[SIZE-85-:4], board[SIZE-89-:4], board[SIZE-93-:4]);
    Check_Valid CV_blk2(blk_valid[2], board[SIZE-25-:4], board[SIZE-29-:4], board[SIZE-33-:4], board[SIZE-61-:4], 
                        board[SIZE-65-:4], board[SIZE-69-:4], board[SIZE-97-:4], board[SIZE-101-:4], board[SIZE-105-:4]);
    Check_Valid CV_blk3(blk_valid[3], board[SIZE-109-:4], board[SIZE-113-:4], board[SIZE-117-:4], board[SIZE-145-:4], 
                        board[SIZE-149-:4], board[SIZE-153-:4], board[SIZE-181-:4], board[SIZE-185-:4], board[SIZE-189-:4]);
    Check_Valid CV_blk4(blk_valid[4], board[SIZE-121-:4], board[SIZE-125-:4], board[SIZE-129-:4], board[SIZE-157-:4], 
                        board[SIZE-161-:4], board[SIZE-165-:4], board[SIZE-193-:4], board[SIZE-197-:4], board[SIZE-201-:4]);
    Check_Valid CV_blk5(blk_valid[5], board[SIZE-133-:4], board[SIZE-137-:4], board[SIZE-141-:4], board[SIZE-169-:4], 
                        board[SIZE-173-:4], board[SIZE-177-:4], board[SIZE-205-:4], board[SIZE-209-:4], board[SIZE-213-:4]);
    Check_Valid CV_blk6(blk_valid[6], board[SIZE-217-:4], board[SIZE-221-:4], board[SIZE-225-:4], board[SIZE-253-:4], 
                        board[SIZE-257-:4], board[SIZE-261-:4], board[SIZE-289-:4], board[SIZE-293-:4], board[SIZE-297-:4]);
    Check_Valid CV_blk7(blk_valid[7], board[SIZE-229-:4], board[SIZE-233-:4], board[SIZE-237-:4], board[SIZE-265-:4], 
                        board[SIZE-269-:4], board[SIZE-273-:4], board[SIZE-301-:4], board[SIZE-305-:4], board[SIZE-309-:4]);
    Check_Valid CV_blk8(blk_valid[8], board[SIZE-241-:4], board[SIZE-245-:4], board[SIZE-249-:4], board[SIZE-277-:4], 
                        board[SIZE-281-:4], board[SIZE-285-:4], board[SIZE-313-:4], board[SIZE-317-:4], board[SIZE-321-:4]);
    
endmodule

module Check_Valid (valid, d0, d1, d2, d3, d4, d5, d6, d7, d8);
    input [3:0] d0, d1, d2, d3, d4, d5, d6, d7, d8;
    output valid;

    wire [8:0] valid_data;

    assign valid = valid_data == 9'b1_1111_1111;
    assign valid_data[0] = d0 != 0 & !(d0 == d1 | d0 == d2 | d0 == d3 | d0 == d4 | d0 == d5 | d0 == d6 | d0 == d7 | d0 == d8);
    assign valid_data[1] = d1 != 0 & !(d1 == d0 | d1 == d2 | d1 == d3 | d1 == d4 | d1 == d5 | d1 == d6 | d1 == d7 | d1 == d8);
    assign valid_data[2] = d2 != 0 & !(d2 == d1 | d2 == d0 | d2 == d3 | d2 == d4 | d2 == d5 | d2 == d6 | d2 == d7 | d2 == d8);
    assign valid_data[3] = d3 != 0 & !(d3 == d1 | d3 == d2 | d3 == d0 | d3 == d4 | d3 == d5 | d3 == d6 | d3 == d7 | d3 == d8);
    assign valid_data[4] = d4 != 0 & !(d4 == d1 | d4 == d2 | d4 == d3 | d4 == d0 | d4 == d5 | d4 == d6 | d4 == d7 | d4 == d8);
    assign valid_data[5] = d5 != 0 & !(d5 == d1 | d5 == d2 | d5 == d3 | d5 == d4 | d5 == d0 | d5 == d6 | d5 == d7 | d5 == d8);
    assign valid_data[6] = d6 != 0 & !(d6 == d1 | d6 == d2 | d6 == d3 | d6 == d4 | d6 == d5 | d6 == d0 | d6 == d7 | d6 == d8);
    assign valid_data[7] = d7 != 0 & !(d7 == d1 | d7 == d2 | d7 == d3 | d7 == d4 | d7 == d5 | d7 == d6 | d7 == d0 | d7 == d8);
    assign valid_data[8] = d8 != 0 & !(d8 == d1 | d8 == d2 | d8 == d3 | d8 == d4 | d8 == d5 | d8 == d6 | d8 == d7 | d8 == d0);
    
endmodule