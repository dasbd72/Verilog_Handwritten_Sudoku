module LED_Controller(
        input clk,
        input rst,
        input [1:0] State,
        output reg [15:0] LED
    );

    parameter [1:0] SMENU = 2'd0;
    parameter [1:0] SGAME = 2'd1;
    parameter [1:0] SOVER = 2'd2;

    wire dclk;
    reg [15:0] LED_next;
    reg direction; // 1 <-- , 0 -->
    reg direction_next;

    Clock_Divider  #(.length(2*10**7)) cd27_inst(
        .clk(clk),
        .rst(rst),
        .dclk(dclk)
    );

    always @(posedge clk) begin
        if (rst) begin
            LED <= 16'h0000;
            direction <= 1'b0;
        end else if (dclk) begin
            LED <= LED_next;
            direction <= direction_next;
        end else begin
            LED <= LED;
            direction <= direction;
        end
    end

    always @(*) begin
        case (State) 
            SMENU: begin
                LED_next = 16'h0000;
            end
            SGAME: begin
                if (LED == 16'h0000) begin
                    LED_next = 16'h0001;
                    direction_next = 1;
                end else begin 
                    if (direction) begin
                        if (LED == 16'h1000) begin
                            LED_next = LED >> 1;
                            direction_next = 0;
                        end else begin
                            LED_next = LED << 1;
                            direction_next = 1;
                        end
                    end else begin
                        if (LED == 16'h0001) begin
                            LED_next = LED << 1;
                            direction_next = 1;
                        end else begin
                            LED_next = LED >> 1;
                            direction_next = 0;
                        end
                    end
                end
            end
            SOVER: begin
                LED_next = (LED == 16'h0000) ? 16'hFFFF : 16'h0000;
            end
            default: begin
                LED_next = 16'h0000;
                direction_next = direction_next;
            end
        endcase

    end


endmodule