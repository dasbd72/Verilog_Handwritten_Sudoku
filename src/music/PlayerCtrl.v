module PlayerCtrl (
	input clk,
	input reset,
	output reg [7:0] ibeat
	);
	parameter BEATLEAGTH = 29;

	always @(posedge clk) begin
		if (reset)
			ibeat <= 0;
		else if (ibeat == BEATLEAGTH) 
            ibeat <= 0;
        else 
            ibeat <= ibeat + 1;
	end

endmodule