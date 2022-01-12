module TOP (
    input clk,
	input btnU,
    input [3:0] in_data,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
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

    wire [9*9*4-1:0] board;
    wire [9*9*4-1:0] init_board;
    wire [81-1:0] init_board_blank;
    wire [81-1:0] board_blank;
    wire [15:0] random;
    wire [9:0] h_cnt;
    wire [9:0] v_cnt;

    wire clka;
    wire enable_mouse_display;
	wire [9:0] MOUSE_X_POS , MOUSE_Y_POS;
    wire MOUSE_LEFT , MOUSE_MIDDLE , MOUSE_RIGHT , MOUSE_NEW_EVENT;
    wire [3:0] mouse_cursor_red , mouse_cursor_green , mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};

    wire start;
    reg game_init;
    wire [2703:0] track;
    wire [3:0] block_x, block_y;
    wire [9:0] block_x_pos, block_y_pos;
    wire enable_track_display_out;
    wire mouse_on_start_button;
    wire mouse_on_return_button;
    wire [3:0] red_out, green_out, blue_out;

    reg [1:0] State, State_next;
    parameter [1:0] SMENU = 2'd0;
    parameter [1:0] SGAME = 2'd1;
    parameter [1:0] SOVER = 2'd2;
    always @(posedge clk) begin
        if (op_reset) begin
            State <= SMENU;
        end else if (!MOUSE_LEFT) begin
            State <= State_next;
        end else begin
            State <= State;
        end
    end

    always @(*) begin
        case (State)
            SMENU: begin 
                if (mouse_on_start_button && MOUSE_LEFT) begin
                    State_next = SGAME;
                end else begin
                    State_next = SMENU;
                end
                game_init = 1;
            end
            SGAME: begin 
                if (valid) begin
                    State_next = SOVER;
                end else begin
                    State_next = SGAME;
                end
                game_init = 0;
            end
            SOVER: begin 
                if (mouse_on_return_button && MOUSE_LEFT) begin
                    State_next = SMENU;
                end else begin
                    State_next = SOVER;
                end
                game_init = 1;
            end
            default: begin
                State_next = SMENU;
                game_init = 1;
            end
        endcase
    
    end


    Clock_VGA clock_vga_inst(
		.clk(clk),
		.clka(clka)
	);

    MouseClick mouseclick_inst(
        .clka(clka),
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .mouse_on_start_button(mouse_on_start_button),
        .mouse_on_return_button(mouse_on_return_button)
    );

    Vga_Top vga_top_inst(
        .clka(clka),
        .rst(op_reset),
        .state(State),
        .MOUSE_LEFT(MOUSE_LEFT),
        .enable_mouse_display(enable_mouse_display),
        .enable_track_display_out(enable_track_display_out),
        .mouse_on_start_button(mouse_on_start_button),
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
        .read(start), 
        .row(block_y), 
        .col(block_x), 
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

    MouseDraw mousedraw_inst(
        .clk(clk),
        .rst(op_reset),
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .MOUSE_LEFT(MOUSE_LEFT),
        .valid(start),
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

    // Predict predict_inst(
    //     .clk(clk),
    //     .rst(op_reset),
    //     .start(start),
    //     .track_input(track),
    //     .predicted_number(predicted_number),
    //     .finish(finish)
    // );

    Music_Top music_inst(
        .clk(clk),
        .reset(op_reset),
        .pmod_1(pmod_1),
        .pmod_2(pmod_2),
        .pmod_4(pmod_4)
    );

endmodule