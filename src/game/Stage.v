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
        output connecting,
        output reg game_init,
        output reg status,
        output reg [1:0] State
    );

    wire op_mouse;
    OnePulse op1(clk, !MOUSE_LEFT, op_mouse);

    reg State_next;
    parameter [1:0] SMENU = 2'd0;
    parameter [1:0] SGAME = 2'd1;
    parameter [1:0] SOVER = 2'd2;

    reg send_connect_next, send_start_next, status_next;
    parameter MASTER = 0;
    parameter SLAVE = 1;

    assign connecting = receive_connect & send_connect;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            State <= SMENU;
            send_connect <= 0;
            send_start <= 0;
            status <= MASTER;
        end else begin
            State <= State_next;
            send_connect <= send_connect_next;
            send_start <= send_start_next;
            status <= status_next;
        end
    end

    always @(*) begin
        case (State)
            SMENU: begin 
                if (status == MASTER) begin
                    if (mouse_on_start_button & op_mouse) begin
                        State_next = SGAME;
                        send_start_next = 1;
                    end else begin
                        State_next = SMENU;
                        send_start_next = 0;
                    end
                end else begin
                    if (receive_start) begin
                        State_next = SGAME;
                    end else begin
                        State_next = SMENU;
                    end
                    send_start_next = 0;
                end
                game_init = 1;
            end
            SGAME: begin 
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
                game_init = 0;
                send_start_next = send_start;
            end
            SOVER: begin 
                if (mouse_on_return_button & op_mouse) begin
                    State_next = SMENU;
                end else begin
                    State_next = SOVER;
                end
                game_init = 1;
                send_start_next = 0;
            end
            default: begin
                State_next = SMENU;
                game_init = 1;
                send_start_next = 0;
            end
        endcase
    end

    always @(*) begin
        if (mouse_on_connect_button & op_mouse) begin
            if (receive_connect) begin
                status_next = SLAVE;
                send_connect_next = 1;
            end else begin
                status_next = MASTER;
                send_connect_next = 1;
            end
        end else begin
            status_next = status;
            send_connect_next = send_connect;
        end
    end
    
endmodule