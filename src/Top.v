module TOP (
    input clk,
	input btnU, 
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
    output [15:0] LED,
    output [3:0] an,
    output [6:0] seg,
    input receive_connect,
    input receive_start,
    input receive_game_finish,
    output send_connect,
    output send_start,
    output send_game_finish,
	output hsync,
	output vsync,
	inout PS2_CLK,
	inout PS2_DATA,

    output pmod_1,
	output pmod_2,
	output pmod_4
    );


    wire db_reset, op_reset;
    Debounce db0(clk, btnU, db_reset);
    OnePulse op0(clk, db_reset, op_reset);

    wire clka;
    wire [9*9*4-1:0] board;
    wire [9*9*4-1:0] init_board;
    wire [81-1:0] init_board_blank;
    wire [81-1:0] board_blank;
    wire [15:0] random;
    wire [9:0] h_cnt;
    wire [9:0] v_cnt;

    wire [2703:0] track;
    wire enable_mouse_display;
    wire enable_track_display_out;
	wire [9:0] MOUSE_X_POS , MOUSE_Y_POS;
    wire MOUSE_LEFT , MOUSE_MIDDLE , MOUSE_RIGHT , MOUSE_NEW_EVENT;
    wire [3:0] mouse_cursor_red , mouse_cursor_green , mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};
    wire [3:0] block_x, block_y;
    wire [9:0] block_x_pos, block_y_pos;
    wire [3:0] red_out, green_out, blue_out;

    wire start_predict, start_read;
    wire status; // Master:0 or slave:1
    wire game_init;
    wire mouse_on_start_button;
    wire mouse_on_connect_button;
    wire mouse_on_return_button;

    wire [1:0] State;
    wire [3:0] predicted_number;

    assign an = 4'b1110;
    assign pmod_4 = State == 1;
    Seven_seg sevenseg_inst(
        .status(status),
        .seg(seg)
    );

    Stage stage_inst(
        .clk(clk),
        .reset(op_reset),
        .MOUSE_LEFT(MOUSE_LEFT),
        .game_finish(send_game_finish),
        .mouse_on_start_button(mouse_on_start_button),
        .mouse_on_connect_button(mouse_on_connect_button),
        .mouse_on_return_button(mouse_on_return_button),
        /* ======================= */
        .receive_connect(receive_connect),
        .receive_start(receive_start),
        .receive_game_finish(receive_game_finish),
        .send_connect(send_connect),
        .send_start(send_start),
        /* ======================= */
        .game_init(game_init),
        .status(status),
        .State(State)
    );

    LED_Controller ledcontroller_inst(
        .clk(clk),
        .rst(op_reset),
        .State(State),
        .LED(LED)
    );

    Clock_VGA clock_vga_inst(
		.clk(clk),
		.clka(clka)
	);

    MouseClick mouseclick_inst(
        .clka(clka),
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .mouse_on_start_button(mouse_on_start_button),
        .mouse_on_connect_button(mouse_on_connect_button),
        .mouse_on_return_button(mouse_on_return_button)
    );

    Vga_Top vga_top_inst(
        .clka(clka),
        .rst(op_reset),
        .state(State),
        .receive_connect(receive_connect),
        .send_connect(send_connect),
        .MOUSE_LEFT(MOUSE_LEFT),
        .enable_mouse_display(enable_mouse_display),
        .enable_track_display_out(enable_track_display_out),
        .mouse_on_start_button(mouse_on_start_button),
        .mouse_on_connect_button(mouse_on_connect_button),
        .mouse_on_return_button(mouse_on_return_button),
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
        .start(game_init), 
        .read(start_read), 
        .data(predicted_number),
        .row(block_y), 
        .col(block_x), 
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .MOUSE_MIDDLE(MOUSE_MIDDLE),
        .MOUSE_RIGHT(MOUSE_RIGHT), 
        .init_board(init_board), 
        .init_board_blank(init_board_blank), 
        .board(board), 
        .board_blank(board_blank),
        .valid(send_game_finish)
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

    MouseDraw mousedraw_inst(
        .clk(clk),
        .rst(op_reset),
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .MOUSE_LEFT(MOUSE_LEFT),
        .valid(start_predict),
        .track(track),
        .block_x(block_x),
        .block_y(block_y),
        .block_x_pos(block_x_pos),
        .block_y_pos(block_y_pos)
    );

    MouseTrackDisplay mousetrackdisplay_inst(
        .clk(clk),
        .block_x_pos(block_x_pos),
        .block_y_pos(block_y_pos),
        .track(track),
        .hcount(h_cnt),
        .vcount(v_cnt),
        .enable_track_display_out(enable_track_display_out),
        .red_out(red_out),
        .green_out(green_out),
        .blue_out(blue_out)
    );

    Predict predict_inst(
        .clk(clk),
        .rst(op_reset),
        .start(start_predict),
        .track_input(track),
        .predicted_number(predicted_number),
        .finish(start_read)
    );

    Music_Top music_inst(
        .clk(clk),
        .reset(op_reset),
        .pmod_1(pmod_1),
        .pmod_2(pmod_2)
    );

endmodule