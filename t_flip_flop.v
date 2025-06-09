`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 16:52:01
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
input T,
    input clk,
    input rst,
    output Q
    );
    
    reg Q_reg;
    wire Q_next;

    always @(posedge clk or negedge rst) begin
        if (~rst)
            Q_reg <= 1'b0;
        else
            #6 Q_reg <= Q_next;
    end

    assign Q_next = T ? ~Q_reg : Q_reg;
    assign Q = Q_reg;
    
endmodule


