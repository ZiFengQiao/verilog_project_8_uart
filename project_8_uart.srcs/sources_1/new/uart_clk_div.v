`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/09 20:34:43
// Design Name: 
// Module Name: uart_clk_div
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


`define sys_period 'd100_000_000

module uart_clk_div #(parameter baud = 9600)(
    input clk,
    output reg clk_uart
    );

    localparam div_num = `sys_period / baud;     /* 计算分频数 */

    reg [15:0] num = 16'b0;
    always @(posedge clk) begin
        if (num == div_num) begin
            num <= 0;
            clk_uart <= 1;
        end else begin
            num <= num + 1;
            clk_uart <= 0;
        end
    end
endmodule
