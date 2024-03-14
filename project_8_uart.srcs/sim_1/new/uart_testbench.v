`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 13:03:20
// Design Name: 
// Module Name: uart_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 给定系统时钟100MHz，周期为
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module uart_testbench;
    reg clk;
    reg clk_uart;
    reg tx_en;

    reg [7:0] data_o;
    wire [7:0] data_i;

    wire rxd;
    wire txd;
    wire rx_ne;


    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk;
        end
    end
    initial begin
        clk_uart = 0;
        forever begin
            #52085 clk_uart = ~clk_uart;
        end
    end
    
    always @(*) begin
        if (rx_ne == 1) tx_en = 0;
    end

    initial begin
        data_o = "a";
        tx_en = 1'b1;
    end

    uart_top uart_top (
        .clk(clk),
        .txd(txd),
        .rxd(rxd)
    );

    // 串口发�?�模�??
    uart_tx uart_tx (
        .clk(clk_uart),
        .txd(rxd),
        .rst(1'b0),
        .data_o(data_o),
        .tx_en(tx_en)
    );

    // 串口接收模块
    uart_rx uart_rx (
        .clk(clk_uart),
        .rxd(txd),
        .data_i(data_i),
        .rx_ne(rx_ne)
    );
endmodule
