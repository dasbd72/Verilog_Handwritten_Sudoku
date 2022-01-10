module Music_Top (
	input clk,
	input reset,
    output pmod_1,
	output pmod_2,
	output pmod_4
    );

	wire [31:0] BEAT_FREQ;

	Audio audio_inst(
		.clk(clk),
		.reset(reset),
		.BEAT_FREQ(BEAT_FREQ),
		.pmod_1(pmod_1),
		.pmod_2(pmod_2),
		.pmod_4(pmod_4)
	);

endmodule