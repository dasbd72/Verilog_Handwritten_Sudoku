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