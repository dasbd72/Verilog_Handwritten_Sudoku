`timescale 1ps/1ps
module Top #(
    parameter t = 1
    ) (
    input clk,
    input rst,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync,
    output [3:0] AN,
    output [6:0] SEG,
    inout PS2_CLK,
    inout PS2_DATA,
    /* Board Communication (1 + 81 times) */
    input request,
    input ack_in,
    output ack_out,
    output [3:0] data,
    output valid
    );

    localparam SMENU = 4'd0;
    localparam SMENU = 4'd0;
    reg [3:0] state, next_state;
    
endmodule