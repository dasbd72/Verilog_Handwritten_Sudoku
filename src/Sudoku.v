module Sudoku_Solver (clk, start, reset, data, valid, done);
    input clk;
    input reset;
    input start;
    input [10:0] data;
    output reg valid;
    output reg done;
    
    // ==========================
    // Store the current 9x9 board 
    // ==========================
    reg [10:0] board [0:8][0:8]; // The most significant bit [10] indicates empty
    reg [10:0] data_in;

    // ==========================
    // State parameters
    // ==========================
    reg State, State_next;
    parameter Read =  0;
    parameter Finish = 1;

    // ==========================
    // The current reading position
    // ==========================
    reg  [6:0] grid_count, grid_count_next;
    assign row = grid_count / 9;
    assign col = grid_count % 9;

    // ==========================
    // Check the sudoku is valid
    // ==========================
    // ------------- Row ------------- 
    wire [0:8] row_vaild;
    Check_Valid CV_row0(row_vaild[0], board[0][0], board[0][1], board[0][2], board[0][3], board[0][4], board[0][5], board[0][6], board[0][7], board[0][8]);
    Check_Valid CV_row1(row_vaild[1], board[1][0], board[1][1], board[1][2], board[1][3], board[1][4], board[1][5], board[1][6], board[1][7], board[1][8]);
    Check_Valid CV_row2(row_vaild[2], board[2][0], board[2][1], board[2][2], board[2][3], board[2][4], board[2][5], board[2][6], board[2][7], board[2][8]);
    Check_Valid CV_row3(row_vaild[3], board[3][0], board[3][1], board[3][2], board[3][3], board[3][4], board[3][5], board[3][6], board[3][7], board[3][8]);
    Check_Valid CV_row4(row_vaild[4], board[4][0], board[4][1], board[4][2], board[4][3], board[4][4], board[4][5], board[4][6], board[4][7], board[4][8]);
    Check_Valid CV_row5(row_vaild[5], board[5][0], board[5][1], board[5][2], board[5][3], board[5][4], board[5][5], board[5][6], board[5][7], board[5][8]);
    Check_Valid CV_row6(row_vaild[6], board[6][0], board[6][1], board[6][2], board[6][3], board[6][4], board[6][5], board[6][6], board[6][7], board[6][8]);
    Check_Valid CV_row7(row_vaild[7], board[7][0], board[7][1], board[7][2], board[7][3], board[7][4], board[7][5], board[7][6], board[7][7], board[7][8]);
    Check_Valid CV_row8(row_vaild[8], board[8][0], board[8][1], board[8][2], board[8][3], board[8][4], board[8][5], board[8][6], board[8][7], board[8][8]);
    // ------------- Column ------------- 
    wire [0:8] col_vaild;
    Check_Valid CV_col0(col_vaild[0], board[0][0], board[1][0], board[2][0], board[3][0], board[4][0], board[5][0], board[6][0], board[7][0], board[8][0]);
    Check_Valid CV_col1(col_vaild[1], board[0][1], board[1][1], board[2][1], board[3][1], board[4][1], board[5][1], board[6][1], board[7][1], board[8][1]);
    Check_Valid CV_col2(col_vaild[2], board[0][2], board[1][2], board[2][2], board[3][2], board[4][2], board[5][2], board[6][2], board[7][2], board[8][2]);
    Check_Valid CV_col3(col_vaild[3], board[0][3], board[1][3], board[2][3], board[3][3], board[4][3], board[5][3], board[6][3], board[7][3], board[8][3]);
    Check_Valid CV_col4(col_vaild[4], board[0][4], board[1][4], board[2][4], board[3][4], board[4][4], board[5][4], board[6][4], board[7][4], board[8][4]);
    Check_Valid CV_col5(col_vaild[5], board[0][5], board[1][5], board[2][5], board[3][5], board[4][5], board[5][5], board[6][5], board[7][5], board[8][5]);
    Check_Valid CV_col6(col_vaild[6], board[0][6], board[1][6], board[2][6], board[3][6], board[4][6], board[5][6], board[6][6], board[7][6], board[8][6]);
    Check_Valid CV_col7(col_vaild[7], board[0][7], board[1][7], board[2][7], board[3][7], board[4][7], board[5][7], board[6][7], board[7][7], board[8][7]);
    Check_Valid CV_col8(col_vaild[8], board[0][8], board[1][8], board[2][8], board[3][8], board[4][8], board[5][8], board[6][8], board[7][8], board[8][8]);
    // ------------- Block ------------- 
    wire [0:8] blk_valid;
    Check_Valid CV_blk0(blk_valid[0], board[0][0], board[0][1], board[0][2], board[1][0], board[1][1], board[1][2], board[2][0], board[2][1], board[2][2]);
    Check_Valid CV_blk1(blk_valid[1], board[0][3], board[0][4], board[0][5], board[1][3], board[1][4], board[1][5], board[2][3], board[2][4], board[2][5]);
    Check_Valid CV_blk2(blk_valid[2], board[0][6], board[0][7], board[0][8], board[1][6], board[1][7], board[1][8], board[2][6], board[2][7], board[2][8]);
    Check_Valid CV_blk3(blk_valid[3], board[3][0], board[3][1], board[3][2], board[4][0], board[4][1], board[4][2], board[5][0], board[5][1], board[5][2]);
    Check_Valid CV_blk4(blk_valid[4], board[3][3], board[3][4], board[3][5], board[4][3], board[4][4], board[4][5], board[5][3], board[5][4], board[5][5]);
    Check_Valid CV_blk5(blk_valid[5], board[3][6], board[3][7], board[3][8], board[4][6], board[4][7], board[4][8], board[5][6], board[5][7], board[5][8]);
    Check_Valid CV_blk6(blk_valid[6], board[6][0], board[6][1], board[6][2], board[7][0], board[7][1], board[7][2], board[8][0], board[8][1], board[8][2]);
    Check_Valid CV_blk7(blk_valid[7], board[6][3], board[6][4], board[6][5], board[7][3], board[7][4], board[7][5], board[8][3], board[8][4], board[8][5]);
    Check_Valid CV_blk8(blk_valid[8], board[6][6], board[6][7], board[6][8], board[7][6], board[7][7], board[7][8], board[8][6], board[8][7], board[8][8]);
    // ------------- Board ------------- 
    wire board_valid = (row_vaild == 9'b111111111) & (col_vaild == 9'b111111111) & (blk_valid == 9'b111111111);

    // ==========================
    // Clock update
    // ==========================
    always @(posedge clk) begin
        if (reset) begin
            State <= Read;
            board[row][col] <= board[row][col];
            grid_count <= 0;
        end else begin    
            State <= State_next;
            board[row][col] <= data_in;
            grid_count <= grid_count_next;
        end
    end

    // ==========================
    // State operations
    // ==========================
    always @(*) begin
        case (State)
            // ----------------- Read -----------------
            Read: begin
                /* Start reading data one by one */
                if (start) begin
                    /* Fetch the input data */
                    data_in = data;
                    /* Finish read the last grid */
                    if (grid_count == 81 - 1) begin
                        State_next = Finish;
                        grid_count_next = 0;
                    /* Read the next grid */
                    end else begin
                        State_next = Read;
                        grid_count_next = grid_count + 1;
                    end
                    valid = 0;
                    done = 0;
                end else begin
                    valid = valid;
                    done = done;
                    data_in = board[row][col];
                    State_next = Read;
                    grid_count_next = grid_count;
                end
            end
            // ----------------- Finish -----------------
            Finish: begin
                if (start) State_next = Read;
                else State_next = Finish;
                data_in = board[row][col];
                grid_count_next = grid_count_next;
                valid = board_valid;
                done = 1;
            end
            // ----------------- ----- -----------------
            default: begin
                valid = 0;
                done = 0;
                data_in = board[row][col];
                State_next = Read;
                grid_count_next = 0;
            end
        endcase
    end
    
endmodule

module Check_Valid (valid, data0, data1, data2, data3, data4, data5, data6, data7, data8);
    input [10:0] data0, data1, data2;
    input [10:0] data3, data4, data5;
    input [10:0] data6, data7, data8;
    output valid;

    wire [0:8] have_same;
    wire [0:8] valid_data;

    Check_Same cs0(have_same[0], data0, data1, data2, data3, data4, data5, data6, data7, data8);
    Check_Same cs1(have_same[1], data1, data0, data2, data3, data4, data5, data6, data7, data8);
    Check_Same cs2(have_same[2], data2, data1, data0, data3, data4, data5, data6, data7, data8);
    Check_Same cs3(have_same[3], data3, data1, data2, data0, data4, data5, data6, data7, data8);
    Check_Same cs4(have_same[4], data4, data1, data2, data3, data0, data5, data6, data7, data8);
    Check_Same cs5(have_same[5], data5, data1, data2, data3, data4, data0, data6, data7, data8);
    Check_Same cs6(have_same[6], data6, data1, data2, data3, data4, data5, data0, data7, data8);
    Check_Same cs7(have_same[7], data7, data1, data2, data3, data4, data5, data6, data0, data8);
    Check_Same cs8(have_same[8], data8, data1, data2, data3, data4, data5, data6, data7, data0);

    assign valid = valid_data == 9'b1_1111_1111;
    assign valid_data[0] = data0[10] | (!data0[10] & !have_same[0]);
    assign valid_data[1] = data1[10] | (!data1[10] & !have_same[1]);
    assign valid_data[2] = data2[10] | (!data2[10] & !have_same[2]);
    assign valid_data[3] = data3[10] | (!data3[10] & !have_same[3]);
    assign valid_data[4] = data4[10] | (!data4[10] & !have_same[4]);
    assign valid_data[5] = data5[10] | (!data5[10] & !have_same[5]);
    assign valid_data[6] = data6[10] | (!data6[10] & !have_same[6]);
    assign valid_data[7] = data7[10] | (!data7[10] & !have_same[7]);
    assign valid_data[8] = data8[10] | (!data8[10] & !have_same[8]);
    
endmodule

module Check_Same (same, target, data1, data2, data3, data4, data5, data6, data7, data8);
    input [10:0] target, data1, data2;
    input [10:0] data3, data4, data5;
    input [10:0] data6, data7, data8;
    output same;

    assign same = target[9:0] == data1[9:0] | target[9:0] == data2[9:0] | target[9:0] == data3[9:0] |
                  target[9:0] == data4[9:0] | target[9:0] == data5[9:0] | target[9:0] == data6[9:0] |
                  target[9:0] == data7[9:0] | target[9:0] == data8[9:0];

endmodule