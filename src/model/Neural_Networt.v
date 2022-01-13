module Neural_Network #(
    /* SIZE */
    // localparam BITSW = 16,
    localparam BITSL = 6'd32,
    localparam WIDTH0 = 10'd784,
    localparam HEIGHT1 = 10'd784,
    // localparam WEIGHT1 = 64,
    localparam WIDTH1 = 7'd64,
    localparam HEIGHT2 = 7'd64,
    localparam WEIGHT2 = 4'd10,
    localparam WIDTH2 = 4'd10,
    /* Memory Address */
    localparam K1 = 16'd50176,
    localparam B1 = 16'd50240,
    localparam K2 = 16'd50880,
    localparam B2 = 16'd50890,
    /* State */
    localparam [2:0] SWAIT    = 3'd0,
    localparam [2:0] SKERN1   = 3'd1,
    localparam [2:0] SBIAS1   = 3'd2,
    localparam [2:0] SRELU1   = 3'd3,
    localparam [2:0] SKERN2   = 3'd4,
    localparam [2:0] SBIAS2   = 3'd5,
    localparam [2:0] SFIN     = 3'd6,

    localparam dummy = 1'b0
    )(
    input wire  clk,
    input wire  rst,
    input wire  start,
    input wire  [WIDTH0 - 1 : 0]         layer_0,
    output reg  [BITSL*WIDTH2 - 1 : 0]   layer_2,

    // output reg  [BITSL*WIDTH1 - 1 : 0]   layer_1,
    // output reg  [2 : 0]  state,
    // output reg  [15 : 0] addr,
    // output reg  [9 : 0]  row,
    // output reg  [9 : 0]  col,
    // output wire [11 : 0] weight_12,
    // output wire [31 : 0] weight_32,
    // output reg  [31 : 0] product,

    output reg  finish
    );
    

    reg  [2 : 0]    state;
    reg  [2 : 0]    next_state;
    reg  [15 : 0]   count;
    reg  [15 : 0]   next_count;
    reg  [15 : 0]   addr;
    reg  [15 : 0]   next_addr;
    reg  [9 : 0]   row;
    reg  [9 : 0]   row_1;
    reg  [9 : 0]   next_row;
    reg  [9 : 0]   col;
    reg  [9 : 0]   col_1;
    reg  [9 : 0]   next_col;
    wire [11 : 0]   weight_12;
    wire [31 : 0]   weight_32;
    reg  [31 : 0]   product;
    reg  [31 : 0]   productd; // product / 2**8
    reg  [31 : 0]   next_product;

    reg             next_finish;

    /* wire [WIDTH0 - 1 : 0] layer_0; */
    reg  [BITSL*WIDTH1 - 1 : 0] layer_1;
    reg  [BITSL*WIDTH1 - 1 : 0] next_layer_1;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_kernel;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_bias;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_relu;
    /* reg  [BITSL*WIDTH2 - 1 : 0] layer_2; */
    reg  [BITSL*WIDTH2 - 1 : 0] next_layer_2;
    wire [BITSL*WIDTH2 - 1 : 0] next_layer_2_kernel;
    wire [BITSL*WIDTH2 - 1 : 0] next_layer_2_bias;

    // ========================================
    // DFFS
    // ========================================
    always @(posedge clk ) begin
        if(rst) begin
            state <= SWAIT;
            count <= 16'b0;
            addr  <= 16'b0;
            finish <= 1'b0;
            layer_1 <= 0;
            layer_2 <= 0;
        end else begin
            state <= next_state;
            count <= next_count;
            addr  <= next_addr;
            finish <= next_finish;
            layer_1 <= next_layer_1;
            layer_2 <= next_layer_2;
        end
        row <= next_row;
        col <= next_col;
        row_1 <= row;
        col_1 <= col;
        product <= next_product;
        productd <= {{24{next_product[31]}}, next_product[31:8]};
    end
    // ========================================
    // Combinationals
    // ========================================
    
    blk_mem_gen_weight module_blk_mem_gen_weight(.addra(addr), .clka(clk), .douta(weight_12));
    assign weight_32 = {{20{weight_12[11]}}, weight_12[11:0]};

    /* State */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SKERN1;
                else next_state = state;
            end
            SKERN1: begin
                if(count == K1 + 2) next_state = SBIAS1;
                else next_state = state;
            end
            SBIAS1: begin
                if(count == B1 + 1) next_state = SRELU1;
                else next_state = state;
            end
            SRELU1: next_state = SKERN2;
            SKERN2: begin
                if(count == K2 + 2) next_state = SBIAS2;
                else next_state = state;
            end
            SBIAS2: begin
                if(count == B2 + 1) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = state;
        endcase
    end
    always @(*) begin
        case (state)
            SBIAS2: begin
                if(count == B2 + 1) next_finish = 1'b1;
                else next_finish = 1'b0;
            end
            default: next_finish = 1'b0; 
        endcase
    end
    /* Count */
    always @(*) begin
        case (state)
            SWAIT: next_count = 16'b0;
            SKERN1: begin
                if(count == K1 + 2) next_count = K1;
                else next_count = count + 16'b1;
            end
            SBIAS1: begin
                if(count == B1 + 1) next_count = B1;
                else next_count = count + 16'b1;
            end
            SRELU1: next_count = B1;
            SKERN2: begin
                if(count == K2 + 2) next_count = K2;
                else next_count = count + 16'b1;
            end
            SBIAS2: begin
                if(count == B2 + 1) next_count = 16'b0;
                else next_count = count + 16'b1;
            end
            SFIN: next_count = 16'b0;
            default: next_count = 16'b0;
        endcase
    end
    /* Address */
    always @(*) begin
        next_addr = next_count;
    end
    /* Row Col */
    always @(*) begin
        case (state)
            SKERN1: next_row = (addr - 1) / WIDTH1;
            SKERN2: next_row = (addr - B1 - 1) / WIDTH2;
            default: next_row = 10'b0;
        endcase
        case (state)
            SKERN1: next_col = (addr - 1) % WIDTH1; 
            SBIAS1: next_col = (addr - 1) % WIDTH1; 
            SKERN2: next_col = (addr - B1 - 1) % WIDTH2;
            SBIAS2: next_col = (addr - B1 - 1) % WIDTH2;
            default: next_col = 10'b0;
        endcase
    end

    /* Product */
    always @(*) begin
        case (state)
            SKERN1: next_product = weight_32 * {31'b0, layer_0[WIDTH0 - 1 - row]};
            SKERN2: next_product = weight_32 * layer_1[(WIDTH1 - row)*BITSL-1-:BITSL];
            default: next_product = 32'b0;
        endcase
    end
    /* layers */
    genvar i;
    generate
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_kernel[(i+1)*BITSL-1-:BITSL] = 
                layer_1[(i+1)*BITSL-1-:BITSL] + ( (i == (WIDTH1 - 1 - col_1)) ? product : 32'b0 );
        end
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_bias[(i+1)*BITSL-1-:BITSL] = 
                layer_1[(i+1)*BITSL-1-:BITSL] + ( (i == (WIDTH1 - 1 - col)) ? weight_32 : 32'b0);
        end
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_relu[(i+1)*BITSL-1-:BITSL] = 
                next_layer_1_bias[(i+1)*BITSL-1] ? 0 : next_layer_1_bias[(i+1)*BITSL-1-:BITSL];
        end
        for(i = 0; i < WIDTH2; i=i+1) begin
            assign next_layer_2_kernel[(i+1)*BITSL-1-:BITSL] = 
                layer_2[(i+1)*BITSL-1-:BITSL] + (i == (WIDTH2 - 1 - col_1) ? productd : 32'b0);
        end
        for(i = 0; i < WIDTH2; i=i+1) begin
            assign next_layer_2_bias[(i+1)*BITSL-1-:BITSL] = 
                layer_2[(i+1)*BITSL-1-:BITSL] + (i == (WIDTH2 - 1 - col) ? weight_32 : 32'b0);
        end
    endgenerate

    /* layer 1 */
    always @(*) begin
        case (state)
            SWAIT: next_layer_1 = 0;
            SKERN1: begin
                if(addr >= 3) next_layer_1 = next_layer_1_kernel;
                else next_layer_1 = layer_1;
            end
            SBIAS1: begin
                if(addr >= K1 + 2) next_layer_1 = next_layer_1_bias;
                else next_layer_1 = layer_1;
            end
            SRELU1: next_layer_1 = next_layer_1_relu;
            default: next_layer_1 = layer_1;
        endcase
    end
    /* layer2 */
    always @(*) begin
        case (state)
            SWAIT: next_layer_2 = 0;
            SKERN2: begin
                if(addr >= B1 + 3) next_layer_2 = next_layer_2_kernel;
                else next_layer_2 = layer_2;
            end
            SBIAS2: begin
                if(addr >= K2 + 2) next_layer_2 = next_layer_2_bias;
                else next_layer_2 = layer_2;
            end
            default: next_layer_2 = layer_2;
        endcase
    end

endmodule