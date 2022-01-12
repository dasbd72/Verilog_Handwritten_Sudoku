module Stage (
        input clk,
        input reset,
        input game_finish,
        input MOUSE_LEFT,
        input mouse_on_start_button,
        input mouse_on_return_button,
        output reg game_init,
        output [1:0] State
    );

    wire op_mouse;
    OnePulse op1(clk, !MOUSE_LEFT, op_mouse);

    reg [1:0] State, State_next;
    parameter [1:0] SMENU = 2'd0;
    parameter [1:0] SGAME = 2'd1;
    parameter [1:0] SOVER = 2'd2;

    always @(posedge clk) begin
        if (reset) begin
            State <= SMENU;
        end else begin
            State <= State_next;
        end
    end

    always @(*) begin
        case (State)
            SMENU: begin 
                if (mouse_on_start_button && op_mouse) begin
                    State_next = SGAME;
                end else begin
                    State_next = SMENU;
                end
                game_init = 1;
            end
            SGAME: begin 
                if (game_finish) begin
                    State_next = SOVER;
                end else begin
                    State_next = SGAME;
                end
                game_init = 0;
            end
            SOVER: begin 
                if (mouse_on_return_button && op_mouse) begin
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
    
endmodule