`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/09 20:33:09
// Design Name: 
// Module Name: uart_tx
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


module uart_top #(parameter baud = 9600)(
    output txd, /* 发送数据 */
    input rxd,  /* 接收数据 */
    input clk   /* 系统时钟 */
    );

    wire clk_uart;
    reg [7:0] data_o;
    wire [7:0] data_i;
    // 串口发送模块

    wire rx_ne;
    always @(*) begin
        if (rx_ne) begin
            data_o <= data_i;
        end
    end

    // 串口接收模块
    uart_rx uart_rx1 (
        .clk(clk_uart),
        .rxd(rxd),
        .data_i(data_i),
        .rx_ne(rx_ne)
    );

    uart_tx uart_tx1 (
        .clk(clk_uart),
        .txd(txd),
        .rst(1'b0),
        .data_o(data_o),
        .tx_en(rx_ne)
    );

    // 时钟模块
    uart_clk_div uart_clk_div1 (
        .clk(clk),
        .clk_uart(clk_uart)
    );
endmodule
