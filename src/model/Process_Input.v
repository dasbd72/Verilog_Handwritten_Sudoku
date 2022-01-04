`timescale 1ps/1ps

module Process_Input(
    input [52*52 - 1: 0] raw_input,
    output [28*28 - 1: 0] processed_input
    );

    parameter RAW_SIZE = 52;
    parameter SIZE = 28;

    genvar row, col;
    generate
        for(row = 0; row < SIZE; row=row+1) begin
            for(col=0; col < SIZE; col=col+1) begin
                if(row >= 2 && row < 26 && col >= 2 && col < 26) begin
                    assign processed_input[row*SIZE + col] = {
                        raw_input[(row-2)*2*RAW_SIZE+(col-2)*2] ||
                        raw_input[((row-2)*2 + 1)*RAW_SIZE+(col-2)*2] ||
                        raw_input[(row-2)*2*RAW_SIZE+(col-2)*2 + 1] ||
                        raw_input[((row-2)*2 + 1)*RAW_SIZE+(col-2)*2 + 1]
                    };
                end else begin
                    assign processed_input[row*SIZE + col] = 0;
                end
            end
        end
    endgenerate
endmodule
