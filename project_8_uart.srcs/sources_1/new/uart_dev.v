`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 13:11:01
// Design Name: 
// Module Name: uart_dev
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


module uart_dev(
    output txd,             /* 发送总线 */
    input rxd,              /* 接收总线 */
    input [7:0] data_i,     /* 接收数据 */
    output [7:0] data_o,    /* 发送数据 */
    input clk,              /* 系统时钟 */
    input tx_en,            /* 发送使能 */
    output rx_ne            /* 接收结束 */
    );

    wire clk_uart;
    // 串口发送模块
    uart_tx uart_tx (
        .clk(clk_uart),
        .txd(txd),
        .rst(1'b0),
        .data_o(data_o),
        .tx_en(tx_en)
    );
    // 串口接收模块
    uart_rx uart_rx (
        .clk(clk_uart),
        .rxd(rxd),
        .data_i(data_i),
        .rx_ne(rx_ne)
    );

    // 时钟模块
    uart_clk_div uart_clk_div (
        .clk(clk),
        .clk_uart(clk_uart)
    );
endmodule
