module Seven_seg(status, seg);
    input status;
    output reg [6:0] seg;
    always @ (*) begin
        case (status)
            0 : seg = 7'b1111001; // Master display 1
            1 : seg = 7'b0100100; // Slave display 2
            default : seg = 7'b1111001;
        endcase
    end
endmodule