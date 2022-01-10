module Audio (
	input clk,
	input reset,
    input [31:0] BEAT_FREQ,
	output pmod_1,
	output pmod_2,
	output pmod_4
	);

	parameter DUTY_BEST = 10'd512;

	wire [31:0] freq;
	wire [7:0] ibeatNum;
	wire beatFreq;

	assign pmod_2 = 1'd1;	// no gain(6dB)
	assign pmod_4 = 1'd1;	// turn-on

	PWM_gen btSpeedGen ( 
        .clk(clk), 
		.reset(reset),
		.freq(BEAT_FREQ),
	    .duty(DUTY_BEST), 
		.PWM(beatFreq)
	);
		
	PlayerCtrl playerCtrl_inst ( 
        .clk(beatFreq),
		.reset(reset),
		.ibeat(ibeatNum)
	);	
		
	Music music00 ( 
        .ibeatNum(ibeatNum),
		.tone(freq)
	);
    
	PWM_gen toneGen ( 
        .clk(clk), 
		.reset(reset), 
		.freq(freq),
		.duty(DUTY_BEST), 
		.PWM(pmod_1)
	);
endmodule