`timescale 1ps/1ps
module Predict (
    input  clk,
    input  rst,
    input  start,
    input  [52*52 - 1 : 0] track_input,
    output [3:0] predicted_number,
    output finish
    );

    localparam SWAIT = 2'd0;
    localparam SCAPTURE = 2'd1;
    localparam SPROCESS = 2'd2;
    localparam SFIN = 2'd3;
    reg [1:0] state, next_state;

    reg start_process, next_start_process;
    wire finish_dense_0;
    wire finish_dense_1;

    reg  [28*28 - 1: 0] reg_scaled_track_input;
    wire [28*28 - 1: 0] scaled_track_input;
    wire [16*64 - 1:0] layer_0;
    wire [32*10 - 1:0] layer_1;

    Scale m_scale(
        .img(track_input),
        .scaled_img(scaled_track_input)
    );

    Dense_0 m_dense_0(
        .clk(clk),
        .rst(rst),
        .start(start_process),
        .layer_input(reg_scaled_track_input),
        .layer_0(layer_0),
        .finish(finish_dense_0)
    );

    Dense_1 m_dense_1(
        .clk(clk),
        .rst(rst),
        .start(finish_dense_0),
        .layer_0(layer_0),
        .layer_1(layer_1),
        .finish(finish_dense_1)
    );

    Output_Processor m_Output_Processor(
        .layer_1(layer_1),
        .number(predicted_number)
    );

    assign finish = finish_dense_1;
    
    always @(posedge clk ) begin
        if(rst) begin
            state <= SWAIT;
            reg_scaled_track_input <= 0;
            start_process <= 0;
        end else begin
            state <= next_state;
            if(start) reg_scaled_track_input <= scaled_track_input;
            else reg_scaled_track_input <= reg_scaled_track_input;
            start_process <= next_start_process;
        end
    end

    // state
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SCAPTURE;
                else next_state = state;
            end 
            SCAPTURE: next_state = SPROCESS;
            SPROCESS: begin
                if(finish_dense_1) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = SWAIT;
        endcase
    end
    
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_start_process = 1;
                else next_start_process = 0;
            end 
            default: next_start_process = 0;
        endcase
    end
endmodule