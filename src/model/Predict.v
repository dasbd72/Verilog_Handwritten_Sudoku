`timescale 1ps/1ps
module Predict (
    input  clk,
    input  rst,
    input  start,
    input  [52*52 - 1 : 0] track_input,
    output [9 : 0] onehot_output,
    output finish
    );

    localparam SWAIT = 2'd0;
    localparam SDENSE0 = 2'd1;
    localparam SDENSE1 = 2'd2;
    localparam SFIN = 2'd3;

    reg [1:0] state, next_state;
    reg [52*52 - 1 : 0] reg_track_input, next_reg_track_input;
    reg start_dense_0, next_start_dense_0;
    wire finish_dense_0;
    reg start_dense_1, next_start_dense_1;

    wire [28*28 - 1: 0] scaled_track_input;
    wire [16*64 - 1:0] layer_0;

    Scale m_scale(
        .img(track_input),
        .scaled_img(scaled_track_input)
    );

    Dense_0 m_dense_0(
        .clk(clk),
        .rst(rst),
        .start(start_dense_0),
        .layer_input(scaled_track_input),
        .layer_0(layer_0),
        .finish(finish_dense_0)
    );

    Dense_1 m_dense_1(
        .clk(clk),
        .rst(rst),
        .start(finish_dense_0),
        .layer_input(layer_0),
        .layer_1(onehot_output),
        .finish(finish)
    );
    
    always @(posedge clk ) begin
        if(rst) begin
            state <= SWAIT;
            reg_track_input <= 0;
            start_dense_0 <= 0;
            start_dense_1 <= 0;
        end else begin
            state <= next_state;
            reg_track_input <= next_reg_track_input;
            start_dense_0 <= next_start_dense_0;
            start_dense_1 <= next_start_dense_1;
        end
    end

    // state
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SDENSE0;
                else next_state = state;
            end 
            SDENSE0: begin
                if(finish_dense_0) next_state = SDENSE1;
                else next_state = state;
            end
            SDENSE1: begin
                if(finish) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = SWAIT;
        endcase
    end
    // reg_track_input
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_reg_track_input = track_input;
                else next_reg_track_input = reg_track_input;
            end 
            default: next_reg_track_input = reg_track_input;
        endcase
    end
    always @(*) begin
        // start_dense_0
        case (state)
            SWAIT: begin
                if(start) next_start_dense_0 = 1;
                else next_start_dense_0 = 0;
            end 
            default: next_start_dense_0 = 0;
        endcase
        // start_dense_1
        case (state)
            SDENSE0: begin
                if(finish_dense_0) next_start_dense_1 = 1;
                else next_start_dense_0 = 1;
            end 
            default: next_start_dense_0 = 1;
        endcase
    end
endmodule