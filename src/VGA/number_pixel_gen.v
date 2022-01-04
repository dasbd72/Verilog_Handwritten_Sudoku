module Number_Pixel_Gen(
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] index,
    input [10:0] number,
    output transparent,
    output reg [11:0] pixel
    );

    parameter SIZE = 52;
    parameter EMPTY = 12'b1111_1111_1111; // Empty
    parameter BLACK = 12'b0000_0000_0000; // Black
    assign transparent = pixel == EMPTY;

    wire [9:0] row_start = index / 9 * 52;
    wire [9:0] col_start = index % 9 * 52;

    // always @(*) begin
    //     if (col_start <= h_cnt && h_cnt < col_start + SIZE && row_start <= v_cnt && v_cnt < row_start + SIZE) begin
    //         if (number[10]) pixel = EMPTY;
    //         else if (number[0] && pixel_0[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[1] && pixel_1[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[2] && pixel_2[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[3] && pixel_3[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[4] && pixel_4[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[5] && pixel_5[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[6] && pixel_6[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[7] && pixel_7[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[8] && pixel_8[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else if (number[9] && pixel_9[h_cnt-col_start][v_cnt-col_start]) pixel = BLACK;
    //         else pixel = EMPTY;
    //     end else begin
    //         pixel = EMPTY;
    //     end
    // end

    // parameter pixel_0 = {
        
    // };
    // parameter pixel_1 = {

    // };

endmodule