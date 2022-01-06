`timescale 1ps/1ps
module ClockDivider #(
    parameter length = 4
    ) (
    input wire clk,
    input wire rst_n,
    output reg dclk
    );
    
    reg nxt_dclk;
    reg [31:0] cnt_cycle;

    // Posedge Trigger
    always @(posedge clk) begin
        if(~rst_n) begin
            cnt_cycle <= 32'b1;
            dclk <= 1'b0;
        end else begin
            cnt_cycle <= ((cnt_cycle == length) ? 32'b1 : cnt_cycle + 32'b1);
            dclk <= nxt_dclk;
        end
    end

    always @(*) begin
        if(cnt_cycle == length) nxt_dclk = 1'b1;
        else nxt_dclk = 1'b0;
    end
endmodule