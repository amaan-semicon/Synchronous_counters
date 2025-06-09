`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 16:57:48
// Design Name: 
// Module Name: sync_cnt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4-bit synchronous up counter using T flip-flops
// 
//////////////////////////////////////////////////////////////////////////////////

module sync_cnt(
    input clk,
    input rst,
    output [3:0] out
    );
    
    wire [3:0] Q_next;
    
    assign Q_next[0] = 1'b1;

    t_flip_flop t0(.T(Q_next[0]), .clk(clk), .rst(rst), .Q(out[0]));
    
    assign Q_next[1] = Q_next[0] & out[0];
    t_flip_flop t1(.T(Q_next[1]), .clk(clk), .rst(rst), .Q(out[1]));
    
    assign Q_next[2] = Q_next[1] & out[1];
    t_flip_flop t2(.T(Q_next[2]), .clk(clk), .rst(rst), .Q(out[2]));
    
    assign Q_next[3] = Q_next[2] & out[2];
    t_flip_flop t3(.T(Q_next[3]), .clk(clk), .rst(rst), .Q(out[3]));
    
endmodule
