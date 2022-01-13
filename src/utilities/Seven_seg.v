module Seven_seg(status, seg);
    input status;
    output reg [6:0] seg;
    always @ (*) begin
        case (status)
            1'b0 : seg = 7'b1111001; // Master display 1
            1'b1 : seg = 7'b0100100; // Slave display 2
            default : seg = 7'b1111001;
        endcase
    end
endmodule