module Music (
	input [7:0] ibeatNum,	
	output reg [31:0] tone
	);

	localparam f1 = 32'd262; // C4 
	localparam f2 = 32'd294; // D4
	localparam f3 = 32'd330; // E4
	localparam f4 = 32'd349; // F4
	localparam f5 = 32'd392; // G4
	localparam f6 = 32'd440; // A4
	localparam f7 = 32'd494; // B4
	localparam Silence = 32'd20000; // Silence

	always @(*) begin
		case (ibeatNum)
			8'd0:  tone = Silence;
			8'd1:  tone = Silence;
			8'd2:  tone = f3 << 1;
			8'd3:  tone = f3 << 1;
			8'd4:  tone = f4 << 1;
			8'd5:  tone = f3 << 1;
			8'd6:  tone = f2 << 1;
			8'd7:  tone = f3 << 1;

			8'd8:  tone = f6;
			8'd9:  tone = f6;
			8'd10: tone = f2 << 1;
			8'd11: tone = f1 << 1;
			8'd12: tone = f6;
			8'd13: tone = f6;
			8'd14: tone = f1 << 1;
			8'd15: tone = f1 << 1;

			8'd16: tone = f2 << 1;
			8'd17: tone = f2 << 1;
			8'd18: tone = f2 << 1;
			8'd19: tone = f2 << 1;
			8'd20: tone = f3 << 1;
			8'd21: tone = f2 << 1;
			8'd22: tone = f1 << 1;
			8'd23: tone = f2 << 1;

			8'd24: tone = f3 << 1;
			8'd25: tone = f3 << 1;
			8'd26: tone = f1 << 1;
			8'd27: tone = f6;
			8'd28: tone = f6;
			8'd29: tone = f1 << 1;
			8'd30: tone = f6;
			8'd31: tone = f1 << 1;

			8'd32: tone = f6;
			8'd33: tone = f6;
			8'd34: tone = f3 << 1;
			8'd35: tone = f3 << 1;
			8'd36: tone = f4 << 1;
			8'd37: tone = f3 << 1;
			8'd38: tone = f3 << 1;
			8'd39: tone = f1 << 1;

			8'd40: tone = f3 << 1;
			8'd41: tone = f2 << 1;
			8'd42: tone = f2 << 1;
			8'd43: tone = f3 << 1;
			8'd44: tone = f6;
			8'd45: tone = f6;
			8'd46: tone = f6; 
			8'd47: tone = f1 << 1;

			8'd48: tone = f1 << 1;
			8'd49: tone = f1 << 1;
			8'd50: tone = f7;
			8'd51: tone = f7;
			8'd52: tone = f3 << 1;
			8'd53: tone = f3 << 1;
			8'd54: tone = f2 << 1;
			8'd55: tone = f2 << 1;

			8'd56: tone = f1 << 1;
			8'd57: tone = f1 << 1;
			8'd58: tone = f1 << 1;
			8'd59: tone = f1 << 1;

			default : tone = Silence;
		endcase
	end

endmodule