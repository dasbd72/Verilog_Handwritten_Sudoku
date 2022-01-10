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
    input [3:0] col,

    output pmod_1,
	output pmod_2,
	output pmod_4
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
    wire [9:0] h_cnt;
    wire [9:0] v_cnt;

    wire enable_mouse_display;
	wire [9:0] MOUSE_X_POS , MOUSE_Y_POS;
    wire MOUSE_LEFT , MOUSE_MIDDLE , MOUSE_RIGHT , MOUSE_NEW_EVENT;
    wire [3:0] mouse_cursor_red , mouse_cursor_green , mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};

    Vga_Top vga_top_inst(
        .clk(clk),
        .rst(op_reset),
        .stage(stage),
        .enable_mouse_display(enable_mouse_display),
        .mouse_pixel(mouse_pixel),
        .board(board),
        .board_blank(board_blank),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .hsync(hsync),
        .vsync(vsync)
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

    Sudoku_Solver sudoku_solver_inst(
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

    Mouse mouse_inst(
		.clk(clk),
		.h_cntr_reg(h_cnt),
		.v_cntr_reg(v_cnt),
		.enable_mouse_display(enable_mouse_display),
		.MOUSE_X_POS(MOUSE_X_POS),
		.MOUSE_Y_POS(MOUSE_Y_POS),
		.MOUSE_LEFT(MOUSE_LEFT),
		.MOUSE_MIDDLE(MOUSE_MIDDLE),
		.MOUSE_RIGHT(MOUSE_RIGHT),
		.MOUSE_NEW_EVENT(MOUSE_NEW_EVENT),
		.mouse_cursor_red(mouse_cursor_red),
		.mouse_cursor_green(mouse_cursor_green),
		.mouse_cursor_blue(mouse_cursor_blue),
		.PS2_CLK(PS2_CLK),
		.PS2_DATA(PS2_DATA)
	);

    Music_Top music_inst(
        .clk(clk),
        .reset(op_reset),
        .pmod_1(pmod_1),
        .pmod_2(pmod_2),
        .pmod_4(pmod_4)
    );

endmodule