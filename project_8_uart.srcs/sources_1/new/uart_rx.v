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


module uart_rx(
    input rxd,
    input clk,
    output rx_ne,
    output reg [7:0] data_i
    );

    // 接收器三个状态
    localparam st_IDLE = 2'b00,      /* 空闲状态 */
               st_RECEIVE = 2'b01,   /* 接收数据 */
               st_STOP = 2'b10,      /* 等待停止位 */
               st_RXNE = 2'b11;      /* 接收非空 */
    reg [1:0] rx_cur_st, rx_nxt_st;
    reg [2:0] count;

    /* 状态切换 */
    always @(*) begin
        case (rx_cur_st)
            st_IDLE: begin
                if (!rxd) begin                  /* 接收到开始信号 */
                    rx_nxt_st = st_RECEIVE;
                end
            end
            st_RECEIVE: begin
                if (count == 7) begin            /* 接收到数据 */
                    rx_nxt_st = st_STOP;
                end
            end
            st_STOP: begin
                if (rxd) begin
                    rx_nxt_st = st_RXNE;
                end else if (count > 0) begin
                    rx_nxt_st <= st_IDLE;
                end
            end
            st_RXNE: begin
                if (!rxd) begin
                    rx_nxt_st = st_RECEIVE;
                end else begin
                    rx_nxt_st = st_IDLE;
                end
            end
            default: rx_nxt_st = st_IDLE;
        endcase
    end
    
    /* 状态切换 */
    always @(posedge clk) begin      
        rx_cur_st <= rx_nxt_st;
    end

    /* 接收计数 */
    always @(posedge clk) begin
        if (rx_cur_st == st_RECEIVE || rx_cur_st == st_STOP)
            count <= count + 1'b1;
        else
            count <= 0;
    end

    /* 接收数据 */
    always @(posedge clk) begin
        if (rx_cur_st == st_RECEIVE) begin
            data_i = {rxd, data_i[7:1]};        /* 数据右移，最低位舍弃 */
        end
    end

    /* 接收完成标志位 */
    assign rx_ne = (rx_cur_st == st_RXNE)? 1'b1:1'b0;
endmodule
