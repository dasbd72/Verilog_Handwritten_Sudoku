module Sudoku_Solver (clk, start, row, col, data, valid, done);
    input clk;
    input start;
    input row, col;
    input data;
    output reg valid;
    output reg done;

    reg [10:0] board [0:8][0:8];

endmodule