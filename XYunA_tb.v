// Yung Cheng, Adrian U. (S14)
/*
    Boolean Function Assigned
    F = (AB' + A'B)(C + D')
*/

module YungCheng_tb();
    reg [3:0] t_in;
    wire t_out;

    YungCheng dut(t_in[3], t_in[2], t_in[1], t_in[0], t_out);

    initial begin
        t_in = 4'b0000;
        repeat(16)
            #10 t_in += 4'b0001;
    end

    initial begin
        $display("Written by Adrian Yung Cheng - S14");
        $display("Boolean Function Assigned:");
        $display("F = (AB' + A'B)(C + D')");
        $display("Verilog Dataflow Model");
        $display("Time  |   A   |   B   |   C   |   D   |   F");
        $monitor("%03d   |   %b   |   %b   |   %b   |   %b   |   %b", $time, t_in[3], t_in[2], t_in[1], t_in[0], t_out);
        $dumpfile("XYunA_dump.vcd");
        $dumpvars();
    end

endmodule
        