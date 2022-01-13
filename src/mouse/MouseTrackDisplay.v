module MouseTrackDisplay #(
    parameter H = 10'd480,
    parameter W = 10'd640,
    parameter BSIZE = 6'd52
    )(
    input  clk,
    input  [9 : 0] block_x_pos,
    input  [9 : 0] block_y_pos,
    input  [2703 : 0] track,
    input  [9 : 0] hcount,
    input  [9 : 0] vcount,
    output enable_track_display_out,
    output [3 : 0] red_out,
    output [3 : 0] green_out,
    output [3 : 0] blue_out
    );

    wire [9:0] xcnt, ycnt; 
    wire valid;
    wire [2703:0] track_adjust;

    assign {red_out, green_out, blue_out} = 12'h0;
    assign xcnt = W - 1 - hcount;
    assign ycnt = H - 1 - vcount;
    assign valid = ((ycnt >= block_y_pos) &&
                    (xcnt >= block_x_pos) &&
                    (ycnt < block_y_pos + BSIZE) &&
                    (xcnt < block_x_pos + BSIZE));
    assign enable_track_display_out = ~valid ? 0 : 
                                    track_adjust[(ycnt - block_y_pos)*BSIZE + xcnt - block_x_pos];

    genvar row, col;
    generate
        for(row = 0; row < BSIZE; row=row+1) begin
            for(col = 0; col < BSIZE; col=col+1) begin
                if(row == 0 || row == BSIZE-1 || col == 0 || col == BSIZE-1)
                    assign track_adjust[row*BSIZE + col] = track[(row)*BSIZE + (col)];
                else 
                    assign track_adjust[row*BSIZE + col] = 
                        track[(row)*BSIZE + (col)]   ||
                        track[(row+1)*BSIZE + (col)] ||
                        track[(row-1)*BSIZE + (col)] ||
                        track[(row)*BSIZE + (col+1)] ||
                        track[(row)*BSIZE + (col-1)];
            end
        end
    endgenerate
endmodule