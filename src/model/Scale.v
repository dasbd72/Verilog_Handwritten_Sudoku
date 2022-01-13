`timescale 1ps/1ps

module Scale(
    input [52*52 - 1: 0] img,
    output [28*28 - 1: 0] scaled_img
    );

    parameter RAW_SIZE = 6'd52;
    parameter SIZE = 6'd28;

    genvar row, col;
    generate
        for(row = 0; row < SIZE; row=row+1) begin
            for(col=0; col < SIZE; col=col+1) begin
                if(row >= 2 && row < 26 && col >= 2 && col < 26) begin
                    assign scaled_img[row*SIZE + col] = {
                        img[(row-1)*2*RAW_SIZE+(col-1)*2] ||
                        img[((row-1)*2 + 1)*RAW_SIZE+(col-1)*2] ||
                        img[(row-1)*2*RAW_SIZE+(col-1)*2 + 1] ||
                        img[((row-1)*2 + 1)*RAW_SIZE+(col-1)*2 + 1]
                    };
                end else begin
                    assign scaled_img[row*SIZE + col] = 1'b0;
                end
            end
        end
    endgenerate
endmodule

