`timescale 1ps/1ps
module Output_Processor (
    input [16*10 - 1:0] layer_1,
    output [3:0] number
    );
    wire signed [15:0] value [1:9];

    assign value[1] = layer_1[16*9-1-:16];
    assign value[2] = layer_1[16*8-1-:16];
    assign value[3] = layer_1[16*7-1-:16];
    assign value[4] = layer_1[16*6-1-:16];
    assign value[5] = layer_1[16*5-1-:16];
    assign value[6] = layer_1[16*4-1-:16];
    assign value[7] = layer_1[16*3-1-:16];
    assign value[8] = layer_1[16*2-1-:16];
    assign value[9] = layer_1[16*1-1-:16];

    wire L_1_2 = value[1] > value[2];
    wire L_3_4 = value[3] > value[4];
    wire L_5_6 = value[5] > value[6];
    wire L_7_8 = value[7] > value[8];
    wire [3:0] N_1_2 = L_1_2 ? 4'd1 : 4'd2;
    wire [3:0] N_3_4 = L_3_4 ? 4'd3 : 4'd4;
    wire [3:0] N_5_6 = L_5_6 ? 4'd5 : 4'd6;
    wire [3:0] N_7_8 = L_7_8 ? 4'd7 : 4'd8;
    wire signed [15:0] V_1_2 = L_1_2 ? value[1] : value[2];
    wire signed [15:0] V_3_4 = L_3_4 ? value[3] : value[4];
    wire signed [15:0] V_5_6 = L_5_6 ? value[5] : value[6];
    wire signed [15:0] V_7_8 = L_7_8 ? value[7] : value[8];
    wire L_1_3 = V_1_2 > V_3_4;
    wire L_5_7 = V_5_6 > V_7_8;
    wire [3:0] N_1_3 = L_1_3 ? N_1_2 : N_3_4;
    wire [3:0] N_5_7 = L_5_7 ? N_5_6 : N_7_8;
    wire signed [15:0] V_1_3 = L_1_3 ? V_1_2 : V_3_4 ;
    wire signed [15:0] V_5_7 = L_5_7 ? V_5_6 : V_7_8;
    wire L_1_5 = V_1_3 > V_5_7;
    wire [3:0] N_1_5 = L_1_5 ? N_1_3 : N_5_7;
    wire signed [15:0] V_1_5 = L_1_5 ? V_1_3 : V_5_7;
    assign number = V_1_5 > value[9] ? N_1_5 : 4'd9;
endmodule