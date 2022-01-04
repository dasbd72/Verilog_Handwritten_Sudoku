module Sudoku_Solver (clk, reading, data, valid, done);
    input clk;
    input reading;
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
    reg [1:0] State, State_next;
    parameter [1:0] Read =  2'd0;
    parameter [1:0] Solve = 2'd1;
    parameter [1:0] Write = 2'd2;

    // ==========================
    // The current reading position
    // ==========================
    reg  [6:0] grid_count, grid_count_next;
    wire [3:0] row = grid_count % 9;
    wire [3:0] col = grid_count / 9;

    // ==========================
    // Check the sudoku is valid
    // ==========================
    reg [0:8] row_vaild;
    reg [0:8] col_vaild;
    reg [0:8] block_valid;

    // ==========================
    // Clock update
    // ==========================
    always @(posedge clk) begin
        State <= State_next;
        board[row][col] <= data_in;
        grid_count <= grid_count_next;
    end

    // ==========================
    // State operations
    // ==========================
    always @(*) begin
        case (State)
            // ----------------- Read -----------------
            Read: begin
                /* Reading data one by one */
                if (reading) begin
                    /* Fetch the input data */
                    data_in = data;
                    /* Finish read the last grid */
                    if (grid_count == 81 - 1) begin
                        State_next = Solve;
                        grid_count_next = 0;
                    /* Read the next grid */
                    end else begin
                        State_next = Read;
                        grid_count_next = grid_count + 1;
                    end
                end else begin
                    data_in = board[row][col];
                    State_next = Read;
                    grid_count_next = grid_count_next;
                end
            end
            // ----------------- Solve -----------------
            Solve: begin
                data_in = board[row][col];
                State_next = Write;
                grid_count_next = grid_count_next;
            end
            // ----------------- Write -----------------
            Write: begin
                data_in = board[row][col];
                State_next = Read;
                grid_count_next = grid_count_next;
            end
            // ----------------- ----- -----------------
            default: begin
                data_in = board[row][col];
                State_next = Read;
                grid_count_next = grid_count_next;
            end
        endcase
    end

endmodule

module check_valid (valid, data0, data1, data2, data3, data4, data5, data6, data7, data8);
    output valid;
    input [10:0] data0, data1, data2;
    input [10:0] data3, data4, data5;
    input [10:0] data6, data7, data8;

    wire have_same0, have_same1, have_same2;
    wire have_same3, have_same4, have_same5;
    wire have_same6, have_same7, have_same8;

    check_same cs0(have_same0, data0, data1, data2, data3, data4, data5, data6, data7, data8);
    check_same cs1(have_same1, data1, data0, data2, data3, data4, data5, data6, data7, data8);
    check_same cs2(have_same2, data2, data1, data0, data3, data4, data5, data6, data7, data8);
    check_same cs3(have_same3, data3, data1, data2, data0, data4, data5, data6, data7, data8);
    check_same cs4(have_same4, data4, data1, data2, data3, data0, data5, data6, data7, data8);
    check_same cs5(have_same5, data5, data1, data2, data3, data4, data0, data6, data7, data8);
    check_same cs6(have_same6, data6, data1, data2, data3, data4, data5, data0, data7, data8);
    check_same cs7(have_same7, data7, data1, data2, data3, data4, data5, data6, data0, data8);
    check_same cs8(have_same8, data8, data1, data2, data3, data4, data5, data6, data7, data0);

    wire valid_data0 = data0[10] | (!data0[10] & have_same0);
    wire valid_data1 = data1[10] | (!data1[10] & have_same1);
    wire valid_data2 = data2[10] | (!data2[10] & have_same2);
    wire valid_data3 = data3[10] | (!data3[10] & have_same3);
    wire valid_data4 = data4[10] | (!data4[10] & have_same4);
    wire valid_data5 = data5[10] | (!data5[10] & have_same5);
    wire valid_data6 = data6[10] | (!data6[10] & have_same6);
    wire valid_data7 = data7[10] | (!data7[10] & have_same7);
    wire valid_data8 = data8[10] | (!data8[10] & have_same8);
    
endmodule

module check_same (same, target, data1, data2, data3, data4, data5, data6, data7, data8);
    output valid;
    input [10:0] target, data1, data2;
    input [10:0] data3, data4, data5;
    input [10:0] data6, data7, data8;

    assign valid = (target[10]) | 

    assign same = (target[9:0] == data1[9:0]) | (target[9:0] == data2[9:0]) | (target[9:0] == data3[9:0]) |
                  (target[9:0] == data4[9:0]) | (target[9:0] == data5[9:0]) | (target[9:0] == data6[9:0]) |
                  (target[9:0] == data7[9:0]) | (target[9:0] == data8[9:0]);

endmodule