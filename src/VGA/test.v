module Test (
    input clk,
	input rst,
    input btnU,
    input btnC,
	input stage,
    input [3:0] in_data,
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output hsync,
	output vsync,
	inout PS2_CLK,
	inout PS2_DATA
    );

    wire db_reset, db_enter;
    wire op_reset, op_enter;
    Debounce db0(clk, btnU, db_reset);
    Debounce db1(clk, btnC, db_enter);
    One_Pulse op0(clk, db_reset, op_reset);
    One_Pulse op1(clk, db_enter, op_enter);

    wire valid, done;
    wire [10:0] data;

    Decoder De0(in_data, data);
    Sudoku_Solver sudoku_solver_inst(
        .clk(clk), 
        .start(op_enter), 
        .reset(op_reset), 
        .data(data), 
        .valid(valid), 
        .done(done)
        );

    VGA_Top vga_top_inst(
        .clk(clk),
        .rst(op_reset),
        .stage(stage),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue),
        .hsync(hsync),
        .vsync(vsync),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA)
    );
    
endmodule

module One_Pulse(clk, in, out);
    input clk, in;
    output out;

    reg out;
    reg in_delay;

    always @(posedge clk) begin
        out <= in & (!in_delay);
        in_delay <= in;
    end
endmodule

module Debounce(clk, in, out);
    input clk, in;
    output out;

    reg [3:0] DFF;

    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
        DFF[0] <= in;
    end
    assign out = ((DFF == 4'b1111) ? 1'b1 : 1'b0);
endmodule

module Decoder (in, out);
    input [3:0] in;
    output [10:0] out;

    assign out[0] = in == 0;
    assign out[1] = in == 1;
    assign out[2] = in == 2;
    assign out[3] = in == 3;
    assign out[4] = in == 4;
    assign out[5] = in == 5;
    assign out[6] = in == 6;
    assign out[7] = in == 7;
    assign out[8] = in == 8;
    assign out[9] = in == 9;
    assign out[10] = out[9:0] == 10'b00_0000_0000;
endmodule
