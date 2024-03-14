// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 14 14:05:58 2024
// Host        : PLMaple running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Projects/xilinxProject/project_8_uart/project_8_uart.sim/sim_1/synth/func/xsim/uart_testbench_func_synth.v
// Design      : uart_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [36:0]sl_iport0_o;
  input [16:0]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  input clk;
  input [0:0]probe0;
  input [36:0]SL_IPORT_I;
  output [16:0]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:7]probe3;
  input [0:1]probe4;
  input [0:2]probe5;


endmodule

(* baud = "9600" *) (* div_num = "10416" *) (* keep_hierarchy = "soft" *) 
module uart_clk_div
   (clk,
    clk_uart);
  input clk;
  output clk_uart;

  wire clk;
  wire clk_uart;
  wire clk_uart_i_2_n_0;
  wire clk_uart_i_3_n_0;
  wire [15:0]num;
  wire \num_reg[12]_i_1_n_0 ;
  wire \num_reg[12]_i_1_n_1 ;
  wire \num_reg[12]_i_1_n_2 ;
  wire \num_reg[12]_i_1_n_3 ;
  wire \num_reg[15]_i_1_n_2 ;
  wire \num_reg[15]_i_1_n_3 ;
  wire \num_reg[4]_i_1_n_0 ;
  wire \num_reg[4]_i_1_n_1 ;
  wire \num_reg[4]_i_1_n_2 ;
  wire \num_reg[4]_i_1_n_3 ;
  wire \num_reg[8]_i_1_n_0 ;
  wire \num_reg[8]_i_1_n_1 ;
  wire \num_reg[8]_i_1_n_2 ;
  wire \num_reg[8]_i_1_n_3 ;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire [3:2]\NLW_num_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_num_reg[15]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000100000)) 
    clk_uart_i_1
       (.I0(num[14]),
        .I1(num[12]),
        .I2(clk_uart_i_2_n_0),
        .I3(num[10]),
        .I4(num[13]),
        .I5(num[15]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    clk_uart_i_2
       (.I0(num[11]),
        .I1(num[7]),
        .I2(clk_uart_i_3_n_0),
        .I3(num[6]),
        .I4(num[8]),
        .I5(num[9]),
        .O(clk_uart_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    clk_uart_i_3
       (.I0(num[4]),
        .I1(num[0]),
        .I2(num[2]),
        .I3(num[1]),
        .I4(num[5]),
        .I5(num[3]),
        .O(clk_uart_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_uart_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_uart),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \num[0]_i_1 
       (.I0(num[0]),
        .O(p_1_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(num[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(num[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(num[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(num[12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_reg[12]_i_1 
       (.CI(\num_reg[8]_i_1_n_0 ),
        .CO({\num_reg[12]_i_1_n_0 ,\num_reg[12]_i_1_n_1 ,\num_reg[12]_i_1_n_2 ,\num_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(num[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(num[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(num[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(num[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_reg[15]_i_1 
       (.CI(\num_reg[12]_i_1_n_0 ),
        .CO({\NLW_num_reg[15]_i_1_CO_UNCONNECTED [3:2],\num_reg[15]_i_1_n_2 ,\num_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_num_reg[15]_i_1_O_UNCONNECTED [3],p_1_in[15:13]}),
        .S({1'b0,num[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(num[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(num[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(num[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(num[4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\num_reg[4]_i_1_n_0 ,\num_reg[4]_i_1_n_1 ,\num_reg[4]_i_1_n_2 ,\num_reg[4]_i_1_n_3 }),
        .CYINIT(num[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(num[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(num[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(num[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(num[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(num[8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_reg[8]_i_1 
       (.CI(\num_reg[4]_i_1_n_0 ),
        .CO({\num_reg[8]_i_1_n_0 ,\num_reg[8]_i_1_n_1 ,\num_reg[8]_i_1_n_2 ,\num_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(num[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \num_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(num[9]),
        .R(p_0_in));
endmodule

(* keep_hierarchy = "soft" *) (* st_IDLE = "2'b00" *) (* st_RECEIVE = "2'b01" *) 
(* st_RXNE = "2'b11" *) (* st_STOP = "2'b10" *) 
module uart_rx
   (rxd,
    clk,
    rx_ne,
    data_i,
    \u_ila_0_rx_cur_st[0] ,
    \u_ila_0_rx_cur_st[1] ,
    \u_ila_0_count[0] ,
    \u_ila_0_count[1] ,
    \u_ila_0_count[2] );
  input rxd;
  input clk;
  output rx_ne;
  output [7:0]data_i;
  output \u_ila_0_rx_cur_st[0] ;
  output \u_ila_0_rx_cur_st[1] ;
  output \u_ila_0_count[0] ;
  output \u_ila_0_count[1] ;
  output \u_ila_0_count[2] ;

  wire clk;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [7:0]data_i;
  wire \data_i[7]_i_1_n_0 ;
  wire [1:0]rx_cur_st;
  wire rx_ne;
  wire [1:0]rx_nxt_st;
  wire \rx_nxt_st_reg[0]_i_1_n_0 ;
  wire \rx_nxt_st_reg[1]_i_1_n_0 ;
  wire \rx_nxt_st_reg[1]_i_2_n_0 ;
  wire rxd;

  assign \u_ila_0_count[0]  = count[0];
  assign \u_ila_0_count[1]  = count[1];
  assign \u_ila_0_count[2]  = count[2];
  assign \u_ila_0_rx_cur_st[0]  = rx_cur_st[0];
  assign \u_ila_0_rx_cur_st[1]  = rx_cur_st[1];
  LUT3 #(
    .INIT(8'h04)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(rx_cur_st[0]),
        .I2(rx_cur_st[1]),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(rx_cur_st[0]),
        .I3(rx_cur_st[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006A00)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(rx_cur_st[0]),
        .I4(rx_cur_st[1]),
        .O(\count[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_i[7]_i_1 
       (.I0(rx_cur_st[0]),
        .I1(rx_cur_st[1]),
        .O(\data_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[1]),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[2]),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[3]),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[4]),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[5]),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[6]),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(data_i[7]),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(clk),
        .CE(\data_i[7]_i_1_n_0 ),
        .D(rxd),
        .Q(data_i[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_cur_st_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_nxt_st[0]),
        .Q(rx_cur_st[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_cur_st_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_nxt_st[1]),
        .Q(rx_cur_st[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_ne_INST_0
       (.I0(rx_cur_st[0]),
        .I1(rx_cur_st[1]),
        .O(rx_ne));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_nxt_st_reg[0] 
       (.CLR(1'b0),
        .D(\rx_nxt_st_reg[0]_i_1_n_0 ),
        .G(\rx_nxt_st_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rx_nxt_st[0]));
  LUT3 #(
    .INIT(8'h59)) 
    \rx_nxt_st_reg[0]_i_1 
       (.I0(rx_cur_st[0]),
        .I1(rx_cur_st[1]),
        .I2(rxd),
        .O(\rx_nxt_st_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_nxt_st_reg[1] 
       (.CLR(1'b0),
        .D(\rx_nxt_st_reg[1]_i_1_n_0 ),
        .G(\rx_nxt_st_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rx_nxt_st[1]));
  LUT3 #(
    .INIT(8'h62)) 
    \rx_nxt_st_reg[1]_i_1 
       (.I0(rx_cur_st[0]),
        .I1(rx_cur_st[1]),
        .I2(rxd),
        .O(\rx_nxt_st_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9C9C9C9C9C9C9C9)) 
    \rx_nxt_st_reg[1]_i_2 
       (.I0(rxd),
        .I1(rx_cur_st[1]),
        .I2(rx_cur_st[0]),
        .I3(count[1]),
        .I4(count[0]),
        .I5(count[2]),
        .O(\rx_nxt_st_reg[1]_i_2_n_0 ));
endmodule

(* baud = "9600" *) 
(* NotValidForBitStream *)
module uart_top
   (txd,
    rxd,
    clk);
  output txd;
  input rxd;
  input clk;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_uart;
  wire [7:0]data_i;
  wire [7:0]data_o;
  wire rxd;
  wire rxd_IBUF;
  wire [36:0]sl_iport0_o_0;
  wire [16:0]sl_oport0_i_0;
  wire tx_en;
  wire txd;
  wire txd_OBUF;
  wire \u_ila_0_count[0] ;
  wire \u_ila_0_count[1] ;
  wire \u_ila_0_count[2] ;
  wire \u_ila_0_rx_cur_st[0] ;
  wire \u_ila_0_rx_cur_st[1] ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.CLR(1'b0),
        .D(data_i[0]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.CLR(1'b0),
        .D(data_i[1]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.CLR(1'b0),
        .D(data_i[2]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.CLR(1'b0),
        .D(data_i[3]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.CLR(1'b0),
        .D(data_i[4]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.CLR(1'b0),
        .D(data_i[5]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.CLR(1'b0),
        .D(data_i[6]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.CLR(1'b0),
        .D(data_i[7]),
        .G(tx_en),
        .GE(1'b1),
        .Q(data_o[7]));
  (* DEBUG_CORE_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  IBUF rxd_IBUF_inst
       (.I(rxd),
        .O(rxd_IBUF));
  OBUF txd_OBUF_inst
       (.I(txd_OBUF),
        .O(txd));
  (* DEBUG_CORE_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=4096,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=6,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=8,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=2,C_PROBE5_TYPE=0,C_PROBE5_WIDTH=3,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe0 = "n:rxd_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:txd_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:clk_uart" *) 
  (* DEBUG_PORT_probe3 = "n:data_i[7],n:data_i[6],n:data_i[5],n:data_i[4],n:data_i[3],n:data_i[2],n:data_i[1],n:data_i[0]" *) 
  (* DEBUG_PORT_probe4 = "n:uart_rx1/rx_cur_st[1],n:uart_rx1/rx_cur_st[0]" *) 
  (* DEBUG_PORT_probe5 = "n:uart_rx1/count[2],n:uart_rx1/count[1],n:uart_rx1/count[0]" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF),
        .probe0(rxd_IBUF),
        .probe1(txd_OBUF),
        .probe2(clk_uart),
        .probe3({data_i[0],data_i[1],data_i[2],data_i[3],data_i[4],data_i[5],data_i[6],data_i[7]}),
        .probe4({\u_ila_0_rx_cur_st[0] ,\u_ila_0_rx_cur_st[1] }),
        .probe5({\u_ila_0_count[0] ,\u_ila_0_count[1] ,\u_ila_0_count[2] }));
  (* KEEP_HIERARCHY = "soft" *) 
  (* baud = "9600" *) 
  (* div_num = "10416" *) 
  uart_clk_div uart_clk_div1
       (.clk(clk_IBUF_BUFG),
        .clk_uart(clk_uart));
  (* KEEP_HIERARCHY = "soft" *) 
  (* st_IDLE = "2'b00" *) 
  (* st_RECEIVE = "2'b01" *) 
  (* st_RXNE = "2'b11" *) 
  (* st_STOP = "2'b10" *) 
  uart_rx uart_rx1
       (.clk(clk_uart),
        .data_i(data_i),
        .rx_ne(tx_en),
        .rxd(rxd_IBUF),
        .\u_ila_0_count[0] (\u_ila_0_count[0] ),
        .\u_ila_0_count[1] (\u_ila_0_count[1] ),
        .\u_ila_0_count[2] (\u_ila_0_count[2] ),
        .\u_ila_0_rx_cur_st[0] (\u_ila_0_rx_cur_st[0] ),
        .\u_ila_0_rx_cur_st[1] (\u_ila_0_rx_cur_st[1] ));
  (* KEEP_HIERARCHY = "soft" *) 
  (* st_IDLE = "2'b00" *) 
  (* st_data = "2'b10" *) 
  (* st_end = "2'b11" *) 
  (* st_start = "2'b01" *) 
  uart_tx uart_tx1
       (.clk(clk_uart),
        .data_o(data_o),
        .rst(1'b0),
        .tx_en(tx_en),
        .txd(txd_OBUF));
endmodule

(* keep_hierarchy = "soft" *) (* st_IDLE = "2'b00" *) (* st_data = "2'b10" *) 
(* st_end = "2'b11" *) (* st_start = "2'b01" *) 
module uart_tx
   (data_o,
    txd,
    clk,
    rst,
    tx_en);
  input [7:0]data_o;
  output txd;
  input clk;
  input rst;
  input tx_en;

  wire \FSM_onehot_tx_cur_st_reg_n_0_[0] ;
  wire \FSM_onehot_tx_cur_st_reg_n_0_[1] ;
  wire \FSM_onehot_tx_cur_st_reg_n_0_[2] ;
  wire \FSM_onehot_tx_cur_st_reg_n_0_[3] ;
  wire \FSM_onehot_tx_nxt_st_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_tx_nxt_st_reg[3]_i_2_n_0 ;
  wire \FSM_onehot_tx_nxt_st_reg_n_0_[0] ;
  wire \FSM_onehot_tx_nxt_st_reg_n_0_[1] ;
  wire \FSM_onehot_tx_nxt_st_reg_n_0_[2] ;
  wire \FSM_onehot_tx_nxt_st_reg_n_0_[3] ;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [7:0]data_o;
  wire data_o_tmp;
  wire \data_o_tmp[0]_i_1_n_0 ;
  wire \data_o_tmp[1]_i_1_n_0 ;
  wire \data_o_tmp[2]_i_1_n_0 ;
  wire \data_o_tmp[3]_i_1_n_0 ;
  wire \data_o_tmp[4]_i_1_n_0 ;
  wire \data_o_tmp[5]_i_1_n_0 ;
  wire \data_o_tmp[6]_i_1_n_0 ;
  wire \data_o_tmp[7]_i_2_n_0 ;
  wire \data_o_tmp_reg_n_0_[0] ;
  wire [6:0]in3;
  wire tx_en;
  wire tx_nxt_st;
  wire txd;
  wire txd_i_1_n_0;
  wire txd_i_2_n_0;

  (* FSM_ENCODED_STATES = "st_IDLE:0001,st_start:0010,st_data:0100,st_end:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_cur_st_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_nxt_st_reg_n_0_[0] ),
        .Q(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_IDLE:0001,st_start:0010,st_data:0100,st_end:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_cur_st_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_nxt_st_reg_n_0_[1] ),
        .Q(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_IDLE:0001,st_start:0010,st_data:0100,st_end:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_cur_st_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_nxt_st_reg_n_0_[2] ),
        .Q(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_IDLE:0001,st_start:0010,st_data:0100,st_end:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_cur_st_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_nxt_st_reg_n_0_[3] ),
        .Q(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_nxt_st_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(tx_nxt_st),
        .GE(1'b1),
        .Q(\FSM_onehot_tx_nxt_st_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_nxt_st_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_tx_nxt_st_reg[1]_i_1_n_0 ),
        .G(tx_nxt_st),
        .GE(1'b1),
        .Q(\FSM_onehot_tx_nxt_st_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_tx_nxt_st_reg[1]_i_1 
       (.I0(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(\FSM_onehot_tx_nxt_st_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_nxt_st_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .G(tx_nxt_st),
        .GE(1'b1),
        .Q(\FSM_onehot_tx_nxt_st_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_nxt_st_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .G(tx_nxt_st),
        .GE(1'b1),
        .Q(\FSM_onehot_tx_nxt_st_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFAEA)) 
    \FSM_onehot_tx_nxt_st_reg[3]_i_1 
       (.I0(\FSM_onehot_tx_nxt_st_reg[3]_i_2_n_0 ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .I2(tx_en),
        .I3(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .O(tx_nxt_st));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \FSM_onehot_tx_nxt_st_reg[3]_i_2 
       (.I0(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .O(\FSM_onehot_tx_nxt_st_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4446)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .I2(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .I3(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6060606A)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .I3(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .I4(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A006A006A006AAA)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .I4(\FSM_onehot_tx_cur_st_reg_n_0_[0] ),
        .I5(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[0]_i_1 
       (.I0(data_o[0]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[0]),
        .O(\data_o_tmp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[1]_i_1 
       (.I0(data_o[1]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[1]),
        .O(\data_o_tmp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[2]_i_1 
       (.I0(data_o[2]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[2]),
        .O(\data_o_tmp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[3]_i_1 
       (.I0(data_o[3]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[3]),
        .O(\data_o_tmp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[4]_i_1 
       (.I0(data_o[4]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[4]),
        .O(\data_o_tmp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[5]_i_1 
       (.I0(data_o[5]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[5]),
        .O(\data_o_tmp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o_tmp[6]_i_1 
       (.I0(data_o[6]),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I2(in3[6]),
        .O(\data_o_tmp[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_o_tmp[7]_i_1 
       (.I0(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .O(data_o_tmp));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o_tmp[7]_i_2 
       (.I0(\FSM_onehot_tx_cur_st_reg_n_0_[1] ),
        .I1(data_o[7]),
        .O(\data_o_tmp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[0] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[0]_i_1_n_0 ),
        .Q(\data_o_tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[1] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[1]_i_1_n_0 ),
        .Q(in3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[2] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[2]_i_1_n_0 ),
        .Q(in3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[3] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[3]_i_1_n_0 ),
        .Q(in3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[4] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[4]_i_1_n_0 ),
        .Q(in3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[5] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[5]_i_1_n_0 ),
        .Q(in3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[6] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[6]_i_1_n_0 ),
        .Q(in3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_tmp_reg[7] 
       (.C(clk),
        .CE(data_o_tmp),
        .D(\data_o_tmp[7]_i_2_n_0 ),
        .Q(in3[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    txd_i_1
       (.I0(\FSM_onehot_tx_cur_st_reg_n_0_[2] ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(txd_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    txd_i_2
       (.I0(\data_o_tmp_reg_n_0_[0] ),
        .I1(\FSM_onehot_tx_cur_st_reg_n_0_[3] ),
        .O(txd_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    txd_reg
       (.C(clk),
        .CE(txd_i_1_n_0),
        .D(txd_i_2_n_0),
        .Q(txd),
        .R(\FSM_onehot_tx_cur_st_reg_n_0_[1] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
