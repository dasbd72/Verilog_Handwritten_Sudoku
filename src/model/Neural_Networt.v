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
    // localparam KER1_S = 16'd0,
    localparam KER1_E = 16'd50175,
    localparam BIAS1_S = 16'd50176,
    localparam BIAS1_E = 16'd50239,
    localparam KER2_S = 16'd50240,
    localparam KER2_E = 16'd50879,
    // localparam BIAS2_S = 16'd50880,
    localparam BIAS2_E = 16'd50889,
    /* State */
    localparam [2:0] SWAIT    = 3'd0,
    localparam [2:0] SSTART   = 3'd1,
    localparam [2:0] SDENSE1  = 3'd2,
    localparam [2:0] SDENSE2  = 3'd3,
    localparam [2:0] SFIN     = 3'd4,
    /* count */
    localparam [2:0] CSTART   = 3'd2,

    localparam dummy = 1'b0
    )(
    input wire  clk,
    input wire  rst,
    input wire  start,
    input wire  [WIDTH0 - 1 : 0]         layer_0,
    // output reg  [BITSL*WIDTH1 - 1 : 0]   layer_1,
    output reg  [BITSL*WIDTH2 - 1 : 0]   layer_2,

    // output reg  [3:0] state,
    // output reg  [9:0] layer_1_col,
    // output reg  [9:0] layer_1_row,
    // output wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_kernel,
    // output reg  [15 : 0] mem_addr,
    // output wire [11 : 0] mem_val,
    // output wire [31 : 0] weight_val,

    output reg  finish
    );

    // ========================================
    // Signals
    // ========================================
    wire clk_3;

    reg  [2:0] state;
    reg  [2:0] next_state;
    reg  [2:0] count;
    reg  [2:0] next_count;

    /* wire [28*28 - 1 : 0] layer_0; */
    reg  [BITSL*WIDTH1 - 1 : 0] layer_1;
    reg  [BITSL*WIDTH1 - 1 : 0] next_layer_1;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_kernel;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_bias;
    wire [BITSL*WIDTH1 - 1 : 0] next_layer_1_relu;
    reg  [9:0] layer_1_col;
    reg  [9:0] layer_1_row;

    /* reg [BITSL*WIDTH2 - 1 : 0] layer_2; */
    reg  [BITSL*WIDTH2 - 1 : 0] next_layer_2;
    wire [BITSL*WIDTH2 - 1 : 0] next_layer_2_kernel;
    wire [BITSL - 1 : 0]        weight_layer_product;
    wire [BITSL*WIDTH2 - 1 : 0] next_layer_2_bias;
    reg  [9:0] layer_2_col;
    reg  [9:0] layer_2_row;

    reg  [15 : 0] mem_addr;
    reg  [15 : 0] next_mem_addr;
    wire [11 : 0] mem_val;
    wire [31 : 0] weight_val;
    reg  [31 : 0] weight_val_multiplier;
    reg  [31 : 0] H2sL2Rm32s1;      //(HEIGHT2 - layer_2_row)*BITSL-1
    reg  [31 : 0] W1s1sL1C;         // WIDTH1 - 1 - layer_1_col
    reg  [31 : 0] H1s1sL1R;         // HEIGHT1 - 1 - layer_1_row
    reg  [31 : 0] W2s1sL2C;         // WIDTH2 - 1 - layer_2_col

    /* reg  finish; */
    reg next_finish;

    // ========================================
    // Wiring
    // ========================================
    blk_mem_gen_weight module_blk_mem_gen_weight(.addra(mem_addr), .clka(clk), .douta(mem_val));
    assign weight_val = {{20{mem_val[11]}}, mem_val[11:0]};

    // ========================================
    // DFFS
    // ========================================
    always @(posedge clk ) begin
        if(rst) begin
            state       <= SWAIT;
            layer_1     <= 0;
            layer_2     <= 0;
            mem_addr    <= 16'b0;
            count       <= 3'b0;
            finish      <= 1'b0;
        end else begin
            state       <= next_state;
            layer_1     <= next_layer_1;
            layer_2     <= next_layer_2;
            mem_addr    <= next_mem_addr;
            count       <= next_count;
            finish      <= next_finish;
        end
    end
    always @(posedge clk ) begin
        /* First Layer */
        layer_1_row <= (mem_addr) / WIDTH1;
        layer_1_col <= (mem_addr) % WIDTH1;
        layer_2_row <= (mem_addr - KER2_S) / WIDTH2;
        layer_2_col <= (mem_addr - KER2_S) % WIDTH2;
        /* Second Layer */
        H2sL2Rm32s1 <= (HEIGHT2 - layer_2_row)*BITSL-1;
        W1s1sL1C    <= WIDTH1 - 1 - layer_1_col;
        H1s1sL1R    <= HEIGHT1 - 1 - layer_1_row;
        W2s1sL2C    <= WIDTH2 - 1 - layer_2_col;
    end

    // ========================================
    // Combinationals
    // ========================================
    /* State */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SSTART;
                else next_state = state;
            end 
            SSTART: begin
                if(count == CSTART) next_state = SDENSE1;
                else next_state = state;
            end
            SDENSE1: begin
                if(mem_addr == BIAS1_E + 2) next_state = SDENSE2;
                else next_state = state;
            end
            SDENSE2: begin
                if(mem_addr == BIAS2_E + 2) next_state = SFIN;
                else next_state = state;
            end
            SFIN: next_state = SWAIT;
            default: next_state = state;
        endcase
    end
    /* Calculation */
    assign weight_layer_product = weight_val * layer_1[H2sL2Rm32s1-:BITSL];
    genvar i;
    generate
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_kernel[(i+1)*BITSL-1-:BITSL] = 
                layer_1[(i+1)*BITSL-1-:BITSL] + ( (i == W1s1sL1C) ? weight_val * layer_0[H1s1sL1R] : 32'b0 );
        end
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_bias[(i+1)*BITSL-1-:BITSL] = 
                layer_1[(i+1)*BITSL-1-:BITSL] + ( (i == W1s1sL1C) ? weight_val : 32'b0);
        end
        for(i = 0; i < WIDTH1; i=i+1) begin
            assign next_layer_1_relu[(i+1)*BITSL-1-:BITSL] = 
                next_layer_1_bias[(i+1)*BITSL-1] ? 0 : next_layer_1_bias[(i+1)*BITSL-1-:BITSL];
        end
        for(i = 0; i < WIDTH2; i=i+1) begin
            assign next_layer_2_kernel[(i+1)*BITSL-1-:BITSL] = 
                layer_2[(i+1)*BITSL-1-:BITSL] + (i == W2s1sL2C ? {{24{weight_layer_product[31]}}, weight_layer_product[31:8]} : 32'b0);
        end
        for(i = 0; i < WIDTH2; i=i+1) begin
            assign next_layer_2_bias[(i+1)*BITSL-1-:BITSL] = 
                layer_2[(i+1)*BITSL-1-:BITSL] + (i == W2s1sL2C ? weight_val : 32'b0);
        end
    endgenerate
    /* layer 1 */
    always @(*) begin
        case (state)
            SWAIT: next_layer_1 = layer_1;
            SSTART: next_layer_1 = 0;
            SDENSE1: begin
                if(mem_addr - 2 <= KER1_E)       next_layer_1 = next_layer_1_kernel;
                else if(mem_addr - 2 < BIAS1_E)  next_layer_1 = next_layer_1_bias;
                else if(mem_addr - 2 == BIAS1_E) next_layer_1 = next_layer_1_relu;
                else                             next_layer_1 = layer_1;
            end 
            SDENSE2: next_layer_1 = layer_1;
            SFIN: next_layer_1 = layer_1;
            default: next_layer_1 = layer_1;
        endcase
    end
    /* layer 2 */
    always @(*) begin
        case (state)
            SWAIT: next_layer_2 = layer_2;
            SSTART: next_layer_2 = 0;
            SDENSE1: next_layer_2 = 0;
            SDENSE2: begin
                if(mem_addr - 2 <= KER2_E)       next_layer_2 = next_layer_2_kernel;
                else if(mem_addr - 2 <= BIAS2_E) next_layer_2 = next_layer_2_bias;
                else                             next_layer_2 = layer_2;
            end
            SFIN: next_layer_2 = layer_2;
            default: next_layer_2 = layer_2;
        endcase
    end
    /* Address */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_mem_addr = 0;
                else next_mem_addr = mem_addr;
            end
            SSTART: next_mem_addr = mem_addr + 1;
            SDENSE1: next_mem_addr = mem_addr + 1;
            SDENSE2: next_mem_addr = mem_addr + 1;
            SFIN: next_mem_addr = mem_addr;
            default: next_mem_addr = mem_addr;
        endcase
    end
    /* Count */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_count = 1;
                else next_count = 0;
            end
            SSTART: begin
                if(count == CSTART) next_count = 0;
                else next_count = count + 1;
            end
            SDENSE1: next_count = 0;
            SDENSE2: next_count = 0;
            SFIN: next_count = 0;
            default: next_count = 0;
        endcase
    end
    /* Finish */
    always @(*) begin
        case (state)
            SDENSE2: begin
                if(mem_addr - 2 == BIAS2_E) next_finish = 1;
                else next_finish = 0;
            end
            default: next_finish = 0;
        endcase
    end
endmodule