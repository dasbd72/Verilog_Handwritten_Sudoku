module Music (
	input [7:0] ibeatNum,	
	output reg [31:0] tone
	);

	localparam C4 = 32'd262; // C4 
	localparam D4 = 32'd294; // D4
	localparam E4 = 32'd330; // E4
	localparam F4 = 32'd349; // F4
	localparam G4 = 32'd392; // G4
	localparam A4 = 32'd440; // A4
	localparam B4 = 32'd494; // B4
	localparam Silence = 32'd20000; // Silence

	always @(*) begin
		case (ibeatNum)
			8'd1:  tone = C4;
			8'd2:  tone = D4;
			8'd3:  tone = E4;
			8'd4:  tone = F4;
			8'd5:  tone = G4;
			8'd6:  tone = A4;
			8'd7:  tone = B4;

			8'd8:  tone = C4 << 1;
			8'd9:  tone = D4 << 1;
			8'd10: tone = E4 << 1;
			8'd11: tone = F4 << 1;
			8'd12: tone = G4 << 1;
			8'd13: tone = A4 << 1;
			8'd14: tone = B4 << 1;

			8'd15: tone = C4 << 2;
			8'd16: tone = D4 << 2;
			8'd17: tone = E4 << 2;
			8'd18: tone = F4 << 2;
			8'd19: tone = G4 << 2;
			8'd20: tone = A4 << 2;
			8'd21: tone = B4 << 2;

			8'd22: tone = C4 << 3;
			8'd23: tone = D4 << 3;
			8'd24: tone = E4 << 3;
			8'd25: tone = F4 << 3;
			8'd26: tone = G4 << 3;
			8'd27: tone = A4 << 3;
			8'd28: tone = B4 << 3;
			
			8'd29: tone = C4 << 4;

			default : tone = Silence;
		endcase
	end

endmodule