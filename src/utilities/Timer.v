module Timer (
    input clk,
    input rst,
    output reg [15:0] time_spent
    );

    wire dclk;
    wire [3:0] minuteXX, minuteX;
    wire [3:0] secondXX, secondX;
    assign {minuteXX, minuteX, secondXX, secondX} = time_spent;
    reg [3:0] minuteXX_next, minuteX_next; 
    reg [3:0] secondXX_next, secondX_next;
    wire [15:0] time_spent_next = {minuteXX_next, minuteX_next, secondXX_next, secondX_next};

    Clock_Divider #(.length(10**8)) cdtimer_inst(
        .clk(clk),
        .rst(rst),
        .dclk(dclk)
    );

    always @(posedge clk, posedge rst) begin
        if (rst) begin
            time_spent <= 0;
        end else if (dclk) begin
            time_spent <= time_spent_next;
        end else begin
            time_spent <= time_spent;
        end
    end

    always @(*) begin
        if (minuteX == 4'd9 && secondXX == 4'd5 && secondX == 4'd9) begin
            minuteXX_next = minuteXX + 1;
        end else begin
            minuteXX_next = minuteXX;
        end
    end

    always @(*) begin
        if (secondXX == 4'd5 && secondX == 4'd9) begin
            if (minuteX == 4'd9) begin
                minuteX_next = 0;
            end else begin
                minuteX_next = minuteX + 1;
            end
        end else begin
            minuteX_next = minuteX;
        end
    end

    always @(*) begin
        if (secondX == 4'd9) begin
            if (secondXX == 4'd5) begin
                secondXX_next = 0;
            end else begin
                secondXX_next = secondXX + 1;
            end
        end else begin
            secondXX_next = secondXX;
        end
    end

    always @(*) begin
        if (secondX == 4'd9) begin
            secondX_next = 0;
        end else begin
            secondX_next = secondX + 1;
        end
    end
    
endmodule