`timescale 1ns/1ps

module basic_tb();

    // Inputs
    reg [1:0] din;
    reg  clk;
    reg  rst;

    wire [1:0] dout;

    // Instantiate the SPI slave module
    basic uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );

always #5 clk = ~clk;
    // Test sequence
    initial begin
        $dumpfile("basic_tb.vcd");  // Name of the VCD file
        $dumpvars(0, basic_tb);     // Dump all variables in the testbench
        // Initialize inputs
        din = 2'b00;
        clk = 1'b0;
        rst = 1'b1;
        #20 rst = 1'b0;
        #20 din = 2'b01;
        #10 din = 2'b10;
        #10 din = 2'b11;
        // End of simulation
        #20 $finish;
    end

endmodule
