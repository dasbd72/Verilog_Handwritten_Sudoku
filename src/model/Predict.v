module Predict #(
    localparam SWAIT    = 2'd0,
    localparam SCAPTURE = 2'd1,
    localparam SPROCESS = 2'd2,
    localparam SFIN     = 2'd3
    ) (
    input  clk,
    input  rst,
    input  start,
    input  [52*52 - 1 : 0] track_input,
    output [3 : 0] predicted_number,
    output finish
    );

    // ========================================
    // Signals
    // ========================================
    reg [1 : 0] state;
    reg [1 : 0] next_state;

    // wire  clk_2;
    wire start_process;
    reg  [28*28 - 1: 0] reg_scaled_track_input;
    wire [28*28 - 1: 0] scaled_track_input;
    wire [32*10 - 1:0]  layer_2;


    // div cd(clk, clk_2);

    Scale m_scale(
        .img(track_input),
        .scaled_img(scaled_track_input)
    );

    Neural_Network m_Neural_Network(
        .clk(clk),
        .rst(rst),
        .start(start_process),
        .layer_0(reg_scaled_track_input),
        .layer_2(layer_2),
        .finish(finish)
    );

    Output_Processor m_Output_Processor(
        .layer_2(layer_2),
        .number(predicted_number)
    );
    
    // ========================================
    // DFFS
    // ========================================
    always @(posedge clk ) begin
        if(rst) begin
            state <= SWAIT;
            reg_scaled_track_input <= 0;
        end else begin
            state <= next_state;
            if(start) reg_scaled_track_input <= scaled_track_input;
            else reg_scaled_track_input <= reg_scaled_track_input;
        end
    end

    // ========================================
    // Combinationals
    // ========================================
    assign start_process = (state == SCAPTURE || state == SPROCESS);

    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SCAPTURE;
                else next_state = state;
            end 
            SCAPTURE: next_state = SPROCESS;
            SPROCESS: begin
                if(finish) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = SWAIT;
        endcase
    end
endmodule