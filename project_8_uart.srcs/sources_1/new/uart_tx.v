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


 module uart_tx(
    input [7:0] data_o,
    output reg txd,
    input clk,
    input rst,
    input tx_en
    );
    // 发送机四个状态
    localparam st_IDLE = 2'b00;     /* 空闲状态 */
    localparam st_start = 2'b01;    /* 发送起始位 */
    localparam st_data = 2'b10;     /* 发送数据 */
    localparam st_end = 2'b11;      /* 发送结束 */

    reg [1:0] tx_cur_st, tx_nxt_st;
    reg [2:0] count;
    reg [7:0] data_o_tmp; 
    
    always @(*) begin               /* 组合逻辑 */
        case (tx_cur_st)
            st_IDLE: begin
                if (tx_en) begin
                    tx_nxt_st <= st_start;
                end
            end
            st_start: begin
                tx_nxt_st <= st_data;
            end
            st_data: begin
                if (count == 7) begin
                    tx_nxt_st <= st_end;
                end
            end
            st_end: begin
                if (tx_en) begin
                    tx_nxt_st <= st_start;
                end
            end
            default: tx_nxt_st <= st_IDLE;
        endcase
    end

    always @(posedge clk) begin     /* 时序逻辑 */
        if (rst) begin
            tx_cur_st <= st_IDLE;
        end else begin
            tx_cur_st <= tx_nxt_st;
        end
    end
    
    always @(posedge clk) begin
        if (tx_cur_st == st_data) begin
            count <= count + 1;
        end else if (tx_cur_st == st_IDLE | tx_cur_st == st_end) begin
            count <= 0;
        end
    end

    always @(posedge clk) begin
        if (tx_cur_st == st_start) begin
            data_o_tmp <= data_o;
        end else if (tx_cur_st == st_data) begin
            data_o_tmp <= {1'b0, data_o_tmp[7:1]};
        end
    end

    always @(posedge clk) begin
        if (tx_cur_st == st_start) begin
            txd <= 0;
        end else if (tx_cur_st == st_data) begin
            txd <= data_o_tmp[0];
        end else if (tx_cur_st == st_end) begin
            txd <= 1;
        end
    end
endmodule
