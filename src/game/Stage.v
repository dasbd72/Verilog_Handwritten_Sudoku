module Stage (
        input clk,
        input reset,
        input game_finish,
        input MOUSE_LEFT,
        input mouse_on_start_button,
        input mouse_on_connect_button,
        input mouse_on_return_button,
        input receive_connect,
        input receive_start,
        input receive_game_finish,
        output reg send_start,
        output reg send_connect,
        output reg sudoku_start,
        output reg status,
        output reg [1:0] State
    );

    wire op_mouse;
    OnePulse op1(clk, ~MOUSE_LEFT, op_mouse);

    reg [1:0] State_next;
    parameter [1:0] SMENU = 2'd0;
    parameter [1:0] SGAME = 2'd1;
    parameter [1:0] SOVER = 2'd2;

    reg send_connect_next, send_start_next, status_next;
    parameter MASTER = 1'b0;
    parameter SLAVE = 1'b1;

    reg connecting;
    reg next_sudoku_start;
    wire next_connecting = (State == SMENU) ? (receive_connect & send_connect_next) : connecting;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            State <= SMENU;
            send_connect <= 1'b0;
            send_start <= 1'b0;
            status <= MASTER;
            connecting <= 1'b0;
            sudoku_start <= 1'b0;
        end else begin
            State <= State_next;
            send_connect <= send_connect_next;
            send_start <= send_start_next;
            status <= status_next;
            connecting <= next_connecting;
            sudoku_start <= next_sudoku_start;
        end
    end

    always @(*) begin
        case (State)
            SMENU: begin 
                if (status == MASTER) begin
                    if (mouse_on_start_button & op_mouse) begin
                        State_next = SGAME;
                        send_start_next = 1'b1;
                        next_sudoku_start = 1'b1;
                    end else begin
                        State_next = SMENU;
                        send_start_next = 1'b0;
                        next_sudoku_start = 1'b0;
                    end
                end else begin
                    if (receive_start) begin
                        State_next = SGAME;
                        next_sudoku_start = 1'b1;
                    end else begin
                        State_next = SMENU;
                        next_sudoku_start = 1'b0;
                    end
                    send_start_next = 1'b0;
                end
            end
            SGAME: begin 
                next_sudoku_start = 1'b0;
                if (connecting) begin
                    if (game_finish | receive_game_finish) begin
                        State_next = SOVER;
                    end else begin
                        State_next = SGAME;
                    end
                end else begin
                    if (game_finish) begin
                        State_next = SOVER;
                    end else begin
                        State_next = SGAME;
                    end
                end
                send_start_next = send_start;
            end
            SOVER: begin 
                next_sudoku_start = 1'b0;
                if (mouse_on_return_button & op_mouse) begin
                    State_next = SMENU;
                end else begin
                    State_next = SOVER;
                end
                send_start_next = 1'b0;
            end
            default: begin
                next_sudoku_start = 1'b0;
                State_next = SMENU;
                send_start_next = 1'b0;
            end
        endcase
    end

    always @(*) begin
        if (State == SMENU) begin
            if (mouse_on_connect_button & op_mouse) begin
                if (receive_connect) begin
                    status_next = SLAVE;
                    send_connect_next = 1'b1;
                end else begin
                    status_next = MASTER;
                    send_connect_next = 1'b1;
                end
            end else begin
                status_next = status;
                send_connect_next = send_connect;
            end
        end else begin
            status_next = status;
            send_connect_next = 1'b0;
        end
    end
    
endmodule