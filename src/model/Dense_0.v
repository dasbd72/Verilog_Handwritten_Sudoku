module Dense_0(
    input clk, 
    input rst, 
    input [28*28 - 1:0] layer_input, 
    output valid, 
    output [16 * 64 - 1:0] layer_0
    );
    reg [16 - 1:0] reg_layer_0 [64 - 1:0];
    reg [10 - 1:0] count, next_count;

    wire [16 - 1:0] kernel;

    blk_mem_gen_0 blk_mem_gen_0_inst(
        .clka(clk),
        .wea(0),
        .addra(pixel_addr),
        .douta(kernel)
    );
endmodule

