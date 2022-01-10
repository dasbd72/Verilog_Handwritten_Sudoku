module PlayerCtrl (
	input clk,
	input reset,
	output reg [7:0] ibeat
	);
	parameter BEATLEAGTH = 29;

	always @(posedge clk, posedge reset) begin
		if (reset)
			ibeat <= 1;
		else if (ibeat == BEATLEAGTH) 
            ibeat <= 1;
        else 
            ibeat <= ibeat + 1;
	end

endmodule