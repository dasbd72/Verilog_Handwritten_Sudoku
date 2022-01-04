/*
    clk : posedge clock signal
    rst : posedge reset signal
    start : req 1 cycle signal
    layer_0 : req 64 cycle
    layer_1 : last until next start signal
    finish : last 1 cycle
 */
module Dense_1(
    input  wire clk, 
    input  wire rst,
    input  wire start,
    input  wire [64*16 - 1:0] layer_0,
    output reg  [10 - 1:0] onehot_output,
    output reg  finish
    );
    localparam [10239:0] kernel_1 = {-16'h0310,16'h015f,16'h00ad,-16'h0138,-16'h03a8,-16'h008a,-16'h0410,-16'h01e9,-16'h00be,-16'h02ae,-16'h03b7,-16'h0524,-16'h033a,-16'h00db,16'h00de,-16'h0053,-16'h0079,-16'h0251,-16'h0082,-16'h020a,-16'h023e,16'h0061,-16'h059f,-16'h09a1,-16'h030a,16'h024a,16'h00ff,-16'h0034,-16'h03a7,-16'h0635,-16'h029d,16'h013b,-16'h0312,-16'h04c9,-16'h0013,-16'h033b,16'h012a,-16'h05bd,-16'h047c,-16'h04ab,-16'h0139,-16'h0426,-16'h0060,16'h004b,-16'h06bb,16'h00da,-16'h04a7,16'h0005,-16'h0377,-16'h02b2,-16'h031e,-16'h04c9,16'h031c,16'h0211,16'h0015,16'h00cb,-16'h03c4,-16'h0324,-16'h0941,-16'h040f,-16'h0107,-16'h02b8,-16'h0131,16'h0263,-16'h04f3,-16'h0040,-16'h0065,-16'h0411,-16'h033e,-16'h0621,-16'h0213,-16'h061e,-16'h0019,-16'h0214,16'h0215,16'h0002,-16'h0187,-16'h041c,-16'h007c,-16'h00d7,-16'h02f1,-16'h075e,-16'h0243,-16'h0414,16'h024b,-16'h0335,-16'h0168,-16'h0455,16'h0186,16'h0031,-16'h0203,16'h017d,-16'h0538,-16'h04ac,-16'h0328,-16'h0154,16'h005e,-16'h0461,16'h00de,-16'h0229,-16'h01d3,-16'h0262,-16'h0362,-16'h0090,-16'h02c3,16'h011d,16'h01bc,-16'h0563,-16'h01e8,-16'h08dd,-16'h0369,-16'h001a,16'h001b,-16'h0096,-16'h0307,16'h0111,-16'h0218,-16'h0344,-16'h0101,-16'h0495,-16'h033b,16'h015f,-16'h01ee,16'h0134,-16'h0202,-16'h034a,-16'h01d1,-16'h04ea,-16'h00a5,-16'h005c,-16'h033d,16'h00f4,16'h00f5,-16'h0070,-16'h05ee,-16'h01de,-16'h0185,16'h014f,-16'h00a2,-16'h0369,-16'h0358,-16'h00e3,16'h014e,-16'h0031,-16'h0710,16'h0076,16'h01a9,-16'h049a,-16'h02a9,-16'h0602,-16'h036a,-16'h0080,-16'h024f,-16'h081f,-16'h004c,-16'h020a,16'h012e,16'h0099,-16'h0581,-16'h022b,-16'h01e5,16'h0548,-16'h0003,-16'h0025,-16'h0565,-16'h0650,-16'h02e5,16'h0170,-16'h04d3,-16'h003e,-16'h018d,-16'h01e7,-16'h055a,-16'h0464,-16'h0375,16'h01be,-16'h05e5,-16'h01f6,16'h0075,16'h0044,-16'h01ef,16'h02e1,16'h011f,16'h000d,-16'h035a,-16'h0209,-16'h0605,-16'h002f,-16'h0571,-16'h012d,-16'h026c,-16'h060d,16'h0348,-16'h0556,16'h02ce,-16'h0131,-16'h0293,-16'h0bb3,-16'h056d,-16'h04f2,-16'h0292,16'h008b,16'h02a5,16'h02e0,-16'h029d,16'h007d,-16'h039f,-16'h0320,-16'h09ce,-16'h0439,-16'h02ef,-16'h053f,-16'h0719,-16'h0334,-16'h000f,-16'h031c,-16'h0307,-16'h036d,16'h0171,-16'h000f,-16'h018e,16'h02e3,-16'h00c3,16'h0070,-16'h03fa,-16'h0678,-16'h028f,-16'h0369,-16'h020f,16'h00f9,-16'h0246,16'h0148,-16'h01ba,-16'h04d1,-16'h04e9,-16'h0015,16'h01b6,-16'h03f2,-16'h00e5,-16'h04bb,-16'h03ac,16'h0188,-16'h07e5,-16'h0518,-16'h01f4,-16'h002f,16'h026b,-16'h00e0,-16'h0340,-16'h04ad,-16'h024f,-16'h055c,16'h013c,-16'h0749,16'h0087,-16'h0380,-16'h0116,-16'h0250,-16'h031d,-16'h005e,-16'h0222,-16'h0320,-16'h0061,-16'h06fa,-16'h0047,-16'h04c8,-16'h0332,16'h040e,-16'h03ab,-16'h0393,-16'h0123,-16'h001a,-16'h0781,-16'h06ea,16'h0024,-16'h06cc,16'h013f,-16'h0408,-16'h0249,-16'h00d1,-16'h02eb,16'h0338,-16'h04b5,-16'h00d3,-16'h06fe,-16'h0180,-16'h0207,16'h0179,-16'h02f4,16'h002e,-16'h0318,-16'h01a1,16'h04fb,-16'h0929,16'h03ee,-16'h03dd,-16'h0467,-16'h0e9b,-16'h04e8,-16'h0267,-16'h01dd,16'h01eb,-16'h00b2,-16'h02ac,16'h003f,-16'h02d1,-16'h0525,16'h00de,-16'h0630,-16'h0189,-16'h028b,16'h0448,-16'h039d,16'h0074,-16'h06dc,-16'h02fd,-16'h0211,-16'h00bb,-16'h02d6,16'h00e7,-16'h01de,-16'h0302,-16'h0531,-16'h0138,-16'h0349,-16'h0151,-16'h0065,-16'h05fd,-16'h0046,-16'h0472,-16'h00d9,-16'h0177,16'h0132,-16'h0481,-16'h02eb,-16'h0382,-16'h01e1,16'h03c5,-16'h063c,-16'h0527,-16'h014c,-16'h05ad,-16'h0318,-16'h000e,16'h015e,-16'h05e1,-16'h0264,-16'h06fc,-16'h025d,-16'h0066,-16'h031d,16'h0305,-16'h00ef,-16'h02c6,-16'h04a5,-16'h02e2,-16'h030e,16'h01c8,-16'h05f8,-16'h006d,-16'h0273,-16'h0172,-16'h04df,-16'h062f,-16'h00f6,-16'h0122,-16'h010c,16'h02d3,-16'h03b5,-16'h01bf,-16'h025a,16'h0216,-16'h0072,-16'h04a4,-16'h0044,-16'h0502,-16'h036f,16'h01bd,-16'h06c4,-16'h00bf,-16'h037a,-16'h03f8,-16'h00c4,-16'h00ac,-16'h018a,-16'h0079,-16'h06a7,-16'h0074,-16'h00bf,-16'h01cc,-16'h032b,16'h03ca,-16'h0247,-16'h0285,-16'h002a,-16'h06a2,-16'h049f,16'h0028,-16'h0577,-16'h0036,-16'h0182,-16'h02f6,16'h0345,-16'h00c7,-16'h0a51,16'h00e7,-16'h08c7,16'h033a,-16'h03bf,-16'h0351,-16'h02b3,-16'h054e,16'h00ad,-16'h0300,-16'h0330,16'h0036,-16'h01db,-16'h0120,-16'h00ae,-16'h021e,-16'h02dd,-16'h038c,-16'h03eb,-16'h017c,16'h00c4,-16'h0138,-16'h019a,-16'h02f1,-16'h00df,-16'h00a8,-16'h0254,16'h0050,-16'h020e,-16'h01a6,-16'h028f,-16'h04d1,-16'h0399,-16'h01ab,16'h0077,-16'h0115,-16'h0277,-16'h00db,-16'h053b,16'h0037,-16'h0588,16'h00e6,-16'h0313,-16'h0244,-16'h00a8,-16'h037a,-16'h02ed,-16'h01f3,-16'h01ad,16'h00dd,16'h0064,-16'h0453,-16'h03ce,-16'h0098,-16'h0117,16'h0086,-16'h035e,-16'h02da,-16'h0715,-16'h0667,-16'h00c8,16'h0047,-16'h009e,-16'h00c7,-16'h030f,16'h002f,-16'h021e,-16'h0205,-16'h047f,16'h02fd,-16'h01e0,16'h002d,-16'h035f,-16'h0061,-16'h00e9,-16'h0263,-16'h02fa,-16'h0730,-16'h00a1,16'h00e7,-16'h000f,-16'h012a,-16'h01ec,-16'h0145,-16'h00e9,-16'h004a,-16'h01a4,-16'h0158,16'h0375,-16'h032d,-16'h04f3,16'h0037,-16'h05fd,16'h02da,-16'h03ef,-16'h04e6,-16'h019c,-16'h0356,-16'h06ca,-16'h03ac,-16'h02ed,16'h01af,-16'h01a8,-16'h0378,-16'h0007,-16'h0149,-16'h0355,-16'h0735,-16'h03ed,-16'h03ec,-16'h033f,-16'h01df,16'h02cc,-16'h03ea,-16'h00fa,16'h006c,-16'h02b2,-16'h0609,-16'h0366,-16'h00ce,-16'h00dd,-16'h0291,-16'h0165,-16'h0596,16'h03af,-16'h00c4,-16'h0221,-16'h0266,16'h00a3,16'h02e0,-16'h0a3b,16'h010d,-16'h02b2,16'h001a,-16'h0627,-16'h040e,-16'h03fe,-16'h03bd,-16'h00b0,16'h0096,16'h0153,16'h001f,-16'h001a,-16'h0189,-16'h0393,-16'h0134,-16'h016f,-16'h0648,-16'h0007,16'h01d4,-16'h0489,-16'h0391,-16'h0378,-16'h03f3,16'h0181,-16'h0175,-16'h0373,-16'h0304,-16'h0078,-16'h0123,-16'h0502,-16'h00d5,-16'h02f9,-16'h01cc,-16'h0192,16'h0049,-16'h0263,16'h01ad,-16'h06d8,-16'h0458,-16'h0178,-16'h0270,16'h00f2,16'h01e2,-16'h0300,16'h000e,-16'h0336,-16'h060b,-16'h039e,-16'h010b,16'h016c,-16'h0272,16'h0242,-16'h0364,-16'h00b0,-16'h017a,-16'h01e6,-16'h01d6,16'h006b,-16'h07ad,-16'h032a,-16'h0273,16'h02af,-16'h056e,-16'h009d,-16'h02b5,-16'h017d,-16'h06be,-16'h0102,-16'h0136,-16'h01aa,-16'h04b3,-16'h0323,-16'h02bd,16'h02b3,16'h0072,-16'h01aa,-16'h0413,-16'h0470,-16'h013a,-16'h0375,-16'h023a,-16'h028d,16'h01a8,16'h0102,-16'h01c8,-16'h02ce,16'h006a,16'h0050,16'h005f,-16'h07a3,-16'h0047,-16'h052c,-16'h0142,-16'h0421,-16'h0097,-16'h013e,-16'h0ae5,16'h0429,-16'h070c,16'h0229,-16'h0297,-16'h02cf,-16'h0774,-16'h0857,-16'h0097};
    localparam [159:0] bias_1 = {-16'h02ee,16'h0424,16'h00c0,16'h0067,16'h0021,16'h01e5,-16'h029c,16'h00c3,-16'h079d,-16'h03cf};
    localparam HEIGHT = 64;
    localparam WIDTH = 10;
    
    localparam SWAIT = 3'd0;
    localparam SDOT = 3'd1;
    localparam SRELU = 3'd2;
    localparam SBIAS = 3'd3;
    localparam SFIN = 3'd4;
    reg [2:0] state, next_state;
    reg [10*16 - 1:0] layer_1;
    // row * WIDTH + col
    reg  [16 - 1:0] col, next_col;
    reg  [16*64 - 1:0] next_layer_1;
    reg  next_finish;

    always @(posedge clk ) begin
        if(rst) begin
            state <= SWAIT;
            col <= 0;
            layer_1 <= 0;
            finish <= 0;
        end else begin
            state <= next_state;
            col <= next_col;
            layer_1 <= next_layer_1;
            finish <= next_finish;
        end
    end
    // state
    always @(*) begin
        case (state)
            SWAIT: begin
                if(start) next_state = SDOT;
                else next_state = state;
            end
            SDOT: begin
                if(col == WIDTH - 1) next_state = SRELU;
                else next_state = state;
            end
            SRELU: next_state = SFIN;
            default: next_state = SWAIT;
        endcase
    end
    // row, col
    always @(*) begin
        case (state)
            SDOT: next_col = col + 16'b1;
            default: next_col = 16'b0;
        endcase
    end
    // finish
    always @(*) begin
        case (state)
            SBIAS: next_finish = 1'b1;
            default: next_finish = 1'b0;
        endcase
    end
    // layer_1
    always @(*) begin
        

        case (state)
            SWAIT: begin
                if(start) next_layer_1 = 0;
                else next_layer_1 = layer_1;
            end
            SDOT: begin
                next_layer_1[15-:16] = layer_1[15-:16] + layer_0[15-:16]*kernel_1[(0+col+1)*16-1-:16];
                next_layer_1[31-:16] = layer_1[31-:16] + layer_0[31-:16]*kernel_1[(10+col+1)*16-1-:16];
                next_layer_1[47-:16] = layer_1[47-:16] + layer_0[47-:16]*kernel_1[(20+col+1)*16-1-:16];
                next_layer_1[63-:16] = layer_1[63-:16] + layer_0[63-:16]*kernel_1[(30+col+1)*16-1-:16];
                next_layer_1[79-:16] = layer_1[79-:16] + layer_0[79-:16]*kernel_1[(40+col+1)*16-1-:16];
                next_layer_1[95-:16] = layer_1[95-:16] + layer_0[95-:16]*kernel_1[(50+col+1)*16-1-:16];
                next_layer_1[111-:16] = layer_1[111-:16] + layer_0[111-:16]*kernel_1[(60+col+1)*16-1-:16];
                next_layer_1[127-:16] = layer_1[127-:16] + layer_0[127-:16]*kernel_1[(70+col+1)*16-1-:16];
                next_layer_1[143-:16] = layer_1[143-:16] + layer_0[143-:16]*kernel_1[(80+col+1)*16-1-:16];
                next_layer_1[159-:16] = layer_1[159-:16] + layer_0[159-:16]*kernel_1[(90+col+1)*16-1-:16];
                next_layer_1[175-:16] = layer_1[175-:16] + layer_0[175-:16]*kernel_1[(100+col+1)*16-1-:16];
                next_layer_1[191-:16] = layer_1[191-:16] + layer_0[191-:16]*kernel_1[(110+col+1)*16-1-:16];
                next_layer_1[207-:16] = layer_1[207-:16] + layer_0[207-:16]*kernel_1[(120+col+1)*16-1-:16];
                next_layer_1[223-:16] = layer_1[223-:16] + layer_0[223-:16]*kernel_1[(130+col+1)*16-1-:16];
                next_layer_1[239-:16] = layer_1[239-:16] + layer_0[239-:16]*kernel_1[(140+col+1)*16-1-:16];
                next_layer_1[255-:16] = layer_1[255-:16] + layer_0[255-:16]*kernel_1[(150+col+1)*16-1-:16];
                next_layer_1[271-:16] = layer_1[271-:16] + layer_0[271-:16]*kernel_1[(160+col+1)*16-1-:16];
                next_layer_1[287-:16] = layer_1[287-:16] + layer_0[287-:16]*kernel_1[(170+col+1)*16-1-:16];
                next_layer_1[303-:16] = layer_1[303-:16] + layer_0[303-:16]*kernel_1[(180+col+1)*16-1-:16];
                next_layer_1[319-:16] = layer_1[319-:16] + layer_0[319-:16]*kernel_1[(190+col+1)*16-1-:16];
                next_layer_1[335-:16] = layer_1[335-:16] + layer_0[335-:16]*kernel_1[(200+col+1)*16-1-:16];
                next_layer_1[351-:16] = layer_1[351-:16] + layer_0[351-:16]*kernel_1[(210+col+1)*16-1-:16];
                next_layer_1[367-:16] = layer_1[367-:16] + layer_0[367-:16]*kernel_1[(220+col+1)*16-1-:16];
                next_layer_1[383-:16] = layer_1[383-:16] + layer_0[383-:16]*kernel_1[(230+col+1)*16-1-:16];
                next_layer_1[399-:16] = layer_1[399-:16] + layer_0[399-:16]*kernel_1[(240+col+1)*16-1-:16];
                next_layer_1[415-:16] = layer_1[415-:16] + layer_0[415-:16]*kernel_1[(250+col+1)*16-1-:16];
                next_layer_1[431-:16] = layer_1[431-:16] + layer_0[431-:16]*kernel_1[(260+col+1)*16-1-:16];
                next_layer_1[447-:16] = layer_1[447-:16] + layer_0[447-:16]*kernel_1[(270+col+1)*16-1-:16];
                next_layer_1[463-:16] = layer_1[463-:16] + layer_0[463-:16]*kernel_1[(280+col+1)*16-1-:16];
                next_layer_1[479-:16] = layer_1[479-:16] + layer_0[479-:16]*kernel_1[(290+col+1)*16-1-:16];
                next_layer_1[495-:16] = layer_1[495-:16] + layer_0[495-:16]*kernel_1[(300+col+1)*16-1-:16];
                next_layer_1[511-:16] = layer_1[511-:16] + layer_0[511-:16]*kernel_1[(310+col+1)*16-1-:16];
                next_layer_1[527-:16] = layer_1[527-:16] + layer_0[527-:16]*kernel_1[(320+col+1)*16-1-:16];
                next_layer_1[543-:16] = layer_1[543-:16] + layer_0[543-:16]*kernel_1[(330+col+1)*16-1-:16];
                next_layer_1[559-:16] = layer_1[559-:16] + layer_0[559-:16]*kernel_1[(340+col+1)*16-1-:16];
                next_layer_1[575-:16] = layer_1[575-:16] + layer_0[575-:16]*kernel_1[(350+col+1)*16-1-:16];
                next_layer_1[591-:16] = layer_1[591-:16] + layer_0[591-:16]*kernel_1[(360+col+1)*16-1-:16];
                next_layer_1[607-:16] = layer_1[607-:16] + layer_0[607-:16]*kernel_1[(370+col+1)*16-1-:16];
                next_layer_1[623-:16] = layer_1[623-:16] + layer_0[623-:16]*kernel_1[(380+col+1)*16-1-:16];
                next_layer_1[639-:16] = layer_1[639-:16] + layer_0[639-:16]*kernel_1[(390+col+1)*16-1-:16];
                next_layer_1[655-:16] = layer_1[655-:16] + layer_0[655-:16]*kernel_1[(400+col+1)*16-1-:16];
                next_layer_1[671-:16] = layer_1[671-:16] + layer_0[671-:16]*kernel_1[(410+col+1)*16-1-:16];
                next_layer_1[687-:16] = layer_1[687-:16] + layer_0[687-:16]*kernel_1[(420+col+1)*16-1-:16];
                next_layer_1[703-:16] = layer_1[703-:16] + layer_0[703-:16]*kernel_1[(430+col+1)*16-1-:16];
                next_layer_1[719-:16] = layer_1[719-:16] + layer_0[719-:16]*kernel_1[(440+col+1)*16-1-:16];
                next_layer_1[735-:16] = layer_1[735-:16] + layer_0[735-:16]*kernel_1[(450+col+1)*16-1-:16];
                next_layer_1[751-:16] = layer_1[751-:16] + layer_0[751-:16]*kernel_1[(460+col+1)*16-1-:16];
                next_layer_1[767-:16] = layer_1[767-:16] + layer_0[767-:16]*kernel_1[(470+col+1)*16-1-:16];
                next_layer_1[783-:16] = layer_1[783-:16] + layer_0[783-:16]*kernel_1[(480+col+1)*16-1-:16];
                next_layer_1[799-:16] = layer_1[799-:16] + layer_0[799-:16]*kernel_1[(490+col+1)*16-1-:16];
                next_layer_1[815-:16] = layer_1[815-:16] + layer_0[815-:16]*kernel_1[(500+col+1)*16-1-:16];
                next_layer_1[831-:16] = layer_1[831-:16] + layer_0[831-:16]*kernel_1[(510+col+1)*16-1-:16];
                next_layer_1[847-:16] = layer_1[847-:16] + layer_0[847-:16]*kernel_1[(520+col+1)*16-1-:16];
                next_layer_1[863-:16] = layer_1[863-:16] + layer_0[863-:16]*kernel_1[(530+col+1)*16-1-:16];
                next_layer_1[879-:16] = layer_1[879-:16] + layer_0[879-:16]*kernel_1[(540+col+1)*16-1-:16];
                next_layer_1[895-:16] = layer_1[895-:16] + layer_0[895-:16]*kernel_1[(550+col+1)*16-1-:16];
                next_layer_1[911-:16] = layer_1[911-:16] + layer_0[911-:16]*kernel_1[(560+col+1)*16-1-:16];
                next_layer_1[927-:16] = layer_1[927-:16] + layer_0[927-:16]*kernel_1[(570+col+1)*16-1-:16];
                next_layer_1[943-:16] = layer_1[943-:16] + layer_0[943-:16]*kernel_1[(580+col+1)*16-1-:16];
                next_layer_1[959-:16] = layer_1[959-:16] + layer_0[959-:16]*kernel_1[(590+col+1)*16-1-:16];
                next_layer_1[975-:16] = layer_1[975-:16] + layer_0[975-:16]*kernel_1[(600+col+1)*16-1-:16];
                next_layer_1[991-:16] = layer_1[991-:16] + layer_0[991-:16]*kernel_1[(610+col+1)*16-1-:16];
                next_layer_1[1007-:16] = layer_1[1007-:16] + layer_0[1007-:16]*kernel_1[(620+col+1)*16-1-:16];
                next_layer_1[1023-:16] = layer_1[1023-:16] + layer_0[1023-:16]*kernel_1[(630+col+1)*16-1-:16];

            end
            SRELU: begin
                next_layer_1[15-:16] = (layer_1[15] ? -layer_1[15-:16] : layer_1[15-:16]);
                next_layer_1[31-:16] = (layer_1[31] ? -layer_1[31-:16] : layer_1[31-:16]);
                next_layer_1[47-:16] = (layer_1[47] ? -layer_1[47-:16] : layer_1[47-:16]);
                next_layer_1[63-:16] = (layer_1[63] ? -layer_1[63-:16] : layer_1[63-:16]);
                next_layer_1[79-:16] = (layer_1[79] ? -layer_1[79-:16] : layer_1[79-:16]);
                next_layer_1[95-:16] = (layer_1[95] ? -layer_1[95-:16] : layer_1[95-:16]);
                next_layer_1[111-:16] = (layer_1[111] ? -layer_1[111-:16] : layer_1[111-:16]);
                next_layer_1[127-:16] = (layer_1[127] ? -layer_1[127-:16] : layer_1[127-:16]);
                next_layer_1[143-:16] = (layer_1[143] ? -layer_1[143-:16] : layer_1[143-:16]);
                next_layer_1[159-:16] = (layer_1[159] ? -layer_1[159-:16] : layer_1[159-:16]);
                next_layer_1[175-:16] = (layer_1[175] ? -layer_1[175-:16] : layer_1[175-:16]);
                next_layer_1[191-:16] = (layer_1[191] ? -layer_1[191-:16] : layer_1[191-:16]);
                next_layer_1[207-:16] = (layer_1[207] ? -layer_1[207-:16] : layer_1[207-:16]);
                next_layer_1[223-:16] = (layer_1[223] ? -layer_1[223-:16] : layer_1[223-:16]);
                next_layer_1[239-:16] = (layer_1[239] ? -layer_1[239-:16] : layer_1[239-:16]);
                next_layer_1[255-:16] = (layer_1[255] ? -layer_1[255-:16] : layer_1[255-:16]);
                next_layer_1[271-:16] = (layer_1[271] ? -layer_1[271-:16] : layer_1[271-:16]);
                next_layer_1[287-:16] = (layer_1[287] ? -layer_1[287-:16] : layer_1[287-:16]);
                next_layer_1[303-:16] = (layer_1[303] ? -layer_1[303-:16] : layer_1[303-:16]);
                next_layer_1[319-:16] = (layer_1[319] ? -layer_1[319-:16] : layer_1[319-:16]);
                next_layer_1[335-:16] = (layer_1[335] ? -layer_1[335-:16] : layer_1[335-:16]);
                next_layer_1[351-:16] = (layer_1[351] ? -layer_1[351-:16] : layer_1[351-:16]);
                next_layer_1[367-:16] = (layer_1[367] ? -layer_1[367-:16] : layer_1[367-:16]);
                next_layer_1[383-:16] = (layer_1[383] ? -layer_1[383-:16] : layer_1[383-:16]);
                next_layer_1[399-:16] = (layer_1[399] ? -layer_1[399-:16] : layer_1[399-:16]);
                next_layer_1[415-:16] = (layer_1[415] ? -layer_1[415-:16] : layer_1[415-:16]);
                next_layer_1[431-:16] = (layer_1[431] ? -layer_1[431-:16] : layer_1[431-:16]);
                next_layer_1[447-:16] = (layer_1[447] ? -layer_1[447-:16] : layer_1[447-:16]);
                next_layer_1[463-:16] = (layer_1[463] ? -layer_1[463-:16] : layer_1[463-:16]);
                next_layer_1[479-:16] = (layer_1[479] ? -layer_1[479-:16] : layer_1[479-:16]);
                next_layer_1[495-:16] = (layer_1[495] ? -layer_1[495-:16] : layer_1[495-:16]);
                next_layer_1[511-:16] = (layer_1[511] ? -layer_1[511-:16] : layer_1[511-:16]);
                next_layer_1[527-:16] = (layer_1[527] ? -layer_1[527-:16] : layer_1[527-:16]);
                next_layer_1[543-:16] = (layer_1[543] ? -layer_1[543-:16] : layer_1[543-:16]);
                next_layer_1[559-:16] = (layer_1[559] ? -layer_1[559-:16] : layer_1[559-:16]);
                next_layer_1[575-:16] = (layer_1[575] ? -layer_1[575-:16] : layer_1[575-:16]);
                next_layer_1[591-:16] = (layer_1[591] ? -layer_1[591-:16] : layer_1[591-:16]);
                next_layer_1[607-:16] = (layer_1[607] ? -layer_1[607-:16] : layer_1[607-:16]);
                next_layer_1[623-:16] = (layer_1[623] ? -layer_1[623-:16] : layer_1[623-:16]);
                next_layer_1[639-:16] = (layer_1[639] ? -layer_1[639-:16] : layer_1[639-:16]);
                next_layer_1[655-:16] = (layer_1[655] ? -layer_1[655-:16] : layer_1[655-:16]);
                next_layer_1[671-:16] = (layer_1[671] ? -layer_1[671-:16] : layer_1[671-:16]);
                next_layer_1[687-:16] = (layer_1[687] ? -layer_1[687-:16] : layer_1[687-:16]);
                next_layer_1[703-:16] = (layer_1[703] ? -layer_1[703-:16] : layer_1[703-:16]);
                next_layer_1[719-:16] = (layer_1[719] ? -layer_1[719-:16] : layer_1[719-:16]);
                next_layer_1[735-:16] = (layer_1[735] ? -layer_1[735-:16] : layer_1[735-:16]);
                next_layer_1[751-:16] = (layer_1[751] ? -layer_1[751-:16] : layer_1[751-:16]);
                next_layer_1[767-:16] = (layer_1[767] ? -layer_1[767-:16] : layer_1[767-:16]);
                next_layer_1[783-:16] = (layer_1[783] ? -layer_1[783-:16] : layer_1[783-:16]);
                next_layer_1[799-:16] = (layer_1[799] ? -layer_1[799-:16] : layer_1[799-:16]);
                next_layer_1[815-:16] = (layer_1[815] ? -layer_1[815-:16] : layer_1[815-:16]);
                next_layer_1[831-:16] = (layer_1[831] ? -layer_1[831-:16] : layer_1[831-:16]);
                next_layer_1[847-:16] = (layer_1[847] ? -layer_1[847-:16] : layer_1[847-:16]);
                next_layer_1[863-:16] = (layer_1[863] ? -layer_1[863-:16] : layer_1[863-:16]);
                next_layer_1[879-:16] = (layer_1[879] ? -layer_1[879-:16] : layer_1[879-:16]);
                next_layer_1[895-:16] = (layer_1[895] ? -layer_1[895-:16] : layer_1[895-:16]);
                next_layer_1[911-:16] = (layer_1[911] ? -layer_1[911-:16] : layer_1[911-:16]);
                next_layer_1[927-:16] = (layer_1[927] ? -layer_1[927-:16] : layer_1[927-:16]);
                next_layer_1[943-:16] = (layer_1[943] ? -layer_1[943-:16] : layer_1[943-:16]);
                next_layer_1[959-:16] = (layer_1[959] ? -layer_1[959-:16] : layer_1[959-:16]);
                next_layer_1[975-:16] = (layer_1[975] ? -layer_1[975-:16] : layer_1[975-:16]);
                next_layer_1[991-:16] = (layer_1[991] ? -layer_1[991-:16] : layer_1[991-:16]);
                next_layer_1[1007-:16] = (layer_1[1007] ? -layer_1[1007-:16] : layer_1[1007-:16]);
                next_layer_1[1023-:16] = (layer_1[1023] ? -layer_1[1023-:16] : layer_1[1023-:16]);

            end
            SBIAS: begin
                next_layer_1[15-:16] = layer_1[15-:16] + bias_1[15-:16];
                next_layer_1[31-:16] = layer_1[31-:16] + bias_1[31-:16];
                next_layer_1[47-:16] = layer_1[47-:16] + bias_1[47-:16];
                next_layer_1[63-:16] = layer_1[63-:16] + bias_1[63-:16];
                next_layer_1[79-:16] = layer_1[79-:16] + bias_1[79-:16];
                next_layer_1[95-:16] = layer_1[95-:16] + bias_1[95-:16];
                next_layer_1[111-:16] = layer_1[111-:16] + bias_1[111-:16];
                next_layer_1[127-:16] = layer_1[127-:16] + bias_1[127-:16];
                next_layer_1[143-:16] = layer_1[143-:16] + bias_1[143-:16];
                next_layer_1[159-:16] = layer_1[159-:16] + bias_1[159-:16];
                next_layer_1[175-:16] = layer_1[175-:16] + bias_1[175-:16];
                next_layer_1[191-:16] = layer_1[191-:16] + bias_1[191-:16];
                next_layer_1[207-:16] = layer_1[207-:16] + bias_1[207-:16];
                next_layer_1[223-:16] = layer_1[223-:16] + bias_1[223-:16];
                next_layer_1[239-:16] = layer_1[239-:16] + bias_1[239-:16];
                next_layer_1[255-:16] = layer_1[255-:16] + bias_1[255-:16];
                next_layer_1[271-:16] = layer_1[271-:16] + bias_1[271-:16];
                next_layer_1[287-:16] = layer_1[287-:16] + bias_1[287-:16];
                next_layer_1[303-:16] = layer_1[303-:16] + bias_1[303-:16];
                next_layer_1[319-:16] = layer_1[319-:16] + bias_1[319-:16];
                next_layer_1[335-:16] = layer_1[335-:16] + bias_1[335-:16];
                next_layer_1[351-:16] = layer_1[351-:16] + bias_1[351-:16];
                next_layer_1[367-:16] = layer_1[367-:16] + bias_1[367-:16];
                next_layer_1[383-:16] = layer_1[383-:16] + bias_1[383-:16];
                next_layer_1[399-:16] = layer_1[399-:16] + bias_1[399-:16];
                next_layer_1[415-:16] = layer_1[415-:16] + bias_1[415-:16];
                next_layer_1[431-:16] = layer_1[431-:16] + bias_1[431-:16];
                next_layer_1[447-:16] = layer_1[447-:16] + bias_1[447-:16];
                next_layer_1[463-:16] = layer_1[463-:16] + bias_1[463-:16];
                next_layer_1[479-:16] = layer_1[479-:16] + bias_1[479-:16];
                next_layer_1[495-:16] = layer_1[495-:16] + bias_1[495-:16];
                next_layer_1[511-:16] = layer_1[511-:16] + bias_1[511-:16];
                next_layer_1[527-:16] = layer_1[527-:16] + bias_1[527-:16];
                next_layer_1[543-:16] = layer_1[543-:16] + bias_1[543-:16];
                next_layer_1[559-:16] = layer_1[559-:16] + bias_1[559-:16];
                next_layer_1[575-:16] = layer_1[575-:16] + bias_1[575-:16];
                next_layer_1[591-:16] = layer_1[591-:16] + bias_1[591-:16];
                next_layer_1[607-:16] = layer_1[607-:16] + bias_1[607-:16];
                next_layer_1[623-:16] = layer_1[623-:16] + bias_1[623-:16];
                next_layer_1[639-:16] = layer_1[639-:16] + bias_1[639-:16];
                next_layer_1[655-:16] = layer_1[655-:16] + bias_1[655-:16];
                next_layer_1[671-:16] = layer_1[671-:16] + bias_1[671-:16];
                next_layer_1[687-:16] = layer_1[687-:16] + bias_1[687-:16];
                next_layer_1[703-:16] = layer_1[703-:16] + bias_1[703-:16];
                next_layer_1[719-:16] = layer_1[719-:16] + bias_1[719-:16];
                next_layer_1[735-:16] = layer_1[735-:16] + bias_1[735-:16];
                next_layer_1[751-:16] = layer_1[751-:16] + bias_1[751-:16];
                next_layer_1[767-:16] = layer_1[767-:16] + bias_1[767-:16];
                next_layer_1[783-:16] = layer_1[783-:16] + bias_1[783-:16];
                next_layer_1[799-:16] = layer_1[799-:16] + bias_1[799-:16];
                next_layer_1[815-:16] = layer_1[815-:16] + bias_1[815-:16];
                next_layer_1[831-:16] = layer_1[831-:16] + bias_1[831-:16];
                next_layer_1[847-:16] = layer_1[847-:16] + bias_1[847-:16];
                next_layer_1[863-:16] = layer_1[863-:16] + bias_1[863-:16];
                next_layer_1[879-:16] = layer_1[879-:16] + bias_1[879-:16];
                next_layer_1[895-:16] = layer_1[895-:16] + bias_1[895-:16];
                next_layer_1[911-:16] = layer_1[911-:16] + bias_1[911-:16];
                next_layer_1[927-:16] = layer_1[927-:16] + bias_1[927-:16];
                next_layer_1[943-:16] = layer_1[943-:16] + bias_1[943-:16];
                next_layer_1[959-:16] = layer_1[959-:16] + bias_1[959-:16];
                next_layer_1[975-:16] = layer_1[975-:16] + bias_1[975-:16];
                next_layer_1[991-:16] = layer_1[991-:16] + bias_1[991-:16];
                next_layer_1[1007-:16] = layer_1[1007-:16] + bias_1[1007-:16];
                next_layer_1[1023-:16] = layer_1[1023-:16] + bias_1[1023-:16];

            end
            SFIN: begin
                next_layer_1 = layer_1;
            end
            default: begin
                next_layer_1 = layer_1;
            end
        endcase
    end
endmodule