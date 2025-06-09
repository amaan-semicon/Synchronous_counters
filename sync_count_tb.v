`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 17:09:51
// Design Name: 
// Module Name: sync_count_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sync_count_tb;

    reg clk, reset_n;
    wire [3:0] Q;

    // Instantiate the Unit Under Test (UUT)
    sync_cnt uut (
        .clk(clk),
        .rst(reset_n),
        .out(Q)
    );

    // Generate clock with period = 10 time units
    always #5 clk = ~clk;

    // Dump waveform
    initial begin
        $dumpfile("sync_cnt.vcd");
        $dumpvars(0, sync_count_tb);
        clk = 1'b0;
    end

    // Apply reset
    initial begin
        reset_n = 1'b0;
        #2 reset_n = 1'b1;
    end

    // Stop simulation after 200 time units
    initial #200 $stop;



endmodule
