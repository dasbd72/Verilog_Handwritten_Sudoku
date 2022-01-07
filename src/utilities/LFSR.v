`timescale 1ns/1ps
/* https://en.wikipedia.org/wiki/Linear-feedback_shift_register */
module LFSR(
    input clk,
    input rst,
    output reg [15:0] out
    );

    wire feedback;
    assign feedback = (out[15] ^ out[13]) ^ (out[12] ^ out[10]);

    always @(posedge clk) begin
        if(rst) begin
            out <= 16'hACE1;
        end else begin
            out <= {out[14-:15], feedback};
        end
    end
endmodule