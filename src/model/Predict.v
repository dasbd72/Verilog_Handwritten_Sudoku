module Predict #(
    localparam SWAIT    = 3'd0,
    localparam SCAPTURE = 3'd1,
    localparam SNEURAL  = 3'd2,
    localparam SOUT     = 3'd3,
    localparam SFIN     = 3'd4
    ) (
    input  wire clk,
    input  wire rst,
    input  wire start,
    input  wire [52*52 - 1 : 0] track_input,
    output reg  [3 : 0] predicted_number,
    output reg          finish
    );

    // ========================================
    // Signals
    // ========================================
    reg [2 : 0] state;
    reg [2 : 0] next_state;

    wire start_process;
    reg  [28*28 - 1: 0] reg_scaled_track_input;
    reg  [28*28 - 1: 0] next_reg_scaled_track_input;
    wire [28*28 - 1: 0] scaled_track_input;
    wire [32*10 - 1:0]  layer_2;
    wire                finish_neural;
    wire [3 : 0]        next_predicted_number;
    reg                 next_finish;

    Scale m_scale(
        .img(track_input),
        .scaled_img(scaled_track_input)
    );

    Neural_Network m_Neural_Network(
        .clk(clk),
        .rst(rst),
        .start(start_process),
        .layer_0(reg_scaled_track_input),
        .layer_2(layer_2),
        .finish(finish_neural)
    );

    Output_Processor m_Output_Processor(
        .layer_2(layer_2),
        .number(next_predicted_number)
    );
    
    // ========================================
    // DFFS
    // ========================================
    always @(posedge clk ) begin
        if(rst) begin
            state                   <= SWAIT;
            reg_scaled_track_input  <= 0;
            predicted_number        <= 0;
            finish                  <= 0;
        end else begin
            state                   <= next_state;
            reg_scaled_track_input  <= next_reg_scaled_track_input;
            predicted_number        <= next_predicted_number;
            finish                  <= next_finish;
        end
    end

    // ========================================
    // Combinationals
    // ========================================
    assign start_process = (state == SCAPTURE || state == SNEURAL);

    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SCAPTURE;
                else next_state = state;
            end 
            SCAPTURE: next_state = SNEURAL;
            SNEURAL: begin
                if(finish_neural) next_state = SOUT;
                else next_state = state;
            end
            SOUT: next_state = SFIN;
            SFIN: next_state = SWAIT;
            default: next_state = SWAIT;
        endcase
    end
    /* Capturing scaled track input */
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_reg_scaled_track_input = scaled_track_input;
                else next_reg_scaled_track_input = 0;
            end
            default: next_reg_scaled_track_input = reg_scaled_track_input;
        endcase
    end
    /*  */
    always @(*) begin
        case (state)
            SOUT: next_finish = 1;
            default: next_finish = 0;
        endcase
    end

endmodule