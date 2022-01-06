module test (
    input clk,
	input btnU,
    input btnC,
    input btnR,
	input stage,
    input [3:0] in_data,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync,
	inout PS2_CLK,
	inout PS2_DATA,
    output valid,
    input [3:0] row,
    input [3:0] col
    );

    wire db_reset, db_enter, db_start;
    wire op_reset, op_enter, op_start;
    Debounce db0(clk, btnU, db_reset);
    Debounce db1(clk, btnC, db_start);
    Debounce db2(clk, btnR, db_enter);
    OnePulse op0(clk, db_reset, op_reset);
    OnePulse op1(clk, db_start, op_start);
    OnePulse op2(clk, db_enter, op_enter);


    wire [9*9*4-1:0] board;
    wire [9*9*4-1:0] init_board;
    wire [81-1:0] init_board_blank;
    wire [81-1:0] board_blank;
    wire [15:0] random;

    VGA_Top vga_top_inst(
        .clk(clk),
        .rst(op_reset),
        .stage(stage),
        .board(board),
        .board_blank(board_blank),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue),
        .hsync(hsync),
        .vsync(vsync),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA)
    );

    LFSR lfsr_inst(
        .clk(clk),
        .rst(op_reset),
        .out(random)
    );

    SudokuGenerator sudokugen_inst(
        .random(random),
        .board(init_board),
        .board_blank(init_board_blank)
    );

    Sudoku_Solver SS_inst(
        .clk(clk), 
        .reset(op_reset), 
        .start(op_start), 
        .read(op_enter), 
        .row(row), 
        .col(col), 
        .data(in_data), 
        .init_board(init_board), 
        .init_board_blank(init_board_blank), 
        .board(board), 
        .board_blank(board_blank),
        .valid(valid)
    );
    
endmodule

module Debounce(clk, in, out);
    input clk, in;
    output out;

    reg [3:0] DFF;

    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
        DFF[0] <= in;
    end
    assign out = ((DFF == 4'b1111) ? 1'b1 : 1'b0);
endmodule

module OnePulse (
	input wire clock,
	input wire signal,
	output reg signal_single_pulse
	);
	
	reg signal_delay;

	always @(posedge clock) begin
		if (signal == 1'b1 & signal_delay == 1'b0)
		  signal_single_pulse <= 1'b1;
		else
		  signal_single_pulse <= 1'b0;

		signal_delay <= signal;
	end
endmodule