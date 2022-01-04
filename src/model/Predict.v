`timescale 1ps/1ps
module Predict (
    input   [52*52 - 1 : 0] track_input,
    output  [9 : 0] onehot_output
    );

    wire [28*28 - 1: 0] scaled_track_input;

    Scale m_scale(
        .img(track_input),
        .scaled_img(scaled_track_input)
    );
    
endmodule