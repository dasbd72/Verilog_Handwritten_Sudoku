module Music_Top (
	input clk,
	input reset,
    output pmod_1,
	output pmod_2
    );

	wire [27:0] BEAT_FREQ = 28'd4;

	Audio audio_inst(
		.clk(clk),
		.reset(reset),
		.BEAT_FREQ(BEAT_FREQ),
		.pmod_1(pmod_1),
		.pmod_2(pmod_2)
	);

endmodule