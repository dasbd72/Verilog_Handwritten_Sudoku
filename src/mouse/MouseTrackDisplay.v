module MouseTrackDisplay(
    input  clk,
    input  [9 : 0] xpos,
    input  [9 : 0] ypos,
    input  [2703 : 0] track,
    input  [9 : 0] hcount,
    input  [9 : 0] vcount,
    output enable_track_display_out,
    output [3 : 0] red_out,
    output [3 : 0] green_out,
    output [3 : 0] blue_out
    );

endmodule