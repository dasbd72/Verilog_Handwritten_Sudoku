module Sudoku_Solver (
    input clk,
    input reset,
    input start,
    input read,
    input [3:0] row,
    input [3:0] col,
    input [3:0] data,
    input [81*4-1:0] init_board,
    input [81-1:0]   board_blank,
    output reg [81*4-1:0] board,
    output reg valid
    );
    
    parameter SIZE = 81*4;

    // ==========================
    // Row and column
    // ==========================
    reg [3:0] data_next;
    reg [3:0] row_next;
    reg [3:0] col_next;

    // ==========================
    // Check the sudoku is valid
    // ==========================
    // ------------- Row ------------- 
    wire [0:8] row_valid;
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
    wire [0:8] col_valid;
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
    wire [0:8] blk_valid;
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
    // ------------- Board ------------- 
    wire board_valid = (row_valid == 9'b111111111) & (col_valid == 9'b111111111) & (blk_valid == 9'b111111111);

    // ==========================
    // Clock update
    // ==========================
    always @(posedge clk) begin
        if (reset) begin
            board <= 0;
        end else if (start) begin 
            board <= init_board;
        end else begin    
            board[(row_next*9+col_next)*4+3-:4] <= data_next;
        end
    end

    // ==========================
    // State operations
    // ==========================
    always @(*) begin
        if (read && board_blank[row*9+col]) begin
            data_next = data;
            row_next = row;
            col_next = col;
        end else begin
            row_next = row_next;
            col_next =col_next;
            data_next = board[(row_next*9+col_next)*4+3-:4];
        end
    end
    
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