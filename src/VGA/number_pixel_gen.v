module Number_Pixel_Gen(
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] index,
    input [10:0] number,
    output reg [11:0] pixel
    );

    parameter size = 52;
    parameter O = 12'b1111_1111_1111; // White
    parameter K = 12'b0000_0000_0000; // Black

    wire [9:0] row = index / 9 * 52;
    wire [9:0] col = index % 9 * 52;

    // always @(*) begin
    //     if (h_cnt <= row)
    // end
endmodule