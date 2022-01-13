`timescale 1ns/1ps
/* https://en.wikipedia.org/wiki/Linear-feedback_shift_register */
module LFSR(
    input clk,
    input rst,
    input connecting,
    output reg [15:0] out
    );

    wire feedback;
    assign feedback = (out[15] ^ out[13]) ^ (out[12] ^ out[10]);

    wire op_connecting;
    OnePulse opconnect_inst(clk, connecting, op_connecting);

    always @(posedge clk, posedge op_connecting) begin
        if(rst || op_connecting) begin
            out <= 16'hBEEF;
        end else begin
            out <= {out[14-:15], feedback};
        end
    end
endmodule