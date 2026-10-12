module SYS_TOP (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [2:0] SI;
   output [2:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_M__L14_N17;
   wire REF_CLK_M__L14_N16;
   wire REF_CLK_M__L14_N15;
   wire REF_CLK_M__L14_N14;
   wire REF_CLK_M__L14_N13;
   wire REF_CLK_M__L14_N12;
   wire REF_CLK_M__L14_N11;
   wire REF_CLK_M__L14_N10;
   wire REF_CLK_M__L14_N9;
   wire REF_CLK_M__L14_N8;
   wire REF_CLK_M__L14_N7;
   wire REF_CLK_M__L14_N6;
   wire REF_CLK_M__L14_N5;
   wire REF_CLK_M__L14_N4;
   wire REF_CLK_M__L14_N3;
   wire REF_CLK_M__L14_N2;
   wire REF_CLK_M__L14_N1;
   wire REF_CLK_M__L14_N0;
   wire REF_CLK_M__L13_N7;
   wire REF_CLK_M__L13_N6;
   wire REF_CLK_M__L13_N5;
   wire REF_CLK_M__L13_N4;
   wire REF_CLK_M__L13_N3;
   wire REF_CLK_M__L13_N2;
   wire REF_CLK_M__L13_N1;
   wire REF_CLK_M__L13_N0;
   wire REF_CLK_M__L12_N3;
   wire REF_CLK_M__L12_N2;
   wire REF_CLK_M__L12_N1;
   wire REF_CLK_M__L12_N0;
   wire REF_CLK_M__L11_N1;
   wire REF_CLK_M__L11_N0;
   wire REF_CLK_M__L10_N0;
   wire REF_CLK_M__L9_N0;
   wire REF_CLK_M__L8_N0;
   wire REF_CLK_M__L7_N1;
   wire REF_CLK_M__L7_N0;
   wire REF_CLK_M__L6_N1;
   wire REF_CLK_M__L6_N0;
   wire REF_CLK_M__L5_N1;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N1;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N0;
   wire UART_CLK_M__L11_N0;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N1;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N1;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N1;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N1;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N1;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N1;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire n19__Exclude_0_NET;
   wire n18__Exclude_0_NET;
   wire alu_clk_M__L4_N0;
   wire alu_clk_M__L3_N0;
   wire alu_clk_M__L2_N0;
   wire alu_clk_M__L1_N0;
   wire tx_rx_clk_M__L4_N1;
   wire tx_rx_clk_M__L4_N0;
   wire tx_rx_clk_M__L3_N0;
   wire tx_rx_clk_M__L2_N0;
   wire tx_rx_clk_M__L1_N0;
   wire rx_clk_M__L3_N1;
   wire rx_clk_M__L3_N0;
   wire rx_clk_M__L2_N0;
   wire rx_clk_M__L1_N0;
   wire FE_OFN20_SE;
   wire FE_OFN18_SE;
   wire FE_OFN16_SE;
   wire FE_OFN15_SE;
   wire FE_OFN14_SE;
   wire FE_OFN13_SE;
   wire FE_OFN12_SE;
   wire FE_OFN2_sync_rst_2_M;
   wire FE_OFN1_sync_rst_1_M;
   wire FE_OFN0_sync_rst_1_M;
   wire REF_CLK_M;
   wire UART_CLK_M;
   wire RST_M;
   wire alu_clk;
   wire alu_clk_M;
   wire tx_rx_clk;
   wire tx_rx_clk_M;
   wire rx_clk;
   wire rx_clk_M;
   wire sync_rst_1;
   wire sync_rst_1_M;
   wire sync_rst_2;
   wire sync_rst_2_M;
   wire clk_en;
   wire rf_wr_en;
   wire rf_rd_en;
   wire rf_rd_valid;
   wire alu_en;
   wire alu_out_valid;
   wire sync_rx_d_vld;
   wire fifo_full;
   wire tx_d_vld_ctrl;
   wire rx_data_vld;
   wire fifo_rd_wait;
   wire fifo_rd_inc;
   wire fifo_empty;
   wire _0_net_;
   wire tx_busy;
   wire n2;
   wire n3;
   wire n4;
   wire n11;
   wire n12;
   wire n13;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [1:0] reg2_uart_cfg;
   wire [5:0] uart_prescale;
   wire [3:0] rf_addr;
   wire [7:0] rf_wr_data;
   wire [7:0] rf_rd_data;
   wire [7:0] reg0_op_a;
   wire [7:0] reg1_op_b;
   wire [7:0] reg3_div_ratio;
   wire [3:0] alu_fun;
   wire [15:0] alu_out;
   wire [7:0] sync_rx_p_data;
   wire [7:0] tx_p_data_ctrl;
   wire [7:0] rx_p_data;
   wire [7:0] fifo_rd_data;
   wire [2:0] rx_div_ratio;

   CLKINVX12M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX32M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKINVX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKINVX32M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX20M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX20M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKINVX40M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX12M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_M__L14_I17 (.Y(REF_CLK_M__L14_N17), 
	.A(REF_CLK_M__L13_N7));
   CLKINVX32M REF_CLK_M__L14_I16 (.Y(REF_CLK_M__L14_N16), 
	.A(REF_CLK_M__L13_N7));
   CLKINVX32M REF_CLK_M__L14_I15 (.Y(REF_CLK_M__L14_N15), 
	.A(REF_CLK_M__L13_N7));
   CLKINVX32M REF_CLK_M__L14_I14 (.Y(REF_CLK_M__L14_N14), 
	.A(REF_CLK_M__L13_N6));
   CLKINVX32M REF_CLK_M__L14_I13 (.Y(REF_CLK_M__L14_N13), 
	.A(REF_CLK_M__L13_N6));
   CLKINVX32M REF_CLK_M__L14_I12 (.Y(REF_CLK_M__L14_N12), 
	.A(REF_CLK_M__L13_N5));
   CLKINVX32M REF_CLK_M__L14_I11 (.Y(REF_CLK_M__L14_N11), 
	.A(REF_CLK_M__L13_N5));
   CLKINVX32M REF_CLK_M__L14_I10 (.Y(REF_CLK_M__L14_N10), 
	.A(REF_CLK_M__L13_N4));
   CLKINVX32M REF_CLK_M__L14_I9 (.Y(REF_CLK_M__L14_N9), 
	.A(REF_CLK_M__L13_N4));
   CLKINVX32M REF_CLK_M__L14_I8 (.Y(REF_CLK_M__L14_N8), 
	.A(REF_CLK_M__L13_N3));
   CLKINVX32M REF_CLK_M__L14_I7 (.Y(REF_CLK_M__L14_N7), 
	.A(REF_CLK_M__L13_N3));
   CLKINVX32M REF_CLK_M__L14_I6 (.Y(REF_CLK_M__L14_N6), 
	.A(REF_CLK_M__L13_N3));
   CLKINVX32M REF_CLK_M__L14_I5 (.Y(REF_CLK_M__L14_N5), 
	.A(REF_CLK_M__L13_N2));
   CLKINVX32M REF_CLK_M__L14_I4 (.Y(REF_CLK_M__L14_N4), 
	.A(REF_CLK_M__L13_N2));
   CLKINVX32M REF_CLK_M__L14_I3 (.Y(REF_CLK_M__L14_N3), 
	.A(REF_CLK_M__L13_N1));
   CLKINVX32M REF_CLK_M__L14_I2 (.Y(REF_CLK_M__L14_N2), 
	.A(REF_CLK_M__L13_N1));
   CLKINVX32M REF_CLK_M__L14_I1 (.Y(REF_CLK_M__L14_N1), 
	.A(REF_CLK_M__L13_N0));
   CLKINVX32M REF_CLK_M__L14_I0 (.Y(REF_CLK_M__L14_N0), 
	.A(REF_CLK_M__L13_N0));
   CLKINVX40M REF_CLK_M__L13_I7 (.Y(REF_CLK_M__L13_N7), 
	.A(REF_CLK_M__L12_N3));
   CLKINVX40M REF_CLK_M__L13_I6 (.Y(REF_CLK_M__L13_N6), 
	.A(REF_CLK_M__L12_N3));
   CLKINVX40M REF_CLK_M__L13_I5 (.Y(REF_CLK_M__L13_N5), 
	.A(REF_CLK_M__L12_N2));
   CLKINVX40M REF_CLK_M__L13_I4 (.Y(REF_CLK_M__L13_N4), 
	.A(REF_CLK_M__L12_N2));
   CLKINVX40M REF_CLK_M__L13_I3 (.Y(REF_CLK_M__L13_N3), 
	.A(REF_CLK_M__L12_N1));
   CLKINVX40M REF_CLK_M__L13_I2 (.Y(REF_CLK_M__L13_N2), 
	.A(REF_CLK_M__L12_N1));
   CLKINVX40M REF_CLK_M__L13_I1 (.Y(REF_CLK_M__L13_N1), 
	.A(REF_CLK_M__L12_N0));
   CLKINVX40M REF_CLK_M__L13_I0 (.Y(REF_CLK_M__L13_N0), 
	.A(REF_CLK_M__L12_N0));
   CLKINVX40M REF_CLK_M__L12_I3 (.Y(REF_CLK_M__L12_N3), 
	.A(REF_CLK_M__L11_N1));
   CLKINVX40M REF_CLK_M__L12_I2 (.Y(REF_CLK_M__L12_N2), 
	.A(REF_CLK_M__L11_N1));
   CLKINVX40M REF_CLK_M__L12_I1 (.Y(REF_CLK_M__L12_N1), 
	.A(REF_CLK_M__L11_N0));
   CLKINVX40M REF_CLK_M__L12_I0 (.Y(REF_CLK_M__L12_N0), 
	.A(REF_CLK_M__L11_N0));
   CLKINVX40M REF_CLK_M__L11_I1 (.Y(REF_CLK_M__L11_N1), 
	.A(REF_CLK_M__L10_N0));
   CLKINVX40M REF_CLK_M__L11_I0 (.Y(REF_CLK_M__L11_N0), 
	.A(REF_CLK_M__L10_N0));
   CLKINVX40M REF_CLK_M__L10_I0 (.Y(REF_CLK_M__L10_N0), 
	.A(REF_CLK_M__L9_N0));
   CLKINVX40M REF_CLK_M__L9_I0 (.Y(REF_CLK_M__L9_N0), 
	.A(REF_CLK_M__L8_N0));
   CLKBUFX40M REF_CLK_M__L8_I0 (.Y(REF_CLK_M__L8_N0), 
	.A(REF_CLK_M__L7_N1));
   CLKBUFX40M REF_CLK_M__L7_I1 (.Y(REF_CLK_M__L7_N1), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I0 (.Y(REF_CLK_M__L7_N0), 
	.A(REF_CLK_M__L6_N0));
   CLKBUFX40M REF_CLK_M__L6_I1 (.Y(REF_CLK_M__L6_N1), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX24M REF_CLK_M__L6_I0 (.Y(REF_CLK_M__L6_N0), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX32M REF_CLK_M__L5_I1 (.Y(REF_CLK_M__L5_N1), 
	.A(REF_CLK_M__L4_N1));
   CLKBUFX20M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX24M REF_CLK_M__L4_I1 (.Y(REF_CLK_M__L4_N1), 
	.A(REF_CLK_M__L3_N0));
   CLKBUFX20M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N0));
   BUFX24M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   CLKINVX6M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX40M UART_CLK_M__L11_I0 (.Y(UART_CLK_M__L11_N0), 
	.A(UART_CLK_M__L10_N0));
   CLKBUFX20M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKBUFX20M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N1));
   CLKBUFX20M UART_CLK_M__L7_I1 (.Y(UART_CLK_M__L7_N1), 
	.A(UART_CLK_M__L6_N1));
   CLKINVX32M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKBUFX20M UART_CLK_M__L6_I1 (.Y(UART_CLK_M__L6_N1), 
	.A(UART_CLK_M__L5_N1));
   CLKINVX40M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX20M UART_CLK_M__L5_I1 (.Y(UART_CLK_M__L5_N1), 
	.A(UART_CLK_M__L4_N1));
   CLKBUFX20M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N0));
   CLKBUFX20M UART_CLK_M__L4_I1 (.Y(UART_CLK_M__L4_N1), 
	.A(UART_CLK_M__L3_N1));
   CLKBUFX20M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N0));
   CLKBUFX20M UART_CLK_M__L3_I1 (.Y(UART_CLK_M__L3_N1), 
	.A(UART_CLK_M__L2_N1));
   CLKBUFX24M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKBUFX20M UART_CLK_M__L2_I1 (.Y(UART_CLK_M__L2_N1), 
	.A(UART_CLK_M__L1_N0));
   CLKINVX6M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKINVX6M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   BUFX8M n19__Exclude_0 (.Y(n19__Exclude_0_NET), 
	.A(n19));
   BUFX8M n18__Exclude_0 (.Y(n18__Exclude_0_NET), 
	.A(n18));
   CLKINVX40M alu_clk_M__L4_I0 (.Y(alu_clk_M__L4_N0), 
	.A(alu_clk_M__L3_N0));
   CLKINVX32M alu_clk_M__L3_I0 (.Y(alu_clk_M__L3_N0), 
	.A(alu_clk_M__L2_N0));
   CLKBUFX24M alu_clk_M__L2_I0 (.Y(alu_clk_M__L2_N0), 
	.A(alu_clk_M__L1_N0));
   CLKBUFX12M alu_clk_M__L1_I0 (.Y(alu_clk_M__L1_N0), 
	.A(alu_clk_M));
   CLKINVX40M tx_rx_clk_M__L4_I1 (.Y(tx_rx_clk_M__L4_N1), 
	.A(tx_rx_clk_M__L3_N0));
   CLKINVX40M tx_rx_clk_M__L4_I0 (.Y(tx_rx_clk_M__L4_N0), 
	.A(tx_rx_clk_M__L3_N0));
   CLKINVX40M tx_rx_clk_M__L3_I0 (.Y(tx_rx_clk_M__L3_N0), 
	.A(tx_rx_clk_M__L2_N0));
   CLKBUFX40M tx_rx_clk_M__L2_I0 (.Y(tx_rx_clk_M__L2_N0), 
	.A(tx_rx_clk_M__L1_N0));
   CLKBUFX12M tx_rx_clk_M__L1_I0 (.Y(tx_rx_clk_M__L1_N0), 
	.A(tx_rx_clk_M));
   CLKINVX40M rx_clk_M__L3_I1 (.Y(rx_clk_M__L3_N1), 
	.A(rx_clk_M__L2_N0));
   CLKINVX40M rx_clk_M__L3_I0 (.Y(rx_clk_M__L3_N0), 
	.A(rx_clk_M__L2_N0));
   CLKINVX40M rx_clk_M__L2_I0 (.Y(rx_clk_M__L2_N0), 
	.A(rx_clk_M__L1_N0));
   CLKBUFX20M rx_clk_M__L1_I0 (.Y(rx_clk_M__L1_N0), 
	.A(rx_clk_M));
   BUFX4M FE_OFC20_SE (.Y(FE_OFN20_SE), 
	.A(FE_OFN15_SE));
   BUFX4M FE_OFC18_SE (.Y(FE_OFN18_SE), 
	.A(FE_OFN15_SE));
   BUFX4M FE_OFC16_SE (.Y(FE_OFN16_SE), 
	.A(FE_OFN13_SE));
   INVX6M FE_OFC15_SE (.Y(FE_OFN15_SE), 
	.A(FE_OFN12_SE));
   INVX6M FE_OFC14_SE (.Y(FE_OFN14_SE), 
	.A(FE_OFN12_SE));
   INVX4M FE_OFC13_SE (.Y(FE_OFN13_SE), 
	.A(FE_OFN12_SE));
   CLKINVX1M FE_OFC12_SE (.Y(FE_OFN12_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC2_sync_rst_2_M (.Y(FE_OFN2_sync_rst_2_M), 
	.A(sync_rst_2_M));
   CLKBUFX8M FE_OFC1_sync_rst_1_M (.Y(FE_OFN1_sync_rst_1_M), 
	.A(sync_rst_1_M));
   CLKBUFX8M FE_OFC0_sync_rst_1_M (.Y(FE_OFN0_sync_rst_1_M), 
	.A(sync_rst_1_M));
   SDFFRQX2M fifo_rd_wait_reg (.SI(SI[0]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(fifo_rd_wait), 
	.D(fifo_rd_inc), 
	.CK(tx_rx_clk_M__L4_N1));
   NOR3X2M U11 (.Y(n3), 
	.C(uart_prescale[0]), 
	.B(uart_prescale[1]), 
	.A(uart_prescale[2]));
   NOR3BX2M U12 (.Y(n4), 
	.C(uart_prescale[5]), 
	.B(uart_prescale[3]), 
	.AN(uart_prescale[4]));
   NOR3BX2M U13 (.Y(n2), 
	.C(uart_prescale[5]), 
	.B(uart_prescale[4]), 
	.AN(uart_prescale[3]));
   OAI21X2M U14 (.Y(rx_div_ratio[0]), 
	.B0(n3), 
	.A1(n4), 
	.A0(n2));
   AND2X2M U17 (.Y(rx_div_ratio[1]), 
	.B(n4), 
	.A(n3));
   AND2X2M U18 (.Y(rx_div_ratio[2]), 
	.B(n3), 
	.A(n2));
   NOR3X2M U19 (.Y(_0_net_), 
	.C(fifo_rd_inc), 
	.B(fifo_rd_wait), 
	.A(fifo_empty));
   mux2X1_1 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(REF_CLK_M));
   mux2X1_5 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(UART_CLK_M));
   mux2X1_0 U2_mux2X1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_M));
   mux2X1_4 U3_mux2X1 (.IN_0(alu_clk), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(alu_clk_M));
   mux2X1_3 U4_mux2X1 (.IN_0(tx_rx_clk), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(tx_rx_clk_M));
   mux2X1_2 U5_mux2X1 (.IN_0(rx_clk), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(rx_clk_M));
   mux2X1_7 U6_mux2X1 (.IN_0(sync_rst_1), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(sync_rst_1_M));
   mux2X1_6 U7_mux2X1 (.IN_0(sync_rst_2), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(sync_rst_2_M));
   rst_synchronizer_test_0 u_rst_sync_1 (.clk(REF_CLK_M__L14_N10), 
	.rst(RST_M), 
	.synch_rst(sync_rst_1), 
	.test_si(n13), 
	.test_se(FE_OFN13_SE));
   clk_gating g_clk (.clk(REF_CLK_M__L5_N1), 
	.en(clk_en), 
	.gclk(alu_clk), 
	.REF_CLK_M__L7_N0(REF_CLK_M__L7_N0));
   Reg_file_ADDR_WIDTH4_DATA_WIDTH8_test_1 u_reg_file (.CLK(REF_CLK_M__L14_N10), 
	.RST(sync_rst_1_M), 
	.Address({ rf_addr[3],
		rf_addr[2],
		rf_addr[1],
		rf_addr[0] }), 
	.WrEn(rf_wr_en), 
	.RdEn(rf_rd_en), 
	.WrData({ rf_wr_data[7],
		rf_wr_data[6],
		rf_wr_data[5],
		rf_wr_data[4],
		rf_wr_data[3],
		rf_wr_data[2],
		rf_wr_data[1],
		rf_wr_data[0] }), 
	.RdData({ rf_rd_data[7],
		rf_rd_data[6],
		rf_rd_data[5],
		rf_rd_data[4],
		rf_rd_data[3],
		rf_rd_data[2],
		rf_rd_data[1],
		rf_rd_data[0] }), 
	.RdData_Valid(rf_rd_valid), 
	.REG0({ reg0_op_a[7],
		reg0_op_a[6],
		reg0_op_a[5],
		reg0_op_a[4],
		reg0_op_a[3],
		reg0_op_a[2],
		reg0_op_a[1],
		reg0_op_a[0] }), 
	.REG1({ reg1_op_b[7],
		reg1_op_b[6],
		reg1_op_b[5],
		reg1_op_b[4],
		reg1_op_b[3],
		reg1_op_b[2],
		reg1_op_b[1],
		reg1_op_b[0] }), 
	.REG2({ uart_prescale[5],
		uart_prescale[4],
		uart_prescale[3],
		uart_prescale[2],
		uart_prescale[1],
		uart_prescale[0],
		reg2_uart_cfg[1],
		reg2_uart_cfg[0] }), 
	.REG3({ reg3_div_ratio[7],
		reg3_div_ratio[6],
		reg3_div_ratio[5],
		reg3_div_ratio[4],
		reg3_div_ratio[3],
		reg3_div_ratio[2],
		reg3_div_ratio[1],
		reg3_div_ratio[0] }), 
	.test_si2(SI[2]), 
	.test_si1(n16), 
	.test_so2(n13), 
	.test_so1(SO[1]), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN0_sync_rst_1_M(FE_OFN0_sync_rst_1_M), 
	.FE_OFN1_sync_rst_1_M(FE_OFN1_sync_rst_1_M), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.REF_CLK_M__L14_N12(REF_CLK_M__L14_N12), 
	.REF_CLK_M__L14_N13(REF_CLK_M__L14_N13), 
	.REF_CLK_M__L14_N14(REF_CLK_M__L14_N14), 
	.REF_CLK_M__L14_N15(REF_CLK_M__L14_N15), 
	.REF_CLK_M__L14_N16(REF_CLK_M__L14_N16), 
	.REF_CLK_M__L14_N17(REF_CLK_M__L14_N17), 
	.REF_CLK_M__L14_N5(REF_CLK_M__L14_N5), 
	.REF_CLK_M__L14_N9(REF_CLK_M__L14_N9));
   ALU_WIDTH8_test_1 u_alu (.CLK(alu_clk_M__L4_N0), 
	.RST(FE_OFN1_sync_rst_1_M), 
	.A({ reg0_op_a[7],
		reg0_op_a[6],
		reg0_op_a[5],
		reg0_op_a[4],
		reg0_op_a[3],
		reg0_op_a[2],
		reg0_op_a[1],
		reg0_op_a[0] }), 
	.B({ reg1_op_b[7],
		reg1_op_b[6],
		reg1_op_b[5],
		reg1_op_b[4],
		reg1_op_b[3],
		reg1_op_b[2],
		reg1_op_b[1],
		reg1_op_b[0] }), 
	.ALU_FUN({ alu_fun[3],
		alu_fun[2],
		alu_fun[1],
		alu_fun[0] }), 
	.Enable(alu_en), 
	.ALU_OUT({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.OUT_VALID(alu_out_valid), 
	.test_si(fifo_rd_wait), 
	.test_se(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE));
   SYS_CTRL_ADDR_WIDTH4_DATA_WIDTH8_test_1 u_sys_ctrl (.CLK(REF_CLK_M__L14_N11), 
	.RST(FE_OFN0_sync_rst_1_M), 
	.ALU_OUT({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.OUT_VALID(alu_out_valid), 
	.ALU_FUN({ alu_fun[3],
		alu_fun[2],
		alu_fun[1],
		alu_fun[0] }), 
	.ALU_EN(alu_en), 
	.CLK_EN(clk_en), 
	.Address({ rf_addr[3],
		rf_addr[2],
		rf_addr[1],
		rf_addr[0] }), 
	.WrEn(rf_wr_en), 
	.RdEn(rf_rd_en), 
	.WrData({ rf_wr_data[7],
		rf_wr_data[6],
		rf_wr_data[5],
		rf_wr_data[4],
		rf_wr_data[3],
		rf_wr_data[2],
		rf_wr_data[1],
		rf_wr_data[0] }), 
	.RdData({ rf_rd_data[7],
		rf_rd_data[6],
		rf_rd_data[5],
		rf_rd_data[4],
		rf_rd_data[3],
		rf_rd_data[2],
		rf_rd_data[1],
		rf_rd_data[0] }), 
	.RdData_Valid(rf_rd_valid), 
	.RX_P_DATA({ sync_rx_p_data[7],
		sync_rx_p_data[6],
		sync_rx_p_data[5],
		sync_rx_p_data[4],
		sync_rx_p_data[3],
		sync_rx_p_data[2],
		sync_rx_p_data[1],
		sync_rx_p_data[0] }), 
	.RX_P_VALID(sync_rx_d_vld), 
	.FIFO_FULL(fifo_full), 
	.TX_P_DATA({ tx_p_data_ctrl[7],
		tx_p_data_ctrl[6],
		tx_p_data_ctrl[5],
		tx_p_data_ctrl[4],
		tx_p_data_ctrl[3],
		tx_p_data_ctrl[2],
		tx_p_data_ctrl[1],
		tx_p_data_ctrl[0] }), 
	.TX_P_VALID(tx_d_vld_ctrl), 
	.test_si(sync_rst_2), 
	.test_so(n12), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN1_sync_rst_1_M(FE_OFN1_sync_rst_1_M), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.REF_CLK_M__L14_N12(REF_CLK_M__L14_N12), 
	.REF_CLK_M__L14_N5(REF_CLK_M__L14_N5), 
	.REF_CLK_M__L14_N9(REF_CLK_M__L14_N9));
   data_synch_BUS_WIDTH8_NUM_STAGES2_test_1 u_data_sync (.bus_enable(rx_data_vld), 
	.dest_clk(REF_CLK_M__L14_N11), 
	.dest_rst(FE_OFN0_sync_rst_1_M), 
	.unsync_bus({ rx_p_data[7],
		rx_p_data[6],
		rx_p_data[5],
		rx_p_data[4],
		rx_p_data[3],
		rx_p_data[2],
		rx_p_data[1],
		rx_p_data[0] }), 
	.enable_pulse_d(sync_rx_d_vld), 
	.sync_bus({ sync_rx_p_data[7],
		sync_rx_p_data[6],
		sync_rx_p_data[5],
		sync_rx_p_data[4],
		sync_rx_p_data[3],
		sync_rx_p_data[2],
		sync_rx_p_data[1],
		sync_rx_p_data[0] }), 
	.test_si(n18__Exclude_0_NET), 
	.test_so(n17), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.REF_CLK_M__L14_N9(REF_CLK_M__L14_N9));
   fifo_DATA_WIDTH8_NUM_ADDR_BITS4_test_1 u_async_fifo (.W_CLK(REF_CLK_M__L14_N0), 
	.W_RST(FE_OFN0_sync_rst_1_M), 
	.W_INC(tx_d_vld_ctrl), 
	.R_CLK(tx_rx_clk_M__L4_N0), 
	.R_RST(FE_OFN2_sync_rst_2_M), 
	.R_INC(fifo_rd_inc), 
	.WR_DATA({ tx_p_data_ctrl[7],
		tx_p_data_ctrl[6],
		tx_p_data_ctrl[5],
		tx_p_data_ctrl[4],
		tx_p_data_ctrl[3],
		tx_p_data_ctrl[2],
		tx_p_data_ctrl[1],
		tx_p_data_ctrl[0] }), 
	.RD_DATA({ fifo_rd_data[7],
		fifo_rd_data[6],
		fifo_rd_data[5],
		fifo_rd_data[4],
		fifo_rd_data[3],
		fifo_rd_data[2],
		fifo_rd_data[1],
		fifo_rd_data[0] }), 
	.FULL(fifo_full), 
	.EMPTY(fifo_empty), 
	.test_si2(SI[1]), 
	.test_si1(alu_out_valid), 
	.test_so2(n20), 
	.test_so1(SO[0]), 
	.test_se(FE_OFN14_SE), 
	.FE_OFN1_sync_rst_1_M(FE_OFN1_sync_rst_1_M), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.tx_rx_clk_M__L4_N1(tx_rx_clk_M__L4_N1), 
	.REF_CLK_M__L14_N1(REF_CLK_M__L14_N1), 
	.REF_CLK_M__L14_N11(REF_CLK_M__L14_N11), 
	.REF_CLK_M__L14_N2(REF_CLK_M__L14_N2), 
	.REF_CLK_M__L14_N3(REF_CLK_M__L14_N3), 
	.REF_CLK_M__L14_N4(REF_CLK_M__L14_N4), 
	.REF_CLK_M__L14_N5(REF_CLK_M__L14_N5), 
	.REF_CLK_M__L14_N6(REF_CLK_M__L14_N6), 
	.REF_CLK_M__L14_N7(REF_CLK_M__L14_N7), 
	.REF_CLK_M__L14_N8(REF_CLK_M__L14_N8));
   rst_synchronizer_test_1 u_rst_sync_2 (.clk(UART_CLK_M__L11_N0), 
	.rst(RST_M), 
	.synch_rst(sync_rst_2), 
	.test_si(sync_rst_1), 
	.test_se(FE_OFN13_SE));
   clk_div_test_0 u_clk_div (.I_ref_clk(UART_CLK_M__L11_N0), 
	.I_rst_n(sync_rst_2_M), 
	.I_clk_en(1'b1), 
	.I_div_ratio({ reg3_div_ratio[7],
		reg3_div_ratio[6],
		reg3_div_ratio[5],
		reg3_div_ratio[4],
		reg3_div_ratio[3],
		reg3_div_ratio[2],
		reg3_div_ratio[1],
		reg3_div_ratio[0] }), 
	.o_div_clk(tx_rx_clk), 
	.test_si(n20), 
	.test_so(n19), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.n19__Exclude_0_NET(n19__Exclude_0_NET), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   clk_div_test_1 u_clk_div_rx (.I_ref_clk(UART_CLK_M__L11_N0), 
	.I_rst_n(sync_rst_2_M), 
	.I_clk_en(1'b1), 
	.I_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		rx_div_ratio[2],
		rx_div_ratio[1],
		rx_div_ratio[0] }), 
	.o_div_clk(rx_clk), 
	.test_si(n19__Exclude_0_NET), 
	.test_so(n18), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN2_sync_rst_2_M(FE_OFN2_sync_rst_2_M), 
	.n18__Exclude_0_NET(n18__Exclude_0_NET), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   rx_DATA_WIDTH8_test_1 u_uart_rx (.clk(rx_clk_M__L3_N0), 
	.rst(sync_rst_2_M), 
	.par_type(reg2_uart_cfg[1]), 
	.par_en(reg2_uart_cfg[0]), 
	.rx_in(UART_RX_IN), 
	.Prescale({ uart_prescale[5],
		uart_prescale[4],
		uart_prescale[3],
		uart_prescale[2],
		uart_prescale[1],
		uart_prescale[0] }), 
	.parity_err(parity_error), 
	.stop_err(framing_error), 
	.data_valid(rx_data_vld), 
	.p_data({ rx_p_data[7],
		rx_p_data[6],
		rx_p_data[5],
		rx_p_data[4],
		rx_p_data[3],
		rx_p_data[2],
		rx_p_data[1],
		rx_p_data[0] }), 
	.test_si(n12), 
	.test_so(n11), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN2_sync_rst_2_M(FE_OFN2_sync_rst_2_M), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.rx_clk_M__L3_N1(rx_clk_M__L3_N1));
   Tx_DATA_WIDTH8_test_1 u_uart_tx (.clk(tx_rx_clk_M__L4_N0), 
	.rst(FE_OFN2_sync_rst_2_M), 
	.par_type(reg2_uart_cfg[1]), 
	.par_enable(reg2_uart_cfg[0]), 
	.data_valid(_0_net_), 
	.p_data({ fifo_rd_data[7],
		fifo_rd_data[6],
		fifo_rd_data[5],
		fifo_rd_data[4],
		fifo_rd_data[3],
		fifo_rd_data[2],
		fifo_rd_data[1],
		fifo_rd_data[0] }), 
	.tx_out(UART_TX_O), 
	.busy(tx_busy), 
	.test_si(n11), 
	.test_so(SO[2]), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.tx_rx_clk_M__L4_N1(tx_rx_clk_M__L4_N1));
   PULSE_GEN_test_1 u_pulse_gen (.CLK(tx_rx_clk_M__L4_N1), 
	.RST(FE_OFN2_sync_rst_2_M), 
	.LVL_SIG(tx_busy), 
	.PULSE_SIG(fifo_rd_inc), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(FE_OFN15_SE));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct 10 22:25:59 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_7 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X8M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module rst_synchronizer_test_0 (
	clk, 
	rst, 
	synch_rst, 
	test_si, 
	test_se);
   input clk;
   input rst;
   output synch_rst;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \Q[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \Q_reg[1]  (.SI(\Q[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(synch_rst), 
	.D(\Q[0] ), 
	.CK(clk));
   SDFFRQX2M \Q_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\Q[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module clk_gating (
	clk, 
	en, 
	gclk, 
	REF_CLK_M__L7_N0);
   input clk;
   input en;
   output gclk;
   input REF_CLK_M__L7_N0;

   // Internal wires
   wire en_latched;

   TLATNX1M en_latched_reg (.Q(en_latched), 
	.GN(clk), 
	.D(en));
   AND2X1M U2 (.Y(gclk), 
	.B(REF_CLK_M__L7_N0), 
	.A(en_latched));
endmodule

module Reg_file_ADDR_WIDTH4_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_sync_rst_1_M, 
	FE_OFN1_sync_rst_1_M, 
	FE_OFN15_SE, 
	FE_OFN20_SE, 
	REF_CLK_M__L14_N12, 
	REF_CLK_M__L14_N13, 
	REF_CLK_M__L14_N14, 
	REF_CLK_M__L14_N15, 
	REF_CLK_M__L14_N16, 
	REF_CLK_M__L14_N17, 
	REF_CLK_M__L14_N5, 
	REF_CLK_M__L14_N9);
   input CLK;
   input RST;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_sync_rst_1_M;
   input FE_OFN1_sync_rst_1_M;
   input FE_OFN15_SE;
   input FE_OFN20_SE;
   input REF_CLK_M__L14_N12;
   input REF_CLK_M__L14_N13;
   input REF_CLK_M__L14_N14;
   input REF_CLK_M__L14_N15;
   input REF_CLK_M__L14_N16;
   input REF_CLK_M__L14_N17;
   input REF_CLK_M__L14_N5;
   input REF_CLK_M__L14_N9;

   // Internal wires
   wire FE_OFN19_SE;
   wire FE_OFN11_n438;
   wire FE_OFN10_n5;
   wire FE_OFN9_n439;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire \mem[8][7] ;
   wire \mem[8][6] ;
   wire \mem[8][5] ;
   wire \mem[8][4] ;
   wire \mem[8][3] ;
   wire \mem[8][2] ;
   wire \mem[8][1] ;
   wire \mem[8][0] ;
   wire \mem[9][7] ;
   wire \mem[9][6] ;
   wire \mem[9][5] ;
   wire \mem[9][4] ;
   wire \mem[9][3] ;
   wire \mem[9][2] ;
   wire \mem[9][1] ;
   wire \mem[9][0] ;
   wire \mem[10][7] ;
   wire \mem[10][6] ;
   wire \mem[10][5] ;
   wire \mem[10][4] ;
   wire \mem[10][3] ;
   wire \mem[10][2] ;
   wire \mem[10][1] ;
   wire \mem[10][0] ;
   wire \mem[11][7] ;
   wire \mem[11][6] ;
   wire \mem[11][5] ;
   wire \mem[11][4] ;
   wire \mem[11][3] ;
   wire \mem[11][2] ;
   wire \mem[11][1] ;
   wire \mem[11][0] ;
   wire \mem[12][7] ;
   wire \mem[12][6] ;
   wire \mem[12][5] ;
   wire \mem[12][4] ;
   wire \mem[12][3] ;
   wire \mem[12][2] ;
   wire \mem[12][1] ;
   wire \mem[12][0] ;
   wire \mem[13][7] ;
   wire \mem[13][6] ;
   wire \mem[13][5] ;
   wire \mem[13][4] ;
   wire \mem[13][3] ;
   wire \mem[13][2] ;
   wire \mem[13][1] ;
   wire \mem[13][0] ;
   wire \mem[14][7] ;
   wire \mem[14][6] ;
   wire \mem[14][5] ;
   wire \mem[14][4] ;
   wire \mem[14][3] ;
   wire \mem[14][2] ;
   wire \mem[14][1] ;
   wire \mem[14][0] ;
   wire \mem[15][7] ;
   wire \mem[15][6] ;
   wire \mem[15][5] ;
   wire \mem[15][4] ;
   wire \mem[15][3] ;
   wire \mem[15][2] ;
   wire \mem[15][1] ;
   wire \mem[15][0] ;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire n2;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n25;
   wire n27;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n166;
   wire n168;
   wire n170;
   wire n172;
   wire n174;
   wire n176;
   wire n178;
   wire n180;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n10;
   wire n26;
   wire n29;
   wire n310;
   wire n312;
   wire n314;
   wire n316;
   wire n318;
   wire n320;
   wire n322;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n542;
   wire n543;

   assign N10 = Address[0] ;
   assign N11 = Address[1] ;
   assign N12 = Address[2] ;
   assign N13 = Address[3] ;
   assign test_so1 = \mem[5][1]  ;
   assign test_so2 = \mem[15][7]  ;

   BUFX4M FE_OFC19_SE (.Y(FE_OFN19_SE), 
	.A(test_se));
   BUFX2M FE_OFC11_n438 (.Y(FE_OFN11_n438), 
	.A(n438));
   BUFX2M FE_OFC10_n5 (.Y(FE_OFN10_n5), 
	.A(n5));
   CLKBUFX2M FE_OFC9_n439 (.Y(FE_OFN9_n439), 
	.A(n439));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[7]), 
	.D(n180), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[6]), 
	.D(n178), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[5]), 
	.D(n176), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[4]), 
	.D(n174), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[3]), 
	.D(n172), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[2]), 
	.D(n170), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[1]), 
	.D(n168), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData[0]), 
	.D(n166), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[5][7] ), 
	.D(n269), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[5][6] ), 
	.D(n268), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[5][5] ), 
	.D(n267), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[5][4] ), 
	.D(n266), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[5][3] ), 
	.D(n265), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[5][2]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[5][2] ), 
	.D(n264), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[5][0] ), 
	.D(n262), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][7] ), 
	.D(n253), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][6] ), 
	.D(n252), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][5] ), 
	.D(n251), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][4] ), 
	.D(n250), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][3] ), 
	.D(n249), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][2] ), 
	.D(n248), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][1] ), 
	.D(n247), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[7][0] ), 
	.D(n246), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[9][7]  (.SI(\mem[9][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][7] ), 
	.D(n237), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[9][6]  (.SI(\mem[9][5] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][6] ), 
	.D(n236), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][5]  (.SI(\mem[9][4] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][5] ), 
	.D(n235), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][4]  (.SI(\mem[9][3] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][4] ), 
	.D(n234), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][3]  (.SI(\mem[9][2] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][3] ), 
	.D(n233), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][2]  (.SI(\mem[9][1] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][2] ), 
	.D(n232), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][1]  (.SI(\mem[9][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][1] ), 
	.D(n231), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[9][0]  (.SI(\mem[8][7] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[9][0] ), 
	.D(n230), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[11][7]  (.SI(\mem[11][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][7] ), 
	.D(n221), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[11][6]  (.SI(\mem[11][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][6] ), 
	.D(n220), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[11][5]  (.SI(\mem[11][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][5] ), 
	.D(n219), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[11][4]  (.SI(\mem[11][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][4] ), 
	.D(n218), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[11][3]  (.SI(\mem[11][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][3] ), 
	.D(n217), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[11][2]  (.SI(\mem[11][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][2] ), 
	.D(n216), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[11][1]  (.SI(\mem[11][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][1] ), 
	.D(n215), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[11][0]  (.SI(\mem[10][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[11][0] ), 
	.D(n214), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[13][7]  (.SI(\mem[13][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][7] ), 
	.D(n205), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[13][6]  (.SI(\mem[13][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][6] ), 
	.D(n204), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][5]  (.SI(\mem[13][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][5] ), 
	.D(n203), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][4]  (.SI(\mem[13][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][4] ), 
	.D(n202), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][3]  (.SI(\mem[13][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][3] ), 
	.D(n201), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][2]  (.SI(\mem[13][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][2] ), 
	.D(n200), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][1]  (.SI(\mem[13][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][1] ), 
	.D(n199), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[13][0]  (.SI(\mem[12][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[13][0] ), 
	.D(n198), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[15][7]  (.SI(\mem[15][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][7] ), 
	.D(n189), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[15][6]  (.SI(\mem[15][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][6] ), 
	.D(n188), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[15][5]  (.SI(\mem[15][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][5] ), 
	.D(n187), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[15][4]  (.SI(\mem[15][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[15][4] ), 
	.D(n186), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[15][3]  (.SI(\mem[15][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[15][3] ), 
	.D(n185), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[15][2]  (.SI(\mem[15][1] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][2] ), 
	.D(n184), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[15][1]  (.SI(\mem[15][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][1] ), 
	.D(n183), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[15][0]  (.SI(\mem[14][7] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[15][0] ), 
	.D(n182), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][7] ), 
	.D(n277), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][6] ), 
	.D(n276), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][5] ), 
	.D(n275), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[4][4] ), 
	.D(n274), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[4][3] ), 
	.D(n273), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][2] ), 
	.D(n272), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][1] ), 
	.D(n271), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M \mem_reg[4][0]  (.SI(REG3[7]), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[4][0] ), 
	.D(n270), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][7] ), 
	.D(n261), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][6] ), 
	.D(n260), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][5] ), 
	.D(n259), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][4] ), 
	.D(n258), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][3] ), 
	.D(n257), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[6][2] ), 
	.D(n256), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[6][1] ), 
	.D(n255), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[6][0] ), 
	.D(n254), 
	.CK(REF_CLK_M__L14_N14));
   SDFFRQX2M \mem_reg[8][7]  (.SI(\mem[8][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][7] ), 
	.D(n245), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[8][6]  (.SI(\mem[8][5] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][6] ), 
	.D(n244), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[8][5]  (.SI(\mem[8][4] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][5] ), 
	.D(n243), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[8][4]  (.SI(\mem[8][3] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][4] ), 
	.D(n242), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[8][3]  (.SI(\mem[8][2] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][3] ), 
	.D(n241), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[8][2]  (.SI(\mem[8][1] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][2] ), 
	.D(n240), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[8][1]  (.SI(\mem[8][0] ), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(\mem[8][1] ), 
	.D(n239), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[8][0]  (.SI(\mem[7][7] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[8][0] ), 
	.D(n238), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[10][7]  (.SI(\mem[10][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][7] ), 
	.D(n229), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][6]  (.SI(\mem[10][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][6] ), 
	.D(n228), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][5]  (.SI(\mem[10][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][5] ), 
	.D(n227), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][4]  (.SI(\mem[10][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][4] ), 
	.D(n226), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][3]  (.SI(\mem[10][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][3] ), 
	.D(n225), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][2]  (.SI(\mem[10][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][2] ), 
	.D(n224), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][1]  (.SI(\mem[10][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][1] ), 
	.D(n223), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[10][0]  (.SI(\mem[9][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[10][0] ), 
	.D(n222), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[12][7]  (.SI(\mem[12][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][7] ), 
	.D(n213), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][6]  (.SI(\mem[12][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][6] ), 
	.D(n212), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][5]  (.SI(\mem[12][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][5] ), 
	.D(n211), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][4]  (.SI(\mem[12][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][4] ), 
	.D(n210), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][3]  (.SI(\mem[12][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][3] ), 
	.D(n209), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][2]  (.SI(\mem[12][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][2] ), 
	.D(n208), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][1]  (.SI(\mem[12][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][1] ), 
	.D(n207), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[12][0]  (.SI(\mem[11][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[12][0] ), 
	.D(n206), 
	.CK(REF_CLK_M__L14_N16));
   SDFFRQX2M \mem_reg[14][7]  (.SI(\mem[14][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[14][7] ), 
	.D(n197), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][6]  (.SI(\mem[14][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[14][6] ), 
	.D(n196), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][5]  (.SI(\mem[14][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[14][5] ), 
	.D(n195), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][4]  (.SI(\mem[14][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[14][4] ), 
	.D(n194), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][3]  (.SI(\mem[14][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[14][3] ), 
	.D(n193), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][2]  (.SI(\mem[14][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[14][2] ), 
	.D(n192), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][1]  (.SI(\mem[14][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\mem[14][1] ), 
	.D(n191), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[14][0]  (.SI(\mem[13][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(\mem[14][0] ), 
	.D(n190), 
	.CK(REF_CLK_M__L14_N17));
   SDFFRQX2M \mem_reg[2][1]  (.SI(REG2[0]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG2[1]), 
	.D(n287), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(RdData_Valid), 
	.D(RdEn), 
	.CK(REF_CLK_M__L14_N5));
   SDFFSQX4M \mem_reg[3][5]  (.SN(FE_OFN0_sync_rst_1_M), 
	.SI(REG3[4]), 
	.SE(test_se), 
	.Q(REG3[5]), 
	.D(n283), 
	.CK(CLK));
   SDFFRQX2M \mem_reg[0][0]  (.SI(RdData[7]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[0]), 
	.D(n302), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \mem_reg[0][2]  (.SI(REG0[1]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[2]), 
	.D(n304), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[0][1]  (.SI(REG0[0]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[1]), 
	.D(n303), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[0][3]  (.SI(REG0[2]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[3]), 
	.D(n305), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[0][4]  (.SI(REG0[3]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[4]), 
	.D(n306), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[0][5]  (.SI(REG0[4]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[5]), 
	.D(n307), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \mem_reg[0][6]  (.SI(REG0[5]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[6]), 
	.D(n308), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[0][7]  (.SI(REG0[6]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(REG0[7]), 
	.D(n309), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[3][0]  (.SI(n525), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[0]), 
	.D(n278), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M \mem_reg[1][7]  (.SI(n518), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n517), 
	.D(n301), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][6]  (.SI(n519), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n518), 
	.D(n300), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][5]  (.SI(n520), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n519), 
	.D(n299), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][4]  (.SI(n521), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n520), 
	.D(n298), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][3]  (.SI(n522), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n521), 
	.D(n297), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][2]  (.SI(n523), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n522), 
	.D(n296), 
	.CK(REF_CLK_M__L14_N15));
   SDFFRQX2M \mem_reg[1][1]  (.SI(n524), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n523), 
	.D(n295), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX2M \mem_reg[1][0]  (.SI(REG0[7]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(n524), 
	.D(n294), 
	.CK(REF_CLK_M__L14_N13));
   SDFFRQX4M \mem_reg[3][6]  (.SI(REG3[5]), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[6]), 
	.D(n284), 
	.CK(CLK));
   SDFFRQX4M \mem_reg[2][4]  (.SI(n528), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG2[4]), 
	.D(n290), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \mem_reg[3][1]  (.SI(REG3[0]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[1]), 
	.D(n279), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \mem_reg[3][2]  (.SI(REG3[1]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[2]), 
	.D(n280), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \mem_reg[3][7]  (.SI(REG3[6]), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[7]), 
	.D(n285), 
	.CK(CLK));
   SDFFRQX4M \mem_reg[3][4]  (.SI(REG3[3]), 
	.SE(test_se), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[4]), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX4M \mem_reg[3][3]  (.SI(REG3[2]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG3[3]), 
	.D(n281), 
	.CK(REF_CLK_M__L14_N9));
   SDFFSQX4M \mem_reg[2][0]  (.SN(FE_OFN1_sync_rst_1_M), 
	.SI(n517), 
	.SE(FE_OFN20_SE), 
	.Q(REG2[0]), 
	.D(n286), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \mem_reg[2][6]  (.SI(n527), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(n526), 
	.D(n292), 
	.CK(REF_CLK_M__L14_N9));
   SDFFSQX2M \mem_reg[2][7]  (.SN(FE_OFN0_sync_rst_1_M), 
	.SI(n526), 
	.SE(FE_OFN15_SE), 
	.Q(n525), 
	.D(n293), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M \mem_reg[2][3]  (.SI(REG2[2]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(n528), 
	.D(n289), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M \mem_reg[2][5]  (.SI(REG2[4]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(n527), 
	.D(n291), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \mem_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(REG2[2]), 
	.D(n288), 
	.CK(REF_CLK_M__L14_N9));
   CLKINVX2M U3 (.Y(REG1[4]), 
	.A(n316));
   AND2X2M U4 (.Y(n1), 
	.B(n449), 
	.A(WrEn));
   AND2X2M U5 (.Y(n3), 
	.B(n1), 
	.A(N10));
   NOR2X4M U6 (.Y(n440), 
	.B(N11), 
	.A(n450));
   AND2X2M U7 (.Y(n4), 
	.B(n1), 
	.A(n450));
   INVX2M U8 (.Y(n449), 
	.A(N13));
   NOR2X2M U9 (.Y(n439), 
	.B(N10), 
	.A(n448));
   NOR2X2M U10 (.Y(n5), 
	.B(N11), 
	.A(N10));
   INVX2M U11 (.Y(n516), 
	.A(N12));
   CLKINVX2M U12 (.Y(REG2[3]), 
	.A(n8));
   INVXLM U13 (.Y(n6), 
	.A(n527));
   CLKINVX1M U14 (.Y(REG2[5]), 
	.A(n6));
   INVXLM U15 (.Y(n8), 
	.A(n528));
   INVXLM U16 (.Y(n10), 
	.A(n525));
   CLKINVX1M U17 (.Y(REG2[7]), 
	.A(n10));
   INVXLM U18 (.Y(n26), 
	.A(n526));
   CLKINVX1M U19 (.Y(REG2[6]), 
	.A(n26));
   INVXLM U20 (.Y(n29), 
	.A(n523));
   CLKINVX1M U21 (.Y(REG1[1]), 
	.A(n29));
   INVXLM U22 (.Y(n310), 
	.A(n521));
   CLKINVX1M U23 (.Y(REG1[3]), 
	.A(n310));
   INVXLM U24 (.Y(n312), 
	.A(n522));
   CLKINVX1M U25 (.Y(REG1[2]), 
	.A(n312));
   INVXLM U26 (.Y(n314), 
	.A(n519));
   CLKINVX1M U27 (.Y(REG1[5]), 
	.A(n314));
   INVXLM U28 (.Y(n316), 
	.A(n520));
   INVXLM U29 (.Y(n318), 
	.A(n517));
   CLKINVX1M U30 (.Y(REG1[7]), 
	.A(n318));
   INVXLM U31 (.Y(n320), 
	.A(n518));
   CLKINVX1M U32 (.Y(REG1[6]), 
	.A(n320));
   INVXLM U33 (.Y(n322), 
	.A(n524));
   CLKINVX1M U34 (.Y(REG1[0]), 
	.A(n322));
   INVX2M U56 (.Y(n450), 
	.A(N10));
   CLKNAND2X2M U57 (.Y(n435), 
	.B(n449), 
	.A(n516));
   CLKNAND2X2M U58 (.Y(n432), 
	.B(N12), 
	.A(N13));
   CLKNAND2X2M U59 (.Y(n441), 
	.B(n449), 
	.A(N12));
   CLKNAND2X2M U60 (.Y(n429), 
	.B(n516), 
	.A(N13));
   NOR2X2M U61 (.Y(n12), 
	.B(n448), 
	.A(n516));
   NOR2X2M U62 (.Y(n16), 
	.B(N11), 
	.A(n516));
   NOR2X2M U63 (.Y(n19), 
	.B(N12), 
	.A(n448));
   AND3X2M U64 (.Y(n14), 
	.C(n450), 
	.B(N13), 
	.A(WrEn));
   NOR2X2M U65 (.Y(n22), 
	.B(N11), 
	.A(N12));
   AND3X2M U66 (.Y(n11), 
	.C(N10), 
	.B(N13), 
	.A(WrEn));
   CLKINVX2M U67 (.Y(n514), 
	.A(WrData[4]));
   CLKINVX2M U68 (.Y(n513), 
	.A(WrData[5]));
   CLKINVX2M U69 (.Y(n512), 
	.A(WrData[6]));
   NAND2X2M U115 (.Y(n34), 
	.B(n19), 
	.A(n4));
   NAND2X2M U117 (.Y(n25), 
	.B(n12), 
	.A(n3));
   NAND2X2M U119 (.Y(n31), 
	.B(n16), 
	.A(n3));
   NAND2X2M U121 (.Y(n33), 
	.B(n19), 
	.A(n3));
   NAND2X2M U123 (.Y(n35), 
	.B(n22), 
	.A(n3));
   NAND2X2M U125 (.Y(n27), 
	.B(n12), 
	.A(n4));
   NAND2X2M U127 (.Y(n32), 
	.B(n16), 
	.A(n4));
   NAND2X2M U129 (.Y(n36), 
	.B(n22), 
	.A(n4));
   NAND2X2M U130 (.Y(n20), 
	.B(n14), 
	.A(n19));
   NAND2X2M U131 (.Y(n17), 
	.B(n14), 
	.A(n16));
   NAND2X2M U132 (.Y(n23), 
	.B(n14), 
	.A(n22));
   NAND2X2M U133 (.Y(n13), 
	.B(n12), 
	.A(n14));
   NAND2X2M U134 (.Y(n18), 
	.B(n11), 
	.A(n19));
   NAND2X2M U135 (.Y(n15), 
	.B(n11), 
	.A(n16));
   NAND2X2M U136 (.Y(n21), 
	.B(n11), 
	.A(n22));
   NAND2X2M U137 (.Y(n2), 
	.B(n12), 
	.A(n11));
   CLKINVX2M U138 (.Y(n515), 
	.A(RdEn));
   INVX2M U141 (.Y(n448), 
	.A(N11));
   CLKINVX2M U143 (.Y(n511), 
	.A(WrData[0]));
   CLKINVX2M U144 (.Y(n510), 
	.A(WrData[1]));
   CLKINVX2M U145 (.Y(n509), 
	.A(WrData[2]));
   CLKINVX2M U146 (.Y(n508), 
	.A(WrData[3]));
   CLKINVX2M U147 (.Y(n507), 
	.A(WrData[7]));
   AO22X1M U149 (.Y(n168), 
	.B1(RdEn), 
	.B0(N54), 
	.A1(n515), 
	.A0(RdData[1]));
   AO22X1M U150 (.Y(n170), 
	.B1(RdEn), 
	.B0(N53), 
	.A1(n515), 
	.A0(RdData[2]));
   AO22X1M U151 (.Y(n172), 
	.B1(RdEn), 
	.B0(N52), 
	.A1(n515), 
	.A0(RdData[3]));
   AO22X1M U152 (.Y(n174), 
	.B1(RdEn), 
	.B0(N51), 
	.A1(n515), 
	.A0(RdData[4]));
   AO22X1M U153 (.Y(n176), 
	.B1(RdEn), 
	.B0(N50), 
	.A1(n515), 
	.A0(RdData[5]));
   AO22X1M U154 (.Y(n178), 
	.B1(RdEn), 
	.B0(N49), 
	.A1(n515), 
	.A0(RdData[6]));
   AO22X1M U155 (.Y(n180), 
	.B1(RdEn), 
	.B0(N48), 
	.A1(n515), 
	.A0(RdData[7]));
   AO22X1M U156 (.Y(n166), 
	.B1(N55), 
	.B0(RdEn), 
	.A1(n515), 
	.A0(RdData[0]));
   OAI2BB2X1M U157 (.Y(n246), 
	.B1(n25), 
	.B0(n511), 
	.A1N(n25), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U158 (.Y(n247), 
	.B1(n25), 
	.B0(n510), 
	.A1N(n25), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U159 (.Y(n248), 
	.B1(n25), 
	.B0(n509), 
	.A1N(n25), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U160 (.Y(n249), 
	.B1(n25), 
	.B0(n508), 
	.A1N(n25), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U161 (.Y(n250), 
	.B1(n25), 
	.B0(n514), 
	.A1N(n25), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U162 (.Y(n251), 
	.B1(n25), 
	.B0(n513), 
	.A1N(n25), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U163 (.Y(n252), 
	.B1(n25), 
	.B0(n512), 
	.A1N(n25), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U164 (.Y(n253), 
	.B1(n25), 
	.B0(n507), 
	.A1N(n25), 
	.A0N(\mem[7][7] ));
   OAI2BB2X1M U165 (.Y(n262), 
	.B1(n31), 
	.B0(n511), 
	.A1N(n31), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U166 (.Y(n263), 
	.B1(n31), 
	.B0(n510), 
	.A1N(n31), 
	.A0N(n543));
   OAI2BB2X1M U167 (.Y(n264), 
	.B1(n31), 
	.B0(n509), 
	.A1N(n31), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U168 (.Y(n265), 
	.B1(n31), 
	.B0(n508), 
	.A1N(n31), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U169 (.Y(n266), 
	.B1(n31), 
	.B0(n514), 
	.A1N(n31), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U170 (.Y(n267), 
	.B1(n31), 
	.B0(n513), 
	.A1N(n31), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U171 (.Y(n268), 
	.B1(n31), 
	.B0(n512), 
	.A1N(n31), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U172 (.Y(n269), 
	.B1(n31), 
	.B0(n507), 
	.A1N(n31), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U173 (.Y(n278), 
	.B1(n33), 
	.B0(n511), 
	.A1N(n33), 
	.A0N(REG3[0]));
   OAI2BB2X1M U174 (.Y(n279), 
	.B1(n33), 
	.B0(n510), 
	.A1N(n33), 
	.A0N(REG3[1]));
   OAI2BB2X1M U312 (.Y(n280), 
	.B1(n33), 
	.B0(n509), 
	.A1N(n33), 
	.A0N(REG3[2]));
   OAI2BB2X1M U313 (.Y(n281), 
	.B1(n33), 
	.B0(n508), 
	.A1N(n33), 
	.A0N(REG3[3]));
   OAI2BB2X1M U314 (.Y(n282), 
	.B1(n33), 
	.B0(n514), 
	.A1N(n33), 
	.A0N(REG3[4]));
   OAI2BB2X1M U315 (.Y(n284), 
	.B1(n33), 
	.B0(n512), 
	.A1N(n33), 
	.A0N(REG3[6]));
   OAI2BB2X1M U316 (.Y(n285), 
	.B1(n33), 
	.B0(n507), 
	.A1N(n33), 
	.A0N(REG3[7]));
   OAI2BB2X1M U317 (.Y(n294), 
	.B1(n35), 
	.B0(n511), 
	.A1N(n35), 
	.A0N(REG1[0]));
   OAI2BB2X1M U318 (.Y(n295), 
	.B1(n35), 
	.B0(n510), 
	.A1N(n35), 
	.A0N(REG1[1]));
   OAI2BB2X1M U319 (.Y(n296), 
	.B1(n35), 
	.B0(n509), 
	.A1N(n35), 
	.A0N(REG1[2]));
   OAI2BB2X1M U320 (.Y(n297), 
	.B1(n35), 
	.B0(n508), 
	.A1N(n35), 
	.A0N(REG1[3]));
   OAI2BB2X1M U321 (.Y(n298), 
	.B1(n35), 
	.B0(n514), 
	.A1N(n35), 
	.A0N(REG1[4]));
   OAI2BB2X1M U322 (.Y(n299), 
	.B1(n35), 
	.B0(n513), 
	.A1N(n35), 
	.A0N(REG1[5]));
   OAI2BB2X1M U323 (.Y(n300), 
	.B1(n35), 
	.B0(n512), 
	.A1N(n35), 
	.A0N(REG1[6]));
   OAI2BB2X1M U324 (.Y(n301), 
	.B1(n35), 
	.B0(n507), 
	.A1N(n35), 
	.A0N(REG1[7]));
   OAI2BB2X1M U325 (.Y(n283), 
	.B1(n33), 
	.B0(n513), 
	.A1N(n33), 
	.A0N(REG3[5]));
   OAI2BB2X1M U326 (.Y(n286), 
	.B1(n34), 
	.B0(n511), 
	.A1N(n34), 
	.A0N(REG2[0]));
   OAI2BB2X1M U327 (.Y(n293), 
	.B1(n34), 
	.B0(n507), 
	.A1N(n34), 
	.A0N(REG2[7]));
   OAI2BB2X1M U328 (.Y(n254), 
	.B1(n27), 
	.B0(n511), 
	.A1N(n27), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U329 (.Y(n255), 
	.B1(n27), 
	.B0(n510), 
	.A1N(n27), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U330 (.Y(n256), 
	.B1(n27), 
	.B0(n509), 
	.A1N(n27), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U331 (.Y(n257), 
	.B1(n27), 
	.B0(n508), 
	.A1N(n27), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U332 (.Y(n258), 
	.B1(n27), 
	.B0(n514), 
	.A1N(n27), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U333 (.Y(n259), 
	.B1(n27), 
	.B0(n513), 
	.A1N(n27), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U334 (.Y(n260), 
	.B1(n27), 
	.B0(n512), 
	.A1N(n27), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U335 (.Y(n261), 
	.B1(n27), 
	.B0(n507), 
	.A1N(n27), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U336 (.Y(n270), 
	.B1(n32), 
	.B0(n511), 
	.A1N(n32), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U337 (.Y(n271), 
	.B1(n32), 
	.B0(n510), 
	.A1N(n32), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U338 (.Y(n272), 
	.B1(n32), 
	.B0(n509), 
	.A1N(n32), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U339 (.Y(n273), 
	.B1(n32), 
	.B0(n508), 
	.A1N(n32), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U340 (.Y(n274), 
	.B1(n32), 
	.B0(n514), 
	.A1N(n32), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U341 (.Y(n275), 
	.B1(n32), 
	.B0(n513), 
	.A1N(n32), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U342 (.Y(n276), 
	.B1(n32), 
	.B0(n512), 
	.A1N(n32), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U343 (.Y(n277), 
	.B1(n32), 
	.B0(n507), 
	.A1N(n32), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U344 (.Y(n287), 
	.B1(n34), 
	.B0(n510), 
	.A1N(n34), 
	.A0N(REG2[1]));
   OAI2BB2X1M U345 (.Y(n288), 
	.B1(n34), 
	.B0(n509), 
	.A1N(n34), 
	.A0N(REG2[2]));
   OAI2BB2X1M U346 (.Y(n289), 
	.B1(n34), 
	.B0(n508), 
	.A1N(n34), 
	.A0N(REG2[3]));
   OAI2BB2X1M U347 (.Y(n290), 
	.B1(n34), 
	.B0(n514), 
	.A1N(n34), 
	.A0N(REG2[4]));
   OAI2BB2X1M U348 (.Y(n291), 
	.B1(n34), 
	.B0(n513), 
	.A1N(n34), 
	.A0N(REG2[5]));
   OAI2BB2X1M U349 (.Y(n292), 
	.B1(n34), 
	.B0(n512), 
	.A1N(n34), 
	.A0N(REG2[6]));
   OAI2BB2X1M U350 (.Y(n302), 
	.B1(n36), 
	.B0(n511), 
	.A1N(n36), 
	.A0N(REG0[0]));
   OAI2BB2X1M U351 (.Y(n303), 
	.B1(n36), 
	.B0(n510), 
	.A1N(n36), 
	.A0N(REG0[1]));
   OAI2BB2X1M U352 (.Y(n304), 
	.B1(n36), 
	.B0(n509), 
	.A1N(n36), 
	.A0N(REG0[2]));
   OAI2BB2X1M U353 (.Y(n305), 
	.B1(n36), 
	.B0(n508), 
	.A1N(n36), 
	.A0N(REG0[3]));
   OAI2BB2X1M U354 (.Y(n306), 
	.B1(n36), 
	.B0(n514), 
	.A1N(n36), 
	.A0N(REG0[4]));
   OAI2BB2X1M U355 (.Y(n307), 
	.B1(n36), 
	.B0(n513), 
	.A1N(n36), 
	.A0N(REG0[5]));
   OAI2BB2X1M U356 (.Y(n308), 
	.B1(n36), 
	.B0(n512), 
	.A1N(n36), 
	.A0N(REG0[6]));
   OAI2BB2X1M U357 (.Y(n309), 
	.B1(n36), 
	.B0(n507), 
	.A1N(n36), 
	.A0N(REG0[7]));
   OAI2BB2X1M U358 (.Y(n194), 
	.B1(n13), 
	.B0(n514), 
	.A1N(n13), 
	.A0N(\mem[14][4] ));
   OAI2BB2X1M U359 (.Y(n195), 
	.B1(n13), 
	.B0(n513), 
	.A1N(n13), 
	.A0N(\mem[14][5] ));
   OAI2BB2X1M U360 (.Y(n196), 
	.B1(n13), 
	.B0(n512), 
	.A1N(n13), 
	.A0N(\mem[14][6] ));
   OAI2BB2X1M U361 (.Y(n210), 
	.B1(n17), 
	.B0(n514), 
	.A1N(n17), 
	.A0N(\mem[12][4] ));
   OAI2BB2X1M U362 (.Y(n211), 
	.B1(n17), 
	.B0(n513), 
	.A1N(n17), 
	.A0N(\mem[12][5] ));
   OAI2BB2X1M U363 (.Y(n212), 
	.B1(n17), 
	.B0(n512), 
	.A1N(n17), 
	.A0N(\mem[12][6] ));
   OAI2BB2X1M U364 (.Y(n226), 
	.B1(n20), 
	.B0(n514), 
	.A1N(n20), 
	.A0N(\mem[10][4] ));
   OAI2BB2X1M U365 (.Y(n227), 
	.B1(n20), 
	.B0(n513), 
	.A1N(n20), 
	.A0N(\mem[10][5] ));
   OAI2BB2X1M U366 (.Y(n228), 
	.B1(n20), 
	.B0(n512), 
	.A1N(n20), 
	.A0N(\mem[10][6] ));
   OAI2BB2X1M U367 (.Y(n242), 
	.B1(n23), 
	.B0(n514), 
	.A1N(n23), 
	.A0N(\mem[8][4] ));
   OAI2BB2X1M U368 (.Y(n243), 
	.B1(n23), 
	.B0(n513), 
	.A1N(n23), 
	.A0N(\mem[8][5] ));
   OAI2BB2X1M U369 (.Y(n244), 
	.B1(n23), 
	.B0(n512), 
	.A1N(n23), 
	.A0N(\mem[8][6] ));
   OAI2BB2X1M U370 (.Y(n190), 
	.B1(n13), 
	.B0(n511), 
	.A1N(n13), 
	.A0N(\mem[14][0] ));
   OAI2BB2X1M U371 (.Y(n191), 
	.B1(n13), 
	.B0(n510), 
	.A1N(n13), 
	.A0N(\mem[14][1] ));
   OAI2BB2X1M U372 (.Y(n192), 
	.B1(n13), 
	.B0(n509), 
	.A1N(n13), 
	.A0N(\mem[14][2] ));
   OAI2BB2X1M U373 (.Y(n193), 
	.B1(n13), 
	.B0(n508), 
	.A1N(n13), 
	.A0N(\mem[14][3] ));
   OAI2BB2X1M U374 (.Y(n197), 
	.B1(n13), 
	.B0(n507), 
	.A1N(n13), 
	.A0N(\mem[14][7] ));
   OAI2BB2X1M U375 (.Y(n206), 
	.B1(n17), 
	.B0(n511), 
	.A1N(n17), 
	.A0N(\mem[12][0] ));
   OAI2BB2X1M U376 (.Y(n207), 
	.B1(n17), 
	.B0(n510), 
	.A1N(n17), 
	.A0N(\mem[12][1] ));
   OAI2BB2X1M U377 (.Y(n208), 
	.B1(n17), 
	.B0(n509), 
	.A1N(n17), 
	.A0N(\mem[12][2] ));
   OAI2BB2X1M U378 (.Y(n209), 
	.B1(n17), 
	.B0(n508), 
	.A1N(n17), 
	.A0N(\mem[12][3] ));
   OAI2BB2X1M U379 (.Y(n213), 
	.B1(n17), 
	.B0(n507), 
	.A1N(n17), 
	.A0N(\mem[12][7] ));
   OAI2BB2X1M U380 (.Y(n222), 
	.B1(n20), 
	.B0(n511), 
	.A1N(n20), 
	.A0N(\mem[10][0] ));
   OAI2BB2X1M U381 (.Y(n223), 
	.B1(n20), 
	.B0(n510), 
	.A1N(n20), 
	.A0N(\mem[10][1] ));
   OAI2BB2X1M U382 (.Y(n224), 
	.B1(n20), 
	.B0(n509), 
	.A1N(n20), 
	.A0N(\mem[10][2] ));
   OAI2BB2X1M U383 (.Y(n225), 
	.B1(n20), 
	.B0(n508), 
	.A1N(n20), 
	.A0N(\mem[10][3] ));
   OAI2BB2X1M U384 (.Y(n229), 
	.B1(n20), 
	.B0(n507), 
	.A1N(n20), 
	.A0N(\mem[10][7] ));
   OAI2BB2X1M U385 (.Y(n238), 
	.B1(n23), 
	.B0(n511), 
	.A1N(n23), 
	.A0N(\mem[8][0] ));
   OAI2BB2X1M U386 (.Y(n239), 
	.B1(n23), 
	.B0(n510), 
	.A1N(n23), 
	.A0N(\mem[8][1] ));
   OAI2BB2X1M U387 (.Y(n240), 
	.B1(n23), 
	.B0(n509), 
	.A1N(n23), 
	.A0N(\mem[8][2] ));
   OAI2BB2X1M U388 (.Y(n241), 
	.B1(n23), 
	.B0(n508), 
	.A1N(n23), 
	.A0N(\mem[8][3] ));
   OAI2BB2X1M U389 (.Y(n245), 
	.B1(n23), 
	.B0(n507), 
	.A1N(n23), 
	.A0N(\mem[8][7] ));
   OAI2BB2X1M U390 (.Y(n186), 
	.B1(n514), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][4] ));
   OAI2BB2X1M U391 (.Y(n187), 
	.B1(n513), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][5] ));
   OAI2BB2X1M U392 (.Y(n188), 
	.B1(n512), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][6] ));
   OAI2BB2X1M U393 (.Y(n202), 
	.B1(n15), 
	.B0(n514), 
	.A1N(n15), 
	.A0N(\mem[13][4] ));
   OAI2BB2X1M U394 (.Y(n203), 
	.B1(n15), 
	.B0(n513), 
	.A1N(n15), 
	.A0N(\mem[13][5] ));
   OAI2BB2X1M U395 (.Y(n204), 
	.B1(n15), 
	.B0(n512), 
	.A1N(n15), 
	.A0N(\mem[13][6] ));
   OAI2BB2X1M U396 (.Y(n218), 
	.B1(n18), 
	.B0(n514), 
	.A1N(n18), 
	.A0N(\mem[11][4] ));
   OAI2BB2X1M U397 (.Y(n219), 
	.B1(n18), 
	.B0(n513), 
	.A1N(n18), 
	.A0N(\mem[11][5] ));
   OAI2BB2X1M U398 (.Y(n220), 
	.B1(n18), 
	.B0(n512), 
	.A1N(n18), 
	.A0N(\mem[11][6] ));
   OAI2BB2X1M U399 (.Y(n234), 
	.B1(n21), 
	.B0(n514), 
	.A1N(n21), 
	.A0N(\mem[9][4] ));
   OAI2BB2X1M U400 (.Y(n235), 
	.B1(n21), 
	.B0(n513), 
	.A1N(n21), 
	.A0N(\mem[9][5] ));
   OAI2BB2X1M U401 (.Y(n236), 
	.B1(n21), 
	.B0(n512), 
	.A1N(n21), 
	.A0N(\mem[9][6] ));
   OAI2BB2X1M U402 (.Y(n182), 
	.B1(n511), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][0] ));
   OAI2BB2X1M U403 (.Y(n183), 
	.B1(n510), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][1] ));
   OAI2BB2X1M U404 (.Y(n184), 
	.B1(n509), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][2] ));
   OAI2BB2X1M U405 (.Y(n185), 
	.B1(n508), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][3] ));
   OAI2BB2X1M U406 (.Y(n189), 
	.B1(n507), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(\mem[15][7] ));
   OAI2BB2X1M U407 (.Y(n198), 
	.B1(n15), 
	.B0(n511), 
	.A1N(n15), 
	.A0N(\mem[13][0] ));
   OAI2BB2X1M U408 (.Y(n199), 
	.B1(n15), 
	.B0(n510), 
	.A1N(n15), 
	.A0N(\mem[13][1] ));
   OAI2BB2X1M U409 (.Y(n200), 
	.B1(n15), 
	.B0(n509), 
	.A1N(n15), 
	.A0N(\mem[13][2] ));
   OAI2BB2X1M U410 (.Y(n201), 
	.B1(n15), 
	.B0(n508), 
	.A1N(n15), 
	.A0N(\mem[13][3] ));
   OAI2BB2X1M U411 (.Y(n205), 
	.B1(n15), 
	.B0(n507), 
	.A1N(n15), 
	.A0N(\mem[13][7] ));
   OAI2BB2X1M U412 (.Y(n214), 
	.B1(n18), 
	.B0(n511), 
	.A1N(n18), 
	.A0N(\mem[11][0] ));
   OAI2BB2X1M U413 (.Y(n215), 
	.B1(n18), 
	.B0(n510), 
	.A1N(n18), 
	.A0N(\mem[11][1] ));
   OAI2BB2X1M U414 (.Y(n216), 
	.B1(n18), 
	.B0(n509), 
	.A1N(n18), 
	.A0N(\mem[11][2] ));
   OAI2BB2X1M U415 (.Y(n217), 
	.B1(n18), 
	.B0(n508), 
	.A1N(n18), 
	.A0N(\mem[11][3] ));
   OAI2BB2X1M U416 (.Y(n221), 
	.B1(n18), 
	.B0(n507), 
	.A1N(n18), 
	.A0N(\mem[11][7] ));
   OAI2BB2X1M U417 (.Y(n230), 
	.B1(n21), 
	.B0(n511), 
	.A1N(n21), 
	.A0N(\mem[9][0] ));
   OAI2BB2X1M U418 (.Y(n231), 
	.B1(n21), 
	.B0(n510), 
	.A1N(n21), 
	.A0N(\mem[9][1] ));
   OAI2BB2X1M U419 (.Y(n232), 
	.B1(n21), 
	.B0(n509), 
	.A1N(n21), 
	.A0N(\mem[9][2] ));
   OAI2BB2X1M U420 (.Y(n233), 
	.B1(n21), 
	.B0(n508), 
	.A1N(n21), 
	.A0N(\mem[9][3] ));
   OAI2BB2X1M U421 (.Y(n237), 
	.B1(n21), 
	.B0(n507), 
	.A1N(n21), 
	.A0N(\mem[9][7] ));
   NOR2X1M U422 (.Y(n438), 
	.B(n450), 
	.A(n448));
   AOI22X1M U423 (.Y(n346), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][0] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][0] ));
   AOI22X1M U424 (.Y(n345), 
	.B1(n440), 
	.B0(\mem[9][0] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][0] ));
   AOI21X1M U425 (.Y(n356), 
	.B0(n429), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U426 (.Y(n348), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][0] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][0] ));
   AOI22X1M U427 (.Y(n347), 
	.B1(n440), 
	.B0(\mem[13][0] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][0] ));
   AOI21X1M U428 (.Y(n355), 
	.B0(n432), 
	.A1(n347), 
	.A0(n348));
   AOI22X1M U429 (.Y(n350), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[0]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[0]));
   AOI22X1M U430 (.Y(n349), 
	.B1(n440), 
	.B0(REG1[0]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[0]));
   AOI21X1M U431 (.Y(n354), 
	.B0(n435), 
	.A1(n349), 
	.A0(n350));
   AOI22X1M U432 (.Y(n352), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][0] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][0] ));
   AOI22X1M U433 (.Y(n351), 
	.B1(n440), 
	.B0(\mem[5][0] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][0] ));
   AOI21X1M U434 (.Y(n353), 
	.B0(n441), 
	.A1(n351), 
	.A0(n352));
   OR4X1M U435 (.Y(N55), 
	.D(n353), 
	.C(n354), 
	.B(n355), 
	.A(n356));
   AOI22X1M U436 (.Y(n358), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][1] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][1] ));
   AOI22X1M U437 (.Y(n357), 
	.B1(n440), 
	.B0(\mem[9][1] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][1] ));
   AOI21X1M U438 (.Y(n368), 
	.B0(n429), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U439 (.Y(n360), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][1] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][1] ));
   AOI22X1M U440 (.Y(n359), 
	.B1(n440), 
	.B0(\mem[13][1] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][1] ));
   AOI21X1M U441 (.Y(n367), 
	.B0(n432), 
	.A1(n359), 
	.A0(n360));
   AOI22X1M U442 (.Y(n362), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[1]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[1]));
   AOI22X1M U443 (.Y(n361), 
	.B1(n440), 
	.B0(REG1[1]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[1]));
   AOI21X1M U444 (.Y(n366), 
	.B0(n435), 
	.A1(n361), 
	.A0(n362));
   AOI22X1M U445 (.Y(n364), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][1] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][1] ));
   AOI22X1M U446 (.Y(n363), 
	.B1(n440), 
	.B0(n543), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][1] ));
   AOI21X1M U447 (.Y(n365), 
	.B0(n441), 
	.A1(n363), 
	.A0(n364));
   OR4X1M U448 (.Y(N54), 
	.D(n365), 
	.C(n366), 
	.B(n367), 
	.A(n368));
   AOI22X1M U449 (.Y(n370), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][2] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][2] ));
   AOI22X1M U450 (.Y(n369), 
	.B1(n440), 
	.B0(\mem[9][2] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][2] ));
   AOI21X1M U451 (.Y(n380), 
	.B0(n429), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U452 (.Y(n372), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][2] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][2] ));
   AOI22X1M U453 (.Y(n371), 
	.B1(n440), 
	.B0(\mem[13][2] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][2] ));
   AOI21X1M U454 (.Y(n379), 
	.B0(n432), 
	.A1(n371), 
	.A0(n372));
   AOI22X1M U455 (.Y(n374), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[2]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[2]));
   AOI22X1M U456 (.Y(n373), 
	.B1(n440), 
	.B0(REG1[2]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[2]));
   AOI21X1M U457 (.Y(n378), 
	.B0(n435), 
	.A1(n373), 
	.A0(n374));
   AOI22X1M U458 (.Y(n376), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][2] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][2] ));
   AOI22X1M U459 (.Y(n375), 
	.B1(n440), 
	.B0(\mem[5][2] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][2] ));
   AOI21X1M U460 (.Y(n377), 
	.B0(n441), 
	.A1(n375), 
	.A0(n376));
   OR4X1M U461 (.Y(N53), 
	.D(n377), 
	.C(n378), 
	.B(n379), 
	.A(n380));
   AOI22X1M U462 (.Y(n382), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][3] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][3] ));
   AOI22X1M U463 (.Y(n381), 
	.B1(n440), 
	.B0(\mem[9][3] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][3] ));
   AOI21X1M U464 (.Y(n392), 
	.B0(n429), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U465 (.Y(n384), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][3] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][3] ));
   AOI22X1M U466 (.Y(n383), 
	.B1(n440), 
	.B0(\mem[13][3] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][3] ));
   AOI21X1M U467 (.Y(n391), 
	.B0(n432), 
	.A1(n383), 
	.A0(n384));
   AOI22X1M U468 (.Y(n386), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[3]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[3]));
   AOI22X1M U469 (.Y(n385), 
	.B1(n440), 
	.B0(REG1[3]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[3]));
   AOI21X1M U470 (.Y(n390), 
	.B0(n435), 
	.A1(n385), 
	.A0(n386));
   AOI22X1M U471 (.Y(n388), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][3] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][3] ));
   AOI22X1M U472 (.Y(n387), 
	.B1(n440), 
	.B0(\mem[5][3] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][3] ));
   AOI21X1M U473 (.Y(n389), 
	.B0(n441), 
	.A1(n387), 
	.A0(n388));
   OR4X1M U474 (.Y(N52), 
	.D(n389), 
	.C(n390), 
	.B(n391), 
	.A(n392));
   AOI22X1M U475 (.Y(n394), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][4] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][4] ));
   AOI22X1M U476 (.Y(n393), 
	.B1(n440), 
	.B0(\mem[9][4] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][4] ));
   AOI21X1M U477 (.Y(n404), 
	.B0(n429), 
	.A1(n393), 
	.A0(n394));
   AOI22X1M U478 (.Y(n396), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][4] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][4] ));
   AOI22X1M U479 (.Y(n395), 
	.B1(n440), 
	.B0(\mem[13][4] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][4] ));
   AOI21X1M U480 (.Y(n403), 
	.B0(n432), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U481 (.Y(n398), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[4]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[4]));
   AOI22X1M U482 (.Y(n397), 
	.B1(n440), 
	.B0(REG1[4]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[4]));
   AOI21X1M U483 (.Y(n402), 
	.B0(n435), 
	.A1(n397), 
	.A0(n398));
   AOI22X1M U484 (.Y(n400), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][4] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][4] ));
   AOI22X1M U485 (.Y(n399), 
	.B1(n440), 
	.B0(\mem[5][4] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][4] ));
   AOI21X1M U486 (.Y(n401), 
	.B0(n441), 
	.A1(n399), 
	.A0(n400));
   OR4X1M U487 (.Y(N51), 
	.D(n401), 
	.C(n402), 
	.B(n403), 
	.A(n404));
   AOI22X1M U488 (.Y(n406), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][5] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][5] ));
   AOI22X1M U489 (.Y(n405), 
	.B1(n440), 
	.B0(\mem[9][5] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][5] ));
   AOI21X1M U490 (.Y(n416), 
	.B0(n429), 
	.A1(n405), 
	.A0(n406));
   AOI22X1M U491 (.Y(n408), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][5] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][5] ));
   AOI22X1M U492 (.Y(n407), 
	.B1(n440), 
	.B0(\mem[13][5] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][5] ));
   AOI21X1M U493 (.Y(n415), 
	.B0(n432), 
	.A1(n407), 
	.A0(n408));
   AOI22X1M U494 (.Y(n410), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[5]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[5]));
   AOI22X1M U495 (.Y(n409), 
	.B1(n440), 
	.B0(REG1[5]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[5]));
   AOI21X1M U496 (.Y(n414), 
	.B0(n435), 
	.A1(n409), 
	.A0(n410));
   AOI22X1M U497 (.Y(n412), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][5] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][5] ));
   AOI22X1M U498 (.Y(n411), 
	.B1(n440), 
	.B0(\mem[5][5] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][5] ));
   AOI21X1M U499 (.Y(n413), 
	.B0(n441), 
	.A1(n411), 
	.A0(n412));
   OR4X1M U500 (.Y(N50), 
	.D(n413), 
	.C(n414), 
	.B(n415), 
	.A(n416));
   AOI22X1M U501 (.Y(n418), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][6] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][6] ));
   AOI22X1M U502 (.Y(n417), 
	.B1(n440), 
	.B0(\mem[9][6] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][6] ));
   AOI21X1M U503 (.Y(n428), 
	.B0(n429), 
	.A1(n417), 
	.A0(n418));
   AOI22X1M U504 (.Y(n420), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][6] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][6] ));
   AOI22X1M U505 (.Y(n419), 
	.B1(n440), 
	.B0(\mem[13][6] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][6] ));
   AOI21X1M U506 (.Y(n427), 
	.B0(n432), 
	.A1(n419), 
	.A0(n420));
   AOI22X1M U507 (.Y(n422), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[6]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[6]));
   AOI22X1M U508 (.Y(n421), 
	.B1(n440), 
	.B0(REG1[6]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[6]));
   AOI21X1M U509 (.Y(n426), 
	.B0(n435), 
	.A1(n421), 
	.A0(n422));
   AOI22X1M U510 (.Y(n424), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][6] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][6] ));
   AOI22X1M U511 (.Y(n423), 
	.B1(n440), 
	.B0(\mem[5][6] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][6] ));
   AOI21X1M U512 (.Y(n425), 
	.B0(n441), 
	.A1(n423), 
	.A0(n424));
   OR4X1M U513 (.Y(N49), 
	.D(n425), 
	.C(n426), 
	.B(n427), 
	.A(n428));
   AOI22X1M U514 (.Y(n431), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[11][7] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[10][7] ));
   AOI22X1M U515 (.Y(n430), 
	.B1(n440), 
	.B0(\mem[9][7] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[8][7] ));
   AOI21X1M U516 (.Y(n447), 
	.B0(n429), 
	.A1(n430), 
	.A0(n431));
   AOI22X1M U517 (.Y(n434), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[15][7] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[14][7] ));
   AOI22X1M U518 (.Y(n433), 
	.B1(n440), 
	.B0(\mem[13][7] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[12][7] ));
   AOI21X1M U519 (.Y(n446), 
	.B0(n432), 
	.A1(n433), 
	.A0(n434));
   AOI22X1M U520 (.Y(n437), 
	.B1(FE_OFN11_n438), 
	.B0(REG3[7]), 
	.A1(FE_OFN9_n439), 
	.A0(REG2[7]));
   AOI22X1M U521 (.Y(n436), 
	.B1(n440), 
	.B0(REG1[7]), 
	.A1(FE_OFN10_n5), 
	.A0(REG0[7]));
   AOI21X1M U522 (.Y(n445), 
	.B0(n435), 
	.A1(n436), 
	.A0(n437));
   AOI22X1M U523 (.Y(n443), 
	.B1(FE_OFN11_n438), 
	.B0(\mem[7][7] ), 
	.A1(FE_OFN9_n439), 
	.A0(\mem[6][7] ));
   AOI22X1M U524 (.Y(n442), 
	.B1(n440), 
	.B0(\mem[5][7] ), 
	.A1(FE_OFN10_n5), 
	.A0(\mem[4][7] ));
   AOI21X1M U525 (.Y(n444), 
	.B0(n441), 
	.A1(n442), 
	.A0(n443));
   OR4X1M U526 (.Y(N48), 
	.D(n444), 
	.C(n445), 
	.B(n446), 
	.A(n447));
   INVXLM U537 (.Y(n542), 
	.A(\mem[5][1] ));
   INVXLM U538 (.Y(n543), 
	.A(n542));
   SDFFRQX4M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_sync_rst_1_M), 
	.Q(\mem[5][1] ), 
	.D(n263), 
	.CK(REF_CLK_M__L14_N9));
endmodule

module ALU_WIDTH8_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n210, 
	n209, 
	n208, 
	n207, 
	n178, 
	n206, 
	n205, 
	n204);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n210;
   input n209;
   input n208;
   input n207;
   input n178;
   input n206;
   input n205;
   input n204;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n9;
   wire n10;
   wire n11;

   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n205), 
	.A(\u_div/PartRem[2][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n206), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n207), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n178), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n206), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n205), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n206), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n178), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n178), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n207), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n178), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n207), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n207), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n207), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n208), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n209), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n204), 
	.A(\u_div/PartRem[1][7] ));
   NOR2X2M U2 (.Y(n11), 
	.B(b[7]), 
	.A(b[6]));
   AND3X2M U3 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n206), 
	.A(n11));
   AND2X2M U4 (.Y(quotient[4]), 
	.B(n10), 
	.A(\u_div/CryTmp[4][4] ));
   AND2X2M U5 (.Y(quotient[2]), 
	.B(n11), 
	.A(\u_div/CryTmp[2][6] ));
   AND2X2M U6 (.Y(quotient[1]), 
	.B(n204), 
	.A(\u_div/CryTmp[1][7] ));
   AND2X2M U7 (.Y(quotient[5]), 
	.B(n9), 
	.A(\u_div/CryTmp[5][3] ));
   MX2X1M U8 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2X1M U9 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2X1M U10 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   MX2X1M U11 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   MX2X1M U12 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   MX2X1M U13 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   MX2X1M U14 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   MX2X1M U15 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   MX2X1M U16 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   MX2X1M U17 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2X1M U18 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   MX2X1M U19 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   MX2X1M U20 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   MX2X1M U21 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   AND3X2M U22 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n208), 
	.A(n9));
   AND2X2M U23 (.Y(n9), 
	.B(n207), 
	.A(n10));
   OR2X2M U26 (.Y(\u_div/CryTmp[7][1] ), 
	.B(n210), 
	.A(a[7]));
   XNOR2X2M U27 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n210));
   XNOR2X2M U28 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n210));
   XNOR2X2M U29 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n210));
   XNOR2X2M U30 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n210));
   XNOR2X2M U31 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n210));
   XNOR2X2M U32 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n210));
   XNOR2X2M U33 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n210));
   OR2X2M U34 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n210), 
	.A(a[5]));
   OR2X2M U35 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n210), 
	.A(a[4]));
   OR2X2M U36 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n210), 
	.A(a[3]));
   OR2X2M U37 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n210), 
	.A(a[2]));
   OR2X2M U38 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n210), 
	.A(a[1]));
   NAND2BX2M U39 (.Y(\u_div/CryTmp[0][1] ), 
	.B(b[0]), 
	.AN(a[0]));
   OR2X2M U40 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n210), 
	.A(a[6]));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U60 (.Y(quotient[7]), 
	.D(n208), 
	.C(n209), 
	.B(n9), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U61 (.Y(n10), 
	.C(n206), 
	.B(n178), 
	.A(n11));
endmodule

module ALU_WIDTH8_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n210, 
	n209, 
	n208, 
	n207, 
	n178, 
	n206, 
	n205, 
	n204);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n210;
   input n209;
   input n208;
   input n207;
   input n178;
   input n206;
   input n205;
   input n204;

   // Internal wires
   wire [9:0] carry;

   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n206), 
	.A(A[5]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n207), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n208), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n205), 
	.A(A[6]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n178), 
	.A(A[4]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n209), 
	.A(A[1]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n204), 
	.A(A[7]));
   INVX2M U1 (.Y(DIFF[8]), 
	.A(carry[8]));
   XNOR2X2M U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n210));
   OR2X2M U6 (.Y(carry[1]), 
	.B(n210), 
	.A(A[0]));
endmodule

module ALU_WIDTH8_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_WIDTH8_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire \A[5] ;
   wire \A[4] ;
   wire \A[3] ;
   wire \A[2] ;
   wire \A[1] ;
   wire \A[0] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;

   assign SUM[6] = A[6] ;
   assign SUM[5] = \A[5]  ;
   assign \A[5]  = A[5] ;
   assign SUM[4] = \A[4]  ;
   assign \A[4]  = A[4] ;
   assign SUM[3] = \A[3]  ;
   assign \A[3]  = A[3] ;
   assign SUM[2] = \A[2]  ;
   assign \A[2]  = A[2] ;
   assign SUM[1] = \A[1]  ;
   assign \A[1]  = A[1] ;
   assign SUM[0] = \A[0]  ;
   assign \A[0]  = A[0] ;

   OAI21BX1M U2 (.Y(n10), 
	.B0N(n14), 
	.A1(n13), 
	.A0(n12));
   AOI2BB1X2M U3 (.Y(n17), 
	.B0(n3), 
	.A1N(n4), 
	.A0N(n1));
   NOR2X2M U4 (.Y(n7), 
	.B(A[8]), 
	.A(B[8]));
   OAI2BB1XLM U5 (.Y(n9), 
	.B0(n11), 
	.A1N(A[12]), 
	.A0N(n10));
   NOR2X2M U6 (.Y(n4), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U7 (.Y(n16), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U8 (.Y(n12), 
	.B(A[11]), 
	.A(B[11]));
   NAND2X2M U9 (.Y(n6), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U10 (.Y(SUM[13]), 
	.B(n9), 
	.A(B[13]));
   CLKXOR2X2M U11 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X1M U12 (.Y(SUM[9]), 
	.B(n2), 
	.A(n1));
   NOR2X1M U13 (.Y(n2), 
	.B(n4), 
	.A(n3));
   CLKXOR2X2M U14 (.Y(SUM[8]), 
	.B(n6), 
	.A(n5));
   NAND2BX1M U15 (.Y(n5), 
	.B(n8), 
	.AN(n7));
   OAI21X1M U16 (.Y(n11), 
	.B0(B[12]), 
	.A1(n10), 
	.A0(A[12]));
   XOR3XLM U17 (.Y(SUM[12]), 
	.C(n10), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U18 (.Y(SUM[11]), 
	.B(n15), 
	.A(n13));
   NOR2X1M U19 (.Y(n15), 
	.B(n12), 
	.A(n14));
   AND2X1M U20 (.Y(n14), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U21 (.Y(n13), 
	.B0(n18), 
	.A1(n17), 
	.A0(n16));
   CLKXOR2X2M U22 (.Y(SUM[10]), 
	.B(n17), 
	.A(n19));
   AND2X1M U23 (.Y(n3), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U24 (.Y(n1), 
	.B0(n8), 
	.A1(n7), 
	.A0(n6));
   CLKNAND2X2M U25 (.Y(n8), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U26 (.Y(n19), 
	.B(n18), 
	.AN(n16));
   CLKNAND2X2M U27 (.Y(n18), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_WIDTH8_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n210, 
	n209, 
	n208, 
	n207, 
	n178, 
	n206, 
	n205, 
	n204, 
	n199, 
	n200, 
	n181, 
	n201, 
	n180, 
	n202, 
	n179, 
	n203);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n210;
   input n209;
   input n208;
   input n207;
   input n178;
   input n206;
   input n205;
   input n204;
   input n199;
   input n200;
   input n181;
   input n201;
   input n180;
   input n202;
   input n179;
   input n203;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n20;
   wire n23;
   wire n24;

   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n8), 
	.A(\ab[2][1] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n7), 
	.A(\ab[2][6] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n6), 
	.A(\ab[2][5] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n5), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n4), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n3), 
	.A(\ab[2][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   NOR2X2M U10 (.Y(\ab[0][3] ), 
	.B(n24), 
	.A(n207));
   NOR2X2M U11 (.Y(\ab[0][4] ), 
	.B(n24), 
	.A(n178));
   NOR2X2M U12 (.Y(\ab[0][5] ), 
	.B(n24), 
	.A(n206));
   NOR2X2M U13 (.Y(\ab[1][2] ), 
	.B(n23), 
	.A(n208));
   NOR2X2M U14 (.Y(\ab[1][3] ), 
	.B(n23), 
	.A(n207));
   NOR2X2M U15 (.Y(\ab[1][4] ), 
	.B(n23), 
	.A(n178));
   NOR2X2M U16 (.Y(\ab[1][5] ), 
	.B(n23), 
	.A(n206));
   NOR2X2M U17 (.Y(\ab[1][1] ), 
	.B(n23), 
	.A(n209));
   NOR2X2M U18 (.Y(\ab[0][7] ), 
	.B(n24), 
	.A(n204));
   NOR2X2M U19 (.Y(\ab[0][6] ), 
	.B(n24), 
	.A(n205));
   NOR2X2M U20 (.Y(\ab[0][2] ), 
	.B(n24), 
	.A(n208));
   NOR2X2M U21 (.Y(\ab[0][1] ), 
	.B(n24), 
	.A(n209));
   NOR2X2M U22 (.Y(\ab[1][6] ), 
	.B(n23), 
	.A(n205));
   NOR2X2M U23 (.Y(\ab[1][0] ), 
	.B(n23), 
	.A(n210));
   NOR2X2M U24 (.Y(\ab[7][7] ), 
	.B(n204), 
	.A(n17));
   CLKXOR2X2M U25 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U26 (.Y(n11), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U27 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U28 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKINVX2M U29 (.Y(n23), 
	.A(A[1]));
   AND2X2M U30 (.Y(n12), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U31 (.Y(n13), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U32 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKINVX2M U35 (.Y(n20), 
	.A(A[4]));
   AND2X2M U36 (.Y(n14), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U37 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKINVX2M U38 (.Y(n17), 
	.A(A[7]));
   CLKINVX2M U40 (.Y(n18), 
	.A(A[6]));
   AND2X2M U41 (.Y(n15), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U42 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   AND2X2M U43 (.Y(n16), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   XOR2X1M U44 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   XOR2X1M U45 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   XOR2X1M U46 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   XOR2X1M U47 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   XOR2X1M U48 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   XOR2X1M U49 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   CLKINVX2M U50 (.Y(n24), 
	.A(A[0]));
   XOR2X1M U51 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   CLKXOR2X2M U60 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   NOR2X1M U62 (.Y(\ab[7][6] ), 
	.B(n205), 
	.A(n17));
   NOR2X1M U63 (.Y(\ab[7][5] ), 
	.B(n206), 
	.A(n17));
   NOR2X1M U64 (.Y(\ab[7][4] ), 
	.B(n178), 
	.A(n17));
   NOR2X1M U65 (.Y(\ab[7][3] ), 
	.B(n207), 
	.A(n17));
   NOR2X1M U66 (.Y(\ab[7][2] ), 
	.B(n208), 
	.A(n17));
   NOR2X1M U67 (.Y(\ab[7][1] ), 
	.B(n209), 
	.A(n17));
   NOR2X1M U68 (.Y(\ab[7][0] ), 
	.B(n210), 
	.A(n17));
   NOR2X1M U69 (.Y(\ab[6][7] ), 
	.B(n18), 
	.A(n204));
   NOR2X1M U70 (.Y(\ab[6][6] ), 
	.B(n18), 
	.A(n205));
   NOR2X1M U71 (.Y(\ab[6][5] ), 
	.B(n18), 
	.A(n206));
   NOR2X1M U72 (.Y(\ab[6][4] ), 
	.B(n18), 
	.A(n178));
   NOR2X1M U73 (.Y(\ab[6][3] ), 
	.B(n18), 
	.A(n207));
   NOR2X1M U74 (.Y(\ab[6][2] ), 
	.B(n18), 
	.A(n208));
   NOR2X1M U75 (.Y(\ab[6][1] ), 
	.B(n18), 
	.A(n209));
   NOR2X1M U76 (.Y(\ab[6][0] ), 
	.B(n18), 
	.A(n210));
   NOR2X1M U77 (.Y(\ab[5][7] ), 
	.B(n181), 
	.A(n204));
   NOR2X1M U78 (.Y(\ab[5][6] ), 
	.B(n181), 
	.A(n205));
   NOR2X1M U79 (.Y(\ab[5][5] ), 
	.B(n181), 
	.A(n206));
   NOR2X1M U80 (.Y(\ab[5][4] ), 
	.B(n181), 
	.A(n178));
   NOR2X1M U81 (.Y(\ab[5][3] ), 
	.B(n181), 
	.A(n207));
   NOR2X1M U82 (.Y(\ab[5][2] ), 
	.B(n181), 
	.A(n208));
   NOR2X1M U83 (.Y(\ab[5][1] ), 
	.B(n181), 
	.A(n209));
   NOR2X1M U84 (.Y(\ab[5][0] ), 
	.B(n181), 
	.A(n210));
   NOR2X1M U85 (.Y(\ab[4][7] ), 
	.B(n20), 
	.A(n204));
   NOR2X1M U86 (.Y(\ab[4][6] ), 
	.B(n20), 
	.A(n205));
   NOR2X1M U87 (.Y(\ab[4][5] ), 
	.B(n20), 
	.A(n206));
   NOR2X1M U88 (.Y(\ab[4][4] ), 
	.B(n20), 
	.A(n178));
   NOR2X1M U89 (.Y(\ab[4][3] ), 
	.B(n20), 
	.A(n207));
   NOR2X1M U90 (.Y(\ab[4][2] ), 
	.B(n20), 
	.A(n208));
   NOR2X1M U91 (.Y(\ab[4][1] ), 
	.B(n20), 
	.A(n209));
   NOR2X1M U92 (.Y(\ab[4][0] ), 
	.B(n20), 
	.A(n210));
   NOR2X1M U93 (.Y(\ab[3][7] ), 
	.B(n180), 
	.A(n204));
   NOR2X1M U94 (.Y(\ab[3][6] ), 
	.B(n180), 
	.A(n205));
   NOR2X1M U95 (.Y(\ab[3][5] ), 
	.B(n180), 
	.A(n206));
   NOR2X1M U96 (.Y(\ab[3][4] ), 
	.B(n180), 
	.A(n178));
   NOR2X1M U97 (.Y(\ab[3][3] ), 
	.B(n180), 
	.A(n207));
   NOR2X1M U98 (.Y(\ab[3][2] ), 
	.B(n180), 
	.A(n208));
   NOR2X1M U99 (.Y(\ab[3][1] ), 
	.B(n180), 
	.A(n209));
   NOR2X1M U100 (.Y(\ab[3][0] ), 
	.B(n180), 
	.A(n210));
   NOR2X1M U101 (.Y(\ab[2][7] ), 
	.B(n179), 
	.A(n204));
   NOR2X1M U102 (.Y(\ab[2][6] ), 
	.B(n179), 
	.A(n205));
   NOR2X1M U103 (.Y(\ab[2][5] ), 
	.B(n179), 
	.A(n206));
   NOR2X1M U104 (.Y(\ab[2][4] ), 
	.B(n179), 
	.A(n178));
   NOR2X1M U105 (.Y(\ab[2][3] ), 
	.B(n179), 
	.A(n207));
   NOR2X1M U106 (.Y(\ab[2][2] ), 
	.B(n179), 
	.A(n208));
   NOR2X1M U107 (.Y(\ab[2][1] ), 
	.B(n179), 
	.A(n209));
   NOR2X1M U108 (.Y(\ab[2][0] ), 
	.B(n179), 
	.A(n210));
   NOR2X1M U109 (.Y(\ab[1][7] ), 
	.B(n23), 
	.A(n204));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n24), 
	.A(n210));
   ALU_WIDTH8_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n16,
		n15,
		n14,
		n13,
		n11,
		n12,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_WIDTH8_test_1 (
	CLK, 
	RST, 
	A, 
	B, 
	ALU_FUN, 
	Enable, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN15_SE);
   input CLK;
   input RST;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input Enable;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN15_SE;

   // Internal wires
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N162;
   wire N163;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n20;
   wire n21;
   wire n22;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n41;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n50;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n58;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n66;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n74;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n83;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n91;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n102;
   wire n103;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n118;
   wire n120;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n134;
   wire n101;
   wire n104;
   wire n136;
   wire n138;
   wire n148;
   wire n150;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;

   OAI21X1M U69 (.Y(n24), 
	.B0(Enable), 
	.A1(n94), 
	.A0(n93));
   OAI21X1M U87 (.Y(n28), 
	.B0(Enable), 
	.A1(n94), 
	.A0(n102));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(Enable), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(n134), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(n130), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(n128), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(n132), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(n188), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(n126), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(n187), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(n186), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(n185), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(n124), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(n182), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(n122), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(n120), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(n118), 
	.CK(CLK));
   NOR2X2M U3 (.Y(n103), 
	.B(ALU_FUN[1]), 
	.A(n193));
   OAI2B2X1M U22 (.Y(N163), 
	.B1(n174), 
	.B0(n175), 
	.A1N(A[7]), 
	.A0(B[7]));
   NOR3BX2M U24 (.Y(n43), 
	.C(n17), 
	.B(n197), 
	.AN(n103));
   OAI2BB1XLM U25 (.Y(n164), 
	.B0(B[1]), 
	.A1N(A[1]), 
	.A0N(n165));
   NOR2BX2M U26 (.Y(n165), 
	.B(B[0]), 
	.AN(A[0]));
   NOR2BX2M U27 (.Y(n175), 
	.B(A[7]), 
	.AN(B[7]));
   NOR2BX2M U28 (.Y(n161), 
	.B(A[0]), 
	.AN(B[0]));
   NOR2X2M U29 (.Y(n105), 
	.B(ALU_FUN[3]), 
	.A(n197));
   CLKINVX2M U30 (.Y(n192), 
	.A(n91));
   NOR2X2M U33 (.Y(n93), 
	.B(n195), 
	.A(n196));
   INVX2M U34 (.Y(n196), 
	.A(n105));
   NAND2X2M U35 (.Y(n25), 
	.B(n197), 
	.A(n80));
   NAND2X2M U36 (.Y(n91), 
	.B(n193), 
	.A(n108));
   AND2X2M U38 (.Y(n108), 
	.B(n195), 
	.A(n100));
   AOI222X1M U40 (.Y(n86), 
	.C1(n32), 
	.C0(N87), 
	.B1(n43), 
	.B0(A[6]), 
	.A1(n190), 
	.A0(A[7]));
   CLKINVX2M U41 (.Y(n193), 
	.A(ALU_FUN[0]));
   INVX2M U42 (.Y(n179), 
	.A(n104));
   OAI221X1M U43 (.Y(n89), 
	.C0(n27), 
	.B1(n199), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[7]));
   OAI221X1M U44 (.Y(n95), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[7]), 
	.A1(n199), 
	.A0(n28));
   INVX2M U45 (.Y(n195), 
	.A(ALU_FUN[1]));
   INVX2M U46 (.Y(n197), 
	.A(ALU_FUN[2]));
   AND3X2M U47 (.Y(n94), 
	.C(n103), 
	.B(n197), 
	.A(ALU_FUN[3]));
   INVX2M U48 (.Y(n180), 
	.A(n138));
   NOR3X2M U49 (.Y(n100), 
	.C(n198), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[2]));
   NOR3X2M U50 (.Y(n80), 
	.C(n17), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[0]));
   CLKINVX2M U51 (.Y(n191), 
	.A(n27));
   CLKINVX2M U52 (.Y(n190), 
	.A(n29));
   CLKINVX2M U53 (.Y(n189), 
	.A(n106));
   AND2X2M U54 (.Y(n21), 
	.B(ALU_FUN[0]), 
	.A(n108));
   AND2X2M U55 (.Y(n14), 
	.B(ALU_FUN[2]), 
	.A(n80));
   AND3X2M U56 (.Y(n32), 
	.C(n193), 
	.B(ALU_FUN[1]), 
	.A(n100));
   INVX2M U57 (.Y(n181), 
	.A(n150));
   AND2X1M U58 (.Y(n99), 
	.B(ALU_FUN[1]), 
	.A(n100));
   INVX2M U61 (.Y(n202), 
	.A(A[1]));
   INVX2M U62 (.Y(n201), 
	.A(A[4]));
   INVX2M U63 (.Y(n200), 
	.A(A[6]));
   INVX2M U64 (.Y(n199), 
	.A(A[7]));
   AOI222X1M U67 (.Y(n10), 
	.C1(n32), 
	.C0(N80), 
	.B1(n194), 
	.B0(N98), 
	.A1(A[0]), 
	.A0(n190));
   CLKINVX2M U71 (.Y(n150), 
	.A(n148));
   CLKINVX2M U73 (.Y(n138), 
	.A(n136));
   CLKINVX2M U75 (.Y(n104), 
	.A(n101));
   NOR2X1M U78 (.Y(n102), 
	.B(n196), 
	.A(ALU_FUN[1]));
   OAI221X1M U79 (.Y(n22), 
	.C0(n27), 
	.B1(n203), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[0]));
   OAI221X1M U80 (.Y(n20), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[0]), 
	.A1(n28), 
	.A0(n203));
   NAND2X2M U81 (.Y(n17), 
	.B(ALU_FUN[3]), 
	.A(Enable));
   CLKINVX2M U84 (.Y(n194), 
	.A(n96));
   OAI211X2M U85 (.Y(n96), 
	.C0(n99), 
	.B0(ALU_FUN[0]), 
	.A1(n98), 
	.A0(n97));
   NAND4X2M U86 (.Y(n98), 
	.D(n207), 
	.C(n208), 
	.B(n209), 
	.A(n210));
   NAND4X2M U88 (.Y(n97), 
	.D(n204), 
	.C(n205), 
	.B(n206), 
	.A(n178));
   NAND3X2M U90 (.Y(n27), 
	.C(n93), 
	.B(n193), 
	.A(Enable));
   NAND3X2M U92 (.Y(n29), 
	.C(n103), 
	.B(Enable), 
	.A(n105));
   NAND2X2M U93 (.Y(n106), 
	.B(n21), 
	.A(N79));
   CLKINVX2M U96 (.Y(n198), 
	.A(Enable));
   INVX2M U98 (.Y(n203), 
	.A(A[0]));
   NAND4X2M U100 (.Y(n118), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   AOI22X1M U101 (.Y(n9), 
	.B1(n198), 
	.B0(ALU_OUT[0]), 
	.A1(n203), 
	.A0(n191));
   AOI222X1M U102 (.Y(n11), 
	.C1(n210), 
	.C0(n22), 
	.B1(n21), 
	.B0(N71), 
	.A1(n20), 
	.A0(B[0]));
   AOI221XLM U103 (.Y(n12), 
	.C0(n15), 
	.B1(n14), 
	.B0(A[1]), 
	.A1(n192), 
	.A0(N62));
   AOI222X1M U104 (.Y(n37), 
	.C1(n41), 
	.C0(B[1]), 
	.B1(n209), 
	.B0(n39), 
	.A1(n194), 
	.A0(N99));
   OAI221X1M U105 (.Y(n39), 
	.C0(n27), 
	.B1(n25), 
	.B0(n202), 
	.A1(n24), 
	.A0(A[1]));
   OAI221X1M U106 (.Y(n41), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[1]), 
	.A1(n28), 
	.A0(n202));
   NAND4X2M U107 (.Y(n120), 
	.D(n38), 
	.C(n37), 
	.B(n36), 
	.A(n35));
   AOI222X1M U108 (.Y(n38), 
	.C1(n192), 
	.C0(N63), 
	.B1(n14), 
	.B0(n104), 
	.A1(n21), 
	.A0(N72));
   AOI22X1M U109 (.Y(n35), 
	.B1(n198), 
	.B0(ALU_OUT[1]), 
	.A1(n202), 
	.A0(n191));
   AOI222X1M U110 (.Y(n36), 
	.C1(n32), 
	.C0(N81), 
	.B1(A[0]), 
	.B0(n43), 
	.A1(A[1]), 
	.A0(n190));
   INVX2M U113 (.Y(n148), 
	.A(A[5]));
   AOI222X1M U114 (.Y(n46), 
	.C1(n50), 
	.C0(B[2]), 
	.B1(n208), 
	.B0(n48), 
	.A1(n194), 
	.A0(N100));
   OAI221X1M U115 (.Y(n48), 
	.C0(n27), 
	.B1(n179), 
	.B0(n25), 
	.A1(n24), 
	.A0(n104));
   OAI221X1M U116 (.Y(n50), 
	.C0(n29), 
	.B1(n25), 
	.B0(n104), 
	.A1(n179), 
	.A0(n28));
   NAND4X2M U117 (.Y(n122), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   AOI222X1M U118 (.Y(n47), 
	.C1(n192), 
	.C0(N64), 
	.B1(n14), 
	.B0(n138), 
	.A1(n21), 
	.A0(N73));
   AOI22X1M U119 (.Y(n44), 
	.B1(n198), 
	.B0(ALU_OUT[2]), 
	.A1(n101), 
	.A0(n191));
   AOI222X1M U120 (.Y(n45), 
	.C1(n32), 
	.C0(N82), 
	.B1(A[1]), 
	.B0(n43), 
	.A1(n190), 
	.A0(n104));
   AOI222X1M U122 (.Y(n54), 
	.C1(n58), 
	.C0(B[3]), 
	.B1(n207), 
	.B0(n56), 
	.A1(n194), 
	.A0(N101));
   OAI221X1M U123 (.Y(n56), 
	.C0(n27), 
	.B1(n180), 
	.B0(n25), 
	.A1(n24), 
	.A0(n138));
   OAI221X1M U124 (.Y(n58), 
	.C0(n29), 
	.B1(n25), 
	.B0(n138), 
	.A1(n180), 
	.A0(n28));
   NAND4X2M U125 (.Y(n124), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   AOI222X1M U126 (.Y(n55), 
	.C1(n192), 
	.C0(N65), 
	.B1(n14), 
	.B0(A[4]), 
	.A1(n21), 
	.A0(N74));
   AOI22X1M U127 (.Y(n52), 
	.B1(n198), 
	.B0(ALU_OUT[3]), 
	.A1(n136), 
	.A0(n191));
   AOI222X1M U128 (.Y(n53), 
	.C1(n32), 
	.C0(N83), 
	.B1(n104), 
	.B0(n43), 
	.A1(n190), 
	.A0(n138));
   INVX2M U129 (.Y(n136), 
	.A(A[3]));
   AOI222X1M U147 (.Y(n62), 
	.C1(n66), 
	.C0(B[4]), 
	.B1(n178), 
	.B0(n64), 
	.A1(n194), 
	.A0(N102));
   OAI221X1M U148 (.Y(n64), 
	.C0(n27), 
	.B1(n201), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[4]));
   OAI221X1M U149 (.Y(n66), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[4]), 
	.A1(n201), 
	.A0(n28));
   INVX2M U150 (.Y(n182), 
	.A(n116));
   AOI221XLM U151 (.Y(n116), 
	.C0(n189), 
	.B1(n32), 
	.B0(N95), 
	.A1(n198), 
	.A0(ALU_OUT[15]));
   NAND4X2M U152 (.Y(n126), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.A(n60));
   AOI222X1M U153 (.Y(n63), 
	.C1(n192), 
	.C0(N66), 
	.B1(n14), 
	.B0(n150), 
	.A1(n21), 
	.A0(N75));
   AOI22X1M U154 (.Y(n60), 
	.B1(n198), 
	.B0(ALU_OUT[4]), 
	.A1(n201), 
	.A0(n191));
   AOI222X1M U155 (.Y(n61), 
	.C1(n32), 
	.C0(N84), 
	.B1(n43), 
	.B0(n138), 
	.A1(n190), 
	.A0(A[4]));
   INVX2M U156 (.Y(n183), 
	.A(n115));
   AOI221XLM U157 (.Y(n115), 
	.C0(n189), 
	.B1(n32), 
	.B0(N94), 
	.A1(n198), 
	.A0(ALU_OUT[14]));
   INVX2M U160 (.Y(n101), 
	.A(A[2]));
   INVX2M U161 (.Y(n184), 
	.A(n114));
   AOI221XLM U162 (.Y(n114), 
	.C0(n189), 
	.B1(n32), 
	.B0(N93), 
	.A1(n198), 
	.A0(ALU_OUT[13]));
   AOI222X1M U163 (.Y(n70), 
	.C1(n74), 
	.C0(B[5]), 
	.B1(n206), 
	.B0(n72), 
	.A1(n194), 
	.A0(N103));
   OAI221X1M U164 (.Y(n72), 
	.C0(n27), 
	.B1(n181), 
	.B0(n25), 
	.A1(n24), 
	.A0(n150));
   OAI221X1M U165 (.Y(n74), 
	.C0(n29), 
	.B1(n25), 
	.B0(n150), 
	.A1(n181), 
	.A0(n28));
   NAND4X2M U166 (.Y(n128), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n68));
   AOI222X1M U167 (.Y(n71), 
	.C1(n192), 
	.C0(N67), 
	.B1(n14), 
	.B0(A[6]), 
	.A1(n21), 
	.A0(N76));
   AOI22X1M U168 (.Y(n68), 
	.B1(n198), 
	.B0(ALU_OUT[5]), 
	.A1(n148), 
	.A0(n191));
   AOI222X1M U169 (.Y(n69), 
	.C1(n32), 
	.C0(N85), 
	.B1(n43), 
	.B0(A[4]), 
	.A1(n190), 
	.A0(n150));
   INVX2M U170 (.Y(n185), 
	.A(n113));
   AOI221XLM U171 (.Y(n113), 
	.C0(n189), 
	.B1(n32), 
	.B0(N92), 
	.A1(n198), 
	.A0(ALU_OUT[12]));
   INVX2M U172 (.Y(n186), 
	.A(n112));
   AOI221XLM U173 (.Y(n112), 
	.C0(n189), 
	.B1(n32), 
	.B0(N91), 
	.A1(n198), 
	.A0(ALU_OUT[11]));
   NOR4X1M U174 (.Y(n15), 
	.D(n195), 
	.C(n17), 
	.B(n16), 
	.A(ALU_FUN[2]));
   AOI22X1M U175 (.Y(n16), 
	.B1(ALU_FUN[0]), 
	.B0(N163), 
	.A1(n193), 
	.A0(N162));
   INVX2M U176 (.Y(n187), 
	.A(n111));
   AOI221XLM U177 (.Y(n111), 
	.C0(n189), 
	.B1(n32), 
	.B0(N90), 
	.A1(n198), 
	.A0(ALU_OUT[10]));
   AOI222X1M U178 (.Y(n78), 
	.C1(n83), 
	.C0(B[6]), 
	.B1(n205), 
	.B0(n81), 
	.A1(n194), 
	.A0(N104));
   OAI221X1M U179 (.Y(n81), 
	.C0(n27), 
	.B1(n200), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[6]));
   OAI221X1M U180 (.Y(n83), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[6]), 
	.A1(n200), 
	.A0(n28));
   NAND4X2M U181 (.Y(n130), 
	.D(n79), 
	.C(n78), 
	.B(n77), 
	.A(n76));
   AOI222X1M U182 (.Y(n79), 
	.C1(n192), 
	.C0(N68), 
	.B1(n14), 
	.B0(A[7]), 
	.A1(n21), 
	.A0(N77));
   AOI22X1M U183 (.Y(n76), 
	.B1(n198), 
	.B0(ALU_OUT[6]), 
	.A1(n200), 
	.A0(n191));
   AOI222X1M U184 (.Y(n77), 
	.C1(n32), 
	.C0(N86), 
	.B1(n43), 
	.B0(n150), 
	.A1(n190), 
	.A0(A[6]));
   NAND4X2M U185 (.Y(n132), 
	.D(n88), 
	.C(n87), 
	.B(n86), 
	.A(n85));
   AOI22X1M U186 (.Y(n85), 
	.B1(n198), 
	.B0(ALU_OUT[7]), 
	.A1(n199), 
	.A0(n191));
   AOI22X1M U187 (.Y(n87), 
	.B1(n194), 
	.B0(N105), 
	.A1(n95), 
	.A0(B[7]));
   AOI222X1M U188 (.Y(n88), 
	.C1(n21), 
	.C0(N78), 
	.B1(n192), 
	.B0(N69), 
	.A1(n204), 
	.A0(n89));
   OAI2B11X2M U189 (.Y(n134), 
	.C0(n107), 
	.B0(n106), 
	.A1N(N70), 
	.A0(n91));
   AOI22X1M U190 (.Y(n107), 
	.B1(n198), 
	.B0(ALU_OUT[8]), 
	.A1(n32), 
	.A0(N88));
   INVX2M U191 (.Y(n188), 
	.A(n109));
   AOI221XLM U192 (.Y(n109), 
	.C0(n189), 
	.B1(n32), 
	.B0(N89), 
	.A1(n198), 
	.A0(ALU_OUT[9]));
   INVX2M U193 (.Y(n178), 
	.A(B[4]));
   INVX2M U194 (.Y(n210), 
	.A(B[0]));
   INVX2M U195 (.Y(n205), 
	.A(B[6]));
   INVX2M U196 (.Y(n204), 
	.A(B[7]));
   INVX2M U197 (.Y(n206), 
	.A(B[5]));
   INVX2M U198 (.Y(n209), 
	.A(B[1]));
   INVX2M U199 (.Y(n207), 
	.A(B[3]));
   INVX2M U200 (.Y(n208), 
	.A(B[2]));
   OAI2B2X1M U201 (.Y(n162), 
	.B1(n161), 
	.B0(B[1]), 
	.A1N(A[1]), 
	.A0(n161));
   NAND2BX1M U202 (.Y(n173), 
	.B(B[6]), 
	.AN(A[6]));
   CLKNAND2X2M U203 (.Y(n172), 
	.B(n181), 
	.A(B[5]));
   NAND2BX1M U204 (.Y(n169), 
	.B(B[4]), 
	.AN(A[4]));
   NAND4X1M U205 (.Y(n177), 
	.D(n169), 
	.C(n172), 
	.B(n173), 
	.A(n162));
   CLKNAND2X2M U206 (.Y(n168), 
	.B(n180), 
	.A(B[3]));
   CLKNAND2X2M U207 (.Y(n163), 
	.B(n179), 
	.A(B[2]));
   CLKNAND2X2M U208 (.Y(n176), 
	.B(n163), 
	.A(n168));
   OAI211X1M U209 (.Y(n166), 
	.C0(n163), 
	.B0(n164), 
	.A1(n165), 
	.A0(A[1]));
   OAI221X1M U210 (.Y(n167), 
	.C0(n166), 
	.B1(n180), 
	.B0(B[3]), 
	.A1(n179), 
	.A0(B[2]));
   AOI32X1M U211 (.Y(n170), 
	.B1(n178), 
	.B0(A[4]), 
	.A2(n167), 
	.A1(n168), 
	.A0(n169));
   OAI21X1M U212 (.Y(n171), 
	.B0(n170), 
	.A1(n181), 
	.A0(B[5]));
   AOI32X1M U213 (.Y(n174), 
	.B1(n205), 
	.B0(A[6]), 
	.A2(n171), 
	.A1(n172), 
	.A0(n173));
   NOR4X1M U214 (.Y(N162), 
	.D(n175), 
	.C(N163), 
	.B(n176), 
	.A(n177));
   ALU_WIDTH8_DW_div_uns_0 div_33 (.a({ A[7],
		A[6],
		n150,
		A[4],
		n138,
		n104,
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N105,
		N104,
		N103,
		N102,
		N101,
		N100,
		N99,
		N98 }), 
	.n210(n210), 
	.n209(n209), 
	.n208(n208), 
	.n207(n207), 
	.n178(n178), 
	.n206(n206), 
	.n205(n205), 
	.n204(n204));
   ALU_WIDTH8_DW01_sub_0 sub_29 (.A({ 1'b0,
		A[7],
		A[6],
		n150,
		A[4],
		n138,
		n104,
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N79,
		N78,
		N77,
		N76,
		N75,
		N74,
		N73,
		N72,
		N71 }), 
	.n210(n210), 
	.n209(n209), 
	.n208(n208), 
	.n207(n207), 
	.n178(n178), 
	.n206(n206), 
	.n205(n205), 
	.n204(n204));
   ALU_WIDTH8_DW01_add_0 add_27 (.A({ 1'b0,
		A[7],
		A[6],
		n150,
		A[4],
		n138,
		n104,
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N70,
		N69,
		N68,
		N67,
		N66,
		N65,
		N64,
		N63,
		N62 }));
   ALU_WIDTH8_DW02_mult_0 mult_31 (.A({ A[7],
		A[6],
		n150,
		A[4],
		n138,
		n104,
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86,
		N85,
		N84,
		N83,
		N82,
		N81,
		N80 }), 
	.n210(n210), 
	.n209(n209), 
	.n208(n208), 
	.n207(n207), 
	.n178(n178), 
	.n206(n206), 
	.n205(n205), 
	.n204(n204), 
	.n199(n199), 
	.n200(n200), 
	.n181(n181), 
	.n201(n201), 
	.n180(n180), 
	.n202(n202), 
	.n179(n179), 
	.n203(n203));
endmodule

module SYS_CTRL_ADDR_WIDTH4_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	ALU_FUN, 
	ALU_EN, 
	CLK_EN, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	RdData, 
	RdData_Valid, 
	RX_P_DATA, 
	RX_P_VALID, 
	FIFO_FULL, 
	TX_P_DATA, 
	TX_P_VALID, 
	clk_div_en, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_sync_rst_1_M, 
	FE_OFN20_SE, 
	REF_CLK_M__L14_N12, 
	REF_CLK_M__L14_N5, 
	REF_CLK_M__L14_N9);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input OUT_VALID;
   output [3:0] ALU_FUN;
   output ALU_EN;
   output CLK_EN;
   output [3:0] Address;
   output WrEn;
   output RdEn;
   output [7:0] WrData;
   input [7:0] RdData;
   input RdData_Valid;
   input [7:0] RX_P_DATA;
   input RX_P_VALID;
   input FIFO_FULL;
   output [7:0] TX_P_DATA;
   output TX_P_VALID;
   output clk_div_en;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_sync_rst_1_M;
   input FE_OFN20_SE;
   input REF_CLK_M__L14_N12;
   input REF_CLK_M__L14_N5;
   input REF_CLK_M__L14_N9;

   // Internal wires
   wire n1;
   wire n12;
   wire n17;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n31;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n53;
   wire n54;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n61;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n72;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n89;
   wire n91;
   wire n93;
   wire n95;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n2;
   wire n3;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n34;
   wire n47;
   wire n52;
   wire n55;
   wire n60;
   wire n62;
   wire n63;
   wire n71;
   wire n73;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n126;
   wire n127;
   wire n128;
   wire [3:0] saved_function;
   wire [3:0] state;

   assign clk_div_en = 1'b1 ;

   OAI211X2M U34 (.Y(n27), 
	.C0(n50), 
	.B0(n49), 
	.A1(n48), 
	.A0(RX_P_VALID));
   OAI31X1M U36 (.Y(n49), 
	.B0(FIFO_FULL), 
	.A2(n111), 
	.A1(n53), 
	.A0(n113));
   OAI22X1M U76 (.Y(Address[3]), 
	.B1(n120), 
	.B0(n74), 
	.A1(n71), 
	.A0(n82));
   OAI22X1M U78 (.Y(Address[2]), 
	.B1(n121), 
	.B0(n74), 
	.A1(n71), 
	.A0(n83));
   OAI22X1M U80 (.Y(Address[1]), 
	.B1(n122), 
	.B0(n74), 
	.A1(n71), 
	.A0(n108));
   OAI22X1M U89 (.Y(ALU_FUN[3]), 
	.B1(n118), 
	.B0(n77), 
	.A1(n82), 
	.A0(n1));
   OAI22X1M U92 (.Y(ALU_FUN[2]), 
	.B1(n117), 
	.B0(n77), 
	.A1(n83), 
	.A0(n1));
   OAI22X1M U95 (.Y(ALU_FUN[1]), 
	.B1(n116), 
	.B0(n11), 
	.A1(n108), 
	.A0(n1));
   OAI22X1M U98 (.Y(ALU_FUN[0]), 
	.B1(n119), 
	.B0(n11), 
	.A1(n109), 
	.A0(n1));
   NOR4BX1M U100 (.Y(n77), 
	.D(test_so), 
	.C(n113), 
	.B(n73), 
	.AN(n54));
   OAI21X1M U116 (.Y(ALU_EN), 
	.B0(n1), 
	.A1(n41), 
	.A0(OUT_VALID));
   SDFFRQX2M \saved_function_reg[1]  (.SI(saved_function[0]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(saved_function[1]), 
	.D(n95), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \saved_function_reg[2]  (.SI(saved_function[1]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(saved_function[2]), 
	.D(n93), 
	.CK(REF_CLK_M__L14_N5));
   SDFFRQX2M \saved_function_reg[3]  (.SI(saved_function[2]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(saved_function[3]), 
	.D(n91), 
	.CK(REF_CLK_M__L14_N5));
   SDFFRQX2M \saved_function_reg[0]  (.SI(n126), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(saved_function[0]), 
	.D(n89), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRQX2M \state_reg[0]  (.SI(saved_function[3]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(state[0]), 
	.D(n107), 
	.CK(REF_CLK_M__L14_N5));
   SDFFRX1M \saved_address_reg[3]  (.SI(n127), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.QN(n120), 
	.Q(n126), 
	.D(n103), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRX1M \saved_address_reg[2]  (.SI(n128), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.QN(n121), 
	.Q(n127), 
	.D(n102), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRX1M \saved_address_reg[1]  (.SI(n123), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.QN(n122), 
	.Q(n128), 
	.D(n101), 
	.CK(REF_CLK_M__L14_N12));
   SDFFRX1M \saved_address_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n123), 
	.Q(n3), 
	.D(n100), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \state_reg[3]  (.SI(state[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(test_so), 
	.D(n106), 
	.CK(REF_CLK_M__L14_N5));
   SDFFRQX4M \state_reg[1]  (.SI(state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(state[1]), 
	.D(n105), 
	.CK(CLK));
   SDFFRQX4M \state_reg[2]  (.SI(state[1]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(state[2]), 
	.D(n104), 
	.CK(CLK));
   AND4X2M U3 (.Y(n54), 
	.D(n17), 
	.C(n46), 
	.B(n56), 
	.A(n24));
   AND2X2M U4 (.Y(n2), 
	.B(n19), 
	.A(n18));
   NOR4X1M U5 (.Y(n37), 
	.D(RX_P_DATA[0]), 
	.C(RX_P_DATA[1]), 
	.B(RX_P_DATA[4]), 
	.A(RX_P_DATA[5]));
   NAND2XLM U6 (.Y(n42), 
	.B(RX_P_DATA[0]), 
	.A(RX_P_DATA[4]));
   NAND3X2M U7 (.Y(n43), 
	.C(n78), 
	.B(state[1]), 
	.A(state[2]));
   CLKNAND2X2M U15 (.Y(Address[0]), 
	.B(n2), 
	.A(n13));
   NOR4BX1M U16 (.Y(n11), 
	.D(test_so), 
	.C(n113), 
	.B(n73), 
	.AN(n54));
   CLKINVX2M U17 (.Y(n113), 
	.A(n51));
   CLKINVX1M U18 (.Y(n14), 
	.A(n71));
   CLKINVX1M U19 (.Y(n15), 
	.A(n74));
   CLKINVX1M U20 (.Y(n16), 
	.A(n43));
   CLKNAND2X2M U21 (.Y(n18), 
	.B(RX_P_DATA[0]), 
	.A(n14));
   CLKNAND2X2M U22 (.Y(n19), 
	.B(n15), 
	.A(n3));
   CLKNAND2X2M U23 (.Y(n13), 
	.B(RX_P_VALID), 
	.A(n16));
   CLKINVX2M U25 (.Y(n63), 
	.A(WrEn));
   AOI31X2M U26 (.Y(WrEn), 
	.B0(n73), 
	.A2(n56), 
	.A1(n28), 
	.A0(n43));
   NOR2X2M U27 (.Y(RdEn), 
	.B(n73), 
	.A(n75));
   NOR2X1M U28 (.Y(WrData[0]), 
	.B(n63), 
	.A(n109));
   NOR2X1M U29 (.Y(WrData[1]), 
	.B(n63), 
	.A(n108));
   NOR2X1M U30 (.Y(WrData[2]), 
	.B(n63), 
	.A(n83));
   NOR2X1M U31 (.Y(WrData[3]), 
	.B(n63), 
	.A(n82));
   NOR2X1M U32 (.Y(WrData[7]), 
	.B(n63), 
	.A(n81));
   NOR2X2M U33 (.Y(n79), 
	.B(test_so), 
	.A(n112));
   NOR2X2M U35 (.Y(n72), 
	.B(state[1]), 
	.A(state[2]));
   NOR2X2M U37 (.Y(n78), 
	.B(state[0]), 
	.A(test_so));
   AND4X2M U38 (.Y(n74), 
	.D(n76), 
	.C(RX_P_VALID), 
	.B(n46), 
	.A(n56));
   INVX2M U39 (.Y(n62), 
	.A(n12));
   CLKINVX2M U40 (.Y(n71), 
	.A(RdEn));
   INVX2M U41 (.Y(n110), 
	.A(n17));
   NOR2X2M U42 (.Y(n12), 
	.B(n73), 
	.A(n17));
   CLKINVX2M U43 (.Y(n47), 
	.A(n59));
   INVX2M U44 (.Y(n80), 
	.A(n1));
   NAND2X2M U46 (.Y(n1), 
	.B(n32), 
	.A(RX_P_VALID));
   NAND2X2M U47 (.Y(CLK_EN), 
	.B(n1), 
	.A(n41));
   CLKINVX2M U48 (.Y(n73), 
	.A(RX_P_VALID));
   NAND2X2M U49 (.Y(n17), 
	.B(n79), 
	.A(n72));
   NAND2X2M U50 (.Y(n46), 
	.B(n72), 
	.A(n78));
   AND3X2M U51 (.Y(n24), 
	.C(n75), 
	.B(n28), 
	.A(n43));
   INVX2M U52 (.Y(n111), 
	.A(n41));
   NAND2X2M U53 (.Y(n59), 
	.B(n55), 
	.A(n53));
   NAND3X2M U54 (.Y(TX_P_VALID), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   CLKINVX2M U55 (.Y(n60), 
	.A(n27));
   OAI22X1M U56 (.Y(n105), 
	.B1(n27), 
	.B0(n26), 
	.A1(n115), 
	.A0(n60));
   NOR3BX2M U57 (.Y(n26), 
	.C(n110), 
	.B(n29), 
	.AN(n28));
   OAI211X2M U58 (.Y(n104), 
	.C0(n22), 
	.B0(n21), 
	.A1(n114), 
	.A0(n60));
   OAI2BB1X2M U59 (.Y(n21), 
	.B0(n60), 
	.A1N(n24), 
	.A0N(n23));
   NOR3X2M U60 (.Y(n38), 
	.C(n81), 
	.B(n82), 
	.A(n46));
   CLKINVX2M U61 (.Y(n34), 
	.A(n57));
   CLKINVX2M U62 (.Y(n52), 
	.A(n58));
   OAI22X1M U63 (.Y(n89), 
	.B1(n119), 
	.B0(n80), 
	.A1(n109), 
	.A0(n1));
   OAI22X1M U64 (.Y(n91), 
	.B1(n118), 
	.B0(n80), 
	.A1(n82), 
	.A0(n1));
   OAI22X1M U65 (.Y(n93), 
	.B1(n117), 
	.B0(n80), 
	.A1(n83), 
	.A0(n1));
   OAI22X1M U66 (.Y(n95), 
	.B1(n116), 
	.B0(n80), 
	.A1(n108), 
	.A0(n1));
   OAI22X1M U67 (.Y(n100), 
	.B1(n123), 
	.B0(n12), 
	.A1(n62), 
	.A0(n109));
   OAI22X1M U68 (.Y(n101), 
	.B1(n122), 
	.B0(n12), 
	.A1(n62), 
	.A0(n108));
   OAI22X1M U69 (.Y(n102), 
	.B1(n121), 
	.B0(n12), 
	.A1(n62), 
	.A0(n83));
   OAI22X1M U70 (.Y(n103), 
	.B1(n120), 
	.B0(n12), 
	.A1(n62), 
	.A0(n82));
   AND3X2M U73 (.Y(n32), 
	.C(state[2]), 
	.B(state[1]), 
	.A(n79));
   INVX2M U74 (.Y(n112), 
	.A(state[0]));
   NAND3X2M U75 (.Y(n41), 
	.C(test_so), 
	.B(n112), 
	.A(n72));
   NOR4X1M U77 (.Y(n76), 
	.D(n113), 
	.C(n110), 
	.B(n32), 
	.A(test_so));
   INVX2M U79 (.Y(n114), 
	.A(state[2]));
   NAND3X2M U81 (.Y(n56), 
	.C(n78), 
	.B(n114), 
	.A(state[1]));
   INVX2M U82 (.Y(n115), 
	.A(state[1]));
   NAND3X2M U83 (.Y(n28), 
	.C(state[2]), 
	.B(n115), 
	.A(n79));
   NAND3X2M U84 (.Y(n51), 
	.C(n78), 
	.B(n115), 
	.A(state[2]));
   NAND3X2M U85 (.Y(n75), 
	.C(state[1]), 
	.B(n114), 
	.A(n79));
   CLKINVX2M U86 (.Y(n83), 
	.A(RX_P_DATA[2]));
   CLKINVX2M U87 (.Y(n82), 
	.A(RX_P_DATA[3]));
   CLKINVX2M U88 (.Y(n109), 
	.A(RX_P_DATA[0]));
   CLKINVX2M U90 (.Y(n108), 
	.A(RX_P_DATA[1]));
   INVX2M U91 (.Y(n119), 
	.A(saved_function[0]));
   AND2X1M U93 (.Y(WrData[5]), 
	.B(WrEn), 
	.A(RX_P_DATA[5]));
   AND3X2M U94 (.Y(n53), 
	.C(test_so), 
	.B(state[0]), 
	.A(n72));
   NAND3X2M U96 (.Y(n58), 
	.C(OUT_VALID), 
	.B(n55), 
	.A(n111));
   NAND3X2M U97 (.Y(n57), 
	.C(RdData_Valid), 
	.B(n55), 
	.A(n113));
   INVX2M U99 (.Y(n118), 
	.A(saved_function[3]));
   INVX2M U101 (.Y(n116), 
	.A(saved_function[1]));
   INVX2M U102 (.Y(n117), 
	.A(saved_function[2]));
   AND2X1M U103 (.Y(WrData[4]), 
	.B(WrEn), 
	.A(RX_P_DATA[4]));
   AND2X1M U104 (.Y(WrData[6]), 
	.B(WrEn), 
	.A(RX_P_DATA[6]));
   OAI211X2M U105 (.Y(n107), 
	.C0(n22), 
	.B0(n35), 
	.A1(n112), 
	.A0(n60));
   OAI21X2M U106 (.Y(n35), 
	.B0(n60), 
	.A1(n39), 
	.A0(n29));
   OAI31X1M U107 (.Y(n39), 
	.B0(n41), 
	.A2(RX_P_DATA[0]), 
	.A1(RX_P_DATA[4]), 
	.A0(n40));
   NAND4X2M U108 (.Y(n22), 
	.D(n37), 
	.C(n36), 
	.B(RX_P_DATA[2]), 
	.A(n60));
   AND2X2M U109 (.Y(n36), 
	.B(RX_P_DATA[6]), 
	.A(n38));
   INVX2M U110 (.Y(n55), 
	.A(FIFO_FULL));
   OA22X2M U111 (.Y(n50), 
	.B1(OUT_VALID), 
	.B0(n41), 
	.A1(RdData_Valid), 
	.A0(n51));
   NOR2BX2M U112 (.Y(n48), 
	.B(n32), 
	.AN(n54));
   OAI211X2M U113 (.Y(n29), 
	.C0(n23), 
	.B0(n43), 
	.A1(n42), 
	.A0(n40));
   NAND4X2M U114 (.Y(n23), 
	.D(n44), 
	.C(RX_P_DATA[4]), 
	.B(n38), 
	.A(RX_P_DATA[6]));
   NOR4X1M U115 (.Y(n44), 
	.D(n83), 
	.C(n109), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   OAI2BB2X1M U117 (.Y(n106), 
	.B1(n27), 
	.B0(n31), 
	.A1N(test_so), 
	.A0N(n27));
   NOR2X2M U118 (.Y(n31), 
	.B(n111), 
	.A(n32));
   NAND3X2M U119 (.Y(n40), 
	.C(n45), 
	.B(n38), 
	.A(RX_P_DATA[5]));
   NOR3X2M U120 (.Y(n45), 
	.C(RX_P_DATA[2]), 
	.B(RX_P_DATA[6]), 
	.A(n108));
   INVX2M U121 (.Y(n81), 
	.A(RX_P_DATA[7]));
   OAI2BB1X2M U122 (.Y(TX_P_DATA[0]), 
	.B0(n70), 
	.A1N(n52), 
	.A0N(ALU_OUT[0]));
   AOI22X1M U135 (.Y(n70), 
	.B1(n34), 
	.B0(RdData[0]), 
	.A1(n47), 
	.A0(ALU_OUT[8]));
   OAI2BB1X2M U136 (.Y(TX_P_DATA[1]), 
	.B0(n69), 
	.A1N(n52), 
	.A0N(ALU_OUT[1]));
   AOI22X1M U137 (.Y(n69), 
	.B1(n34), 
	.B0(RdData[1]), 
	.A1(n47), 
	.A0(ALU_OUT[9]));
   OAI2BB1X2M U138 (.Y(TX_P_DATA[2]), 
	.B0(n68), 
	.A1N(n52), 
	.A0N(ALU_OUT[2]));
   AOI22X1M U139 (.Y(n68), 
	.B1(n34), 
	.B0(RdData[2]), 
	.A1(n47), 
	.A0(ALU_OUT[10]));
   OAI2BB1X2M U140 (.Y(TX_P_DATA[3]), 
	.B0(n67), 
	.A1N(n52), 
	.A0N(ALU_OUT[3]));
   AOI22X1M U141 (.Y(n67), 
	.B1(n34), 
	.B0(RdData[3]), 
	.A1(n47), 
	.A0(ALU_OUT[11]));
   OAI2BB1X2M U142 (.Y(TX_P_DATA[4]), 
	.B0(n66), 
	.A1N(n52), 
	.A0N(ALU_OUT[4]));
   AOI22X1M U143 (.Y(n66), 
	.B1(n34), 
	.B0(RdData[4]), 
	.A1(n47), 
	.A0(ALU_OUT[12]));
   OAI2BB1X2M U144 (.Y(TX_P_DATA[5]), 
	.B0(n65), 
	.A1N(n52), 
	.A0N(ALU_OUT[5]));
   AOI22X1M U145 (.Y(n65), 
	.B1(n34), 
	.B0(RdData[5]), 
	.A1(n47), 
	.A0(ALU_OUT[13]));
   OAI2BB1X2M U146 (.Y(TX_P_DATA[6]), 
	.B0(n64), 
	.A1N(n52), 
	.A0N(ALU_OUT[6]));
   AOI22X1M U147 (.Y(n64), 
	.B1(n34), 
	.B0(RdData[6]), 
	.A1(n47), 
	.A0(ALU_OUT[14]));
   OAI2BB1X2M U148 (.Y(TX_P_DATA[7]), 
	.B0(n61), 
	.A1N(n52), 
	.A0N(ALU_OUT[7]));
   AOI22X1M U149 (.Y(n61), 
	.B1(n34), 
	.B0(RdData[7]), 
	.A1(n47), 
	.A0(ALU_OUT[15]));
endmodule

module data_synch_BUS_WIDTH8_NUM_STAGES2_test_1 (
	bus_enable, 
	dest_clk, 
	dest_rst, 
	unsync_bus, 
	enable_pulse_d, 
	sync_bus, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN20_SE, 
	REF_CLK_M__L14_N9);
   input bus_enable;
   input dest_clk;
   input dest_rst;
   input [7:0] unsync_bus;
   output enable_pulse_d;
   output [7:0] sync_bus;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN20_SE;
   input REF_CLK_M__L14_N9;

   // Internal wires
   wire FE_PHN0_n18__Exclude_0_NET;
   wire sync_enable_delay2;
   wire sync_enable_delay;
   wire n1;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n28;
   wire n29;
   wire [1:0] sync_stages;

   assign test_so = sync_stages[1] ;

   DLY4X1M FE_PHC0_n18__Exclude_0_NET (.Y(FE_PHN0_n18__Exclude_0_NET), 
	.A(test_si));
   SDFFRQX2M \sync_stages_reg[1]  (.SI(sync_stages[0]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_stages[1]), 
	.D(sync_stages[0]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_bus[7]), 
	.D(n19), 
	.CK(dest_clk));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(sync_bus[3]), 
	.D(n11), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M sync_enable_delay2_reg (.SI(sync_bus[7]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_enable_delay2), 
	.D(sync_enable_delay), 
	.CK(dest_clk));
   SDFFRQX2M sync_enable_delay_reg (.SI(sync_enable_delay2), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_enable_delay), 
	.D(sync_stages[1]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_stages_reg[0]  (.SI(sync_enable_delay), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_stages[0]), 
	.D(bus_enable), 
	.CK(dest_clk));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(sync_bus[1]), 
	.D(n7), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(sync_bus[2]), 
	.D(n9), 
	.CK(dest_clk));
   SDFFRQX4M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_bus[4]), 
	.D(n13), 
	.CK(dest_clk));
   SDFFRQX4M \sync_bus_reg[0]  (.SI(FE_PHN0_n18__Exclude_0_NET), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(sync_bus[0]), 
	.D(n5), 
	.CK(REF_CLK_M__L14_N9));
   SDFFRQX4M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_bus[5]), 
	.D(n15), 
	.CK(dest_clk));
   SDFFRQX4M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(FE_OFN20_SE), 
	.RN(dest_rst), 
	.Q(sync_bus[6]), 
	.D(n17), 
	.CK(dest_clk));
   CLKINVX2M U7 (.Y(n28), 
	.A(n1));
   NOR2X2M U10 (.Y(enable_pulse_d), 
	.B(n29), 
	.A(sync_enable_delay2));
   INVX2M U11 (.Y(n29), 
	.A(sync_enable_delay));
   NAND2X1M U12 (.Y(n1), 
	.B(n29), 
	.A(sync_stages[1]));
   AO22X1M U13 (.Y(n13), 
	.B1(n28), 
	.B0(unsync_bus[4]), 
	.A1(n1), 
	.A0(sync_bus[4]));
   AO22X1M U14 (.Y(n15), 
	.B1(n28), 
	.B0(unsync_bus[5]), 
	.A1(n1), 
	.A0(sync_bus[5]));
   AO22X1M U27 (.Y(n5), 
	.B1(n28), 
	.B0(unsync_bus[0]), 
	.A1(n1), 
	.A0(sync_bus[0]));
   AO22X1M U28 (.Y(n17), 
	.B1(n28), 
	.B0(unsync_bus[6]), 
	.A1(n1), 
	.A0(sync_bus[6]));
   AO22X1M U29 (.Y(n7), 
	.B1(n28), 
	.B0(unsync_bus[1]), 
	.A1(n1), 
	.A0(sync_bus[1]));
   AO22X1M U30 (.Y(n9), 
	.B1(n28), 
	.B0(unsync_bus[2]), 
	.A1(n1), 
	.A0(sync_bus[2]));
   AO22X1M U31 (.Y(n11), 
	.B1(n28), 
	.B0(unsync_bus[3]), 
	.A1(n1), 
	.A0(sync_bus[3]));
   AO22X1M U32 (.Y(n19), 
	.B1(n28), 
	.B0(unsync_bus[7]), 
	.A1(n1), 
	.A0(sync_bus[7]));
endmodule

module FIFO_WR_NUM_ADDR_BITS4_test_1 (
	W_CLK, 
	W_RST, 
	W_INC, 
	wq_rptr, 
	wfull, 
	w_addr, 
	w_ptr, 
	test_si, 
	test_se, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	FE_OFN17_SE, 
	REF_CLK_M__L14_N11, 
	REF_CLK_M__L14_N4);
   input W_CLK;
   input W_RST;
   input W_INC;
   input [4:0] wq_rptr;
   output wfull;
   output [3:0] w_addr;
   output [4:0] w_ptr;
   input test_si;
   input test_se;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input FE_OFN17_SE;
   input REF_CLK_M__L14_N11;
   input REF_CLK_M__L14_N4;

   // Internal wires
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N11;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire \add_26/carry[4] ;
   wire \add_26/carry[3] ;
   wire \add_26/carry[2] ;
   wire n19;
   wire n20;
   wire n30;
   wire [4:0] wbin;
   wire [3:0] wbin_next;
   wire [4:0] gray_next;

   AOI22X1M U25 (.Y(n25), 
	.B1(n30), 
	.B0(wbin[4]), 
	.A1(n26), 
	.A0(N7));
   AOI22X1M U32 (.Y(n29), 
	.B1(n30), 
	.B0(wbin[1]), 
	.A1(n26), 
	.A0(N4));
   SDFFRQX2M \w_addr_reg[3]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[3]), 
	.D(wbin_next[3]), 
	.CK(W_CLK));
   SDFFRQX2M \w_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[0]), 
	.D(wbin_next[0]), 
	.CK(W_CLK));
   SDFFRQX2M \w_addr_reg[1]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[1]), 
	.D(n20), 
	.CK(W_CLK));
   SDFFRQX2M \wbin_reg[4]  (.SI(wbin[3]), 
	.SE(FE_OFN18_SE), 
	.RN(W_RST), 
	.Q(wbin[4]), 
	.D(n19), 
	.CK(REF_CLK_M__L14_N11));
   SDFFRQX2M \wbin_reg[2]  (.SI(wbin[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wbin[2]), 
	.D(wbin_next[2]), 
	.CK(W_CLK));
   SDFFRQX2M \wbin_reg[3]  (.SI(wbin[2]), 
	.SE(FE_OFN20_SE), 
	.RN(W_RST), 
	.Q(wbin[3]), 
	.D(wbin_next[3]), 
	.CK(W_CLK));
   SDFFRQX2M \wbin_reg[1]  (.SI(wbin[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wbin[1]), 
	.D(n20), 
	.CK(W_CLK));
   SDFFRQX2M \wbin_reg[0]  (.SI(w_ptr[4]), 
	.SE(FE_OFN18_SE), 
	.RN(W_RST), 
	.Q(wbin[0]), 
	.D(wbin_next[0]), 
	.CK(REF_CLK_M__L14_N11));
   SDFFRQX2M wfull_reg (.SI(wbin[4]), 
	.SE(FE_OFN18_SE), 
	.RN(W_RST), 
	.Q(wfull), 
	.D(N11), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[0]  (.SI(w_addr[3]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_ptr[0]), 
	.D(gray_next[0]), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[2]  (.SI(w_ptr[1]), 
	.SE(FE_OFN18_SE), 
	.RN(W_RST), 
	.Q(w_ptr[2]), 
	.D(gray_next[2]), 
	.CK(REF_CLK_M__L14_N11));
   SDFFRQX2M \w_ptr_reg[4]  (.SI(w_ptr[3]), 
	.SE(FE_OFN20_SE), 
	.RN(W_RST), 
	.Q(w_ptr[4]), 
	.D(n19), 
	.CK(REF_CLK_M__L14_N11));
   SDFFRQX2M \w_ptr_reg[3]  (.SI(w_ptr[2]), 
	.SE(FE_OFN18_SE), 
	.RN(W_RST), 
	.Q(w_ptr[3]), 
	.D(gray_next[3]), 
	.CK(REF_CLK_M__L14_N11));
   SDFFRQX2M \w_ptr_reg[1]  (.SI(w_ptr[0]), 
	.SE(FE_OFN17_SE), 
	.RN(W_RST), 
	.Q(w_ptr[1]), 
	.D(gray_next[1]), 
	.CK(W_CLK));
   SDFFRQX2M \w_addr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[2]), 
	.D(wbin_next[2]), 
	.CK(REF_CLK_M__L14_N4));
   CLKXOR2X2M U21 (.Y(gray_next[0]), 
	.B(n20), 
	.A(wbin_next[0]));
   XNOR2X2M U22 (.Y(gray_next[1]), 
	.B(wbin_next[2]), 
	.A(n29));
   XNOR2X2M U23 (.Y(gray_next[3]), 
	.B(wbin_next[3]), 
	.A(n25));
   CLKINVX2M U24 (.Y(n30), 
	.A(n26));
   INVX2M U26 (.Y(n20), 
	.A(n29));
   INVX2M U27 (.Y(n19), 
	.A(n25));
   CLKXOR2X2M U28 (.Y(gray_next[2]), 
	.B(wbin_next[3]), 
	.A(wbin_next[2]));
   NOR2BX2M U29 (.Y(n26), 
	.B(wfull), 
	.AN(W_INC));
   AO22X1M U30 (.Y(wbin_next[2]), 
	.B1(n30), 
	.B0(wbin[2]), 
	.A1(n26), 
	.A0(N5));
   NOR4X1M U31 (.Y(N11), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   CLKXOR2X2M U33 (.Y(n24), 
	.B(gray_next[2]), 
	.A(wq_rptr[2]));
   XNOR2X2M U34 (.Y(n22), 
	.B(n19), 
	.A(wq_rptr[4]));
   XNOR2X2M U35 (.Y(n23), 
	.B(wq_rptr[3]), 
	.A(gray_next[3]));
   AO2B2X2M U36 (.Y(wbin_next[0]), 
	.B1(n30), 
	.B0(wbin[0]), 
	.A1N(wbin[0]), 
	.A0(n26));
   NAND2X2M U37 (.Y(n21), 
	.B(n28), 
	.A(n27));
   XNOR2X2M U38 (.Y(n28), 
	.B(wq_rptr[1]), 
	.A(gray_next[1]));
   XNOR2X2M U39 (.Y(n27), 
	.B(wq_rptr[0]), 
	.A(gray_next[0]));
   AO22X1M U40 (.Y(wbin_next[3]), 
	.B1(n30), 
	.B0(wbin[3]), 
	.A1(n26), 
	.A0(N6));
   ADDHX1M U41 (.S(N4), 
	.CO(\add_26/carry[2] ), 
	.B(wbin[0]), 
	.A(wbin[1]));
   ADDHX1M U42 (.S(N5), 
	.CO(\add_26/carry[3] ), 
	.B(\add_26/carry[2] ), 
	.A(wbin[2]));
   ADDHX1M U43 (.S(N6), 
	.CO(\add_26/carry[4] ), 
	.B(\add_26/carry[3] ), 
	.A(wbin[3]));
   CLKXOR2X2M U44 (.Y(N7), 
	.B(wbin[4]), 
	.A(\add_26/carry[4] ));
endmodule

module FIFO_RD_NUM_ADDR_BITS4_test_1 (
	R_CLK, 
	R_RST, 
	R_INC, 
	rq_wptr, 
	rempty, 
	r_addr, 
	r_ptr, 
	test_se, 
	FE_OFN17_SE, 
	tx_rx_clk_M__L4_N1);
   input R_CLK;
   input R_RST;
   input R_INC;
   input [4:0] rq_wptr;
   output rempty;
   output [3:0] r_addr;
   output [4:0] r_ptr;
   input test_se;
   input FE_OFN17_SE;
   input tx_rx_clk_M__L4_N1;

   // Internal wires
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire \rbin_next[3] ;
   wire N8;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire \add_22/carry[4] ;
   wire \add_22/carry[3] ;
   wire \add_22/carry[2] ;
   wire n19;
   wire n20;
   wire n21;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire [4:0] rbin;
   wire [4:0] gray_next;

   AOI22X1M U24 (.Y(n24), 
	.B1(n34), 
	.B0(rbin[2]), 
	.A1(n23), 
	.A0(N5));
   AOI22X1M U26 (.Y(n22), 
	.B1(n34), 
	.B0(rbin[0]), 
	.A1(n23), 
	.A0(N3));
   AOI22X1M U27 (.Y(n25), 
	.B1(n34), 
	.B0(rbin[1]), 
	.A1(n23), 
	.A0(N4));
   SDFFRQX2M \rbin_reg[4]  (.SI(rbin[3]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rbin[4]), 
	.D(gray_next[4]), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \rbin_reg[3]  (.SI(rbin[2]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(rbin[3]), 
	.D(\rbin_next[3] ), 
	.CK(R_CLK));
   SDFFRQX2M \rbin_reg[2]  (.SI(rbin[1]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(rbin[2]), 
	.D(n32), 
	.CK(R_CLK));
   SDFFRQX2M \r_addr_reg[1]  (.SI(r_addr[0]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_addr[1]), 
	.D(n33), 
	.CK(R_CLK));
   SDFFRQX2M \r_addr_reg[0]  (.SI(rq_wptr[4]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_addr[0]), 
	.D(n31), 
	.CK(R_CLK));
   SDFFRQX2M \rbin_reg[1]  (.SI(rbin[0]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(rbin[1]), 
	.D(n33), 
	.CK(R_CLK));
   SDFFRQX2M \r_addr_reg[3]  (.SI(r_addr[2]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_addr[3]), 
	.D(\rbin_next[3] ), 
	.CK(R_CLK));
   SDFFRQX2M \r_addr_reg[2]  (.SI(r_addr[1]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_addr[2]), 
	.D(n32), 
	.CK(R_CLK));
   SDFFRQX2M \rbin_reg[0]  (.SI(r_ptr[4]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rbin[0]), 
	.D(n31), 
	.CK(R_CLK));
   SDFFSQX2M rempty_reg (.SN(R_RST), 
	.SI(rbin[4]), 
	.SE(test_se), 
	.Q(rempty), 
	.D(N8), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \r_ptr_reg[0]  (.SI(r_addr[3]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_ptr[0]), 
	.D(gray_next[0]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[2]  (.SI(r_ptr[1]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(r_ptr[2]), 
	.D(gray_next[2]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[4]  (.SI(r_ptr[3]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(r_ptr[4]), 
	.D(gray_next[4]), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \r_ptr_reg[3]  (.SI(r_ptr[2]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_ptr[3]), 
	.D(gray_next[3]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[1]  (.SI(r_ptr[0]), 
	.SE(FE_OFN17_SE), 
	.RN(R_RST), 
	.Q(r_ptr[1]), 
	.D(gray_next[1]), 
	.CK(R_CLK));
   NOR2BX2M U5 (.Y(n19), 
	.B(gray_next[0]), 
	.AN(rq_wptr[0]));
   NOR2BX2M U19 (.Y(n20), 
	.B(rq_wptr[0]), 
	.AN(gray_next[0]));
   XNOR2X2M U23 (.Y(gray_next[1]), 
	.B(n25), 
	.A(n32));
   XNOR2X2M U25 (.Y(gray_next[0]), 
	.B(n22), 
	.A(n33));
   CLKINVX2M U28 (.Y(n34), 
	.A(n23));
   INVX2M U29 (.Y(n32), 
	.A(n24));
   INVX2M U30 (.Y(n33), 
	.A(n25));
   XNOR2X2M U31 (.Y(gray_next[2]), 
	.B(n24), 
	.A(\rbin_next[3] ));
   CLKXOR2X2M U32 (.Y(gray_next[3]), 
	.B(gray_next[4]), 
	.A(\rbin_next[3] ));
   INVX2M U33 (.Y(n31), 
	.A(n22));
   INVX2M U34 (.Y(N3), 
	.A(rbin[0]));
   NOR2BX2M U35 (.Y(n23), 
	.B(rempty), 
	.AN(R_INC));
   AO22X1M U36 (.Y(\rbin_next[3] ), 
	.B1(n34), 
	.B0(rbin[3]), 
	.A1(n23), 
	.A0(N6));
   AO22X1M U37 (.Y(gray_next[4]), 
	.B1(n34), 
	.B0(rbin[4]), 
	.A1(n23), 
	.A0(N7));
   ADDHX1M U38 (.S(N4), 
	.CO(\add_22/carry[2] ), 
	.B(rbin[0]), 
	.A(rbin[1]));
   ADDHX1M U39 (.S(N5), 
	.CO(\add_22/carry[3] ), 
	.B(\add_22/carry[2] ), 
	.A(rbin[2]));
   ADDHX1M U40 (.S(N6), 
	.CO(\add_22/carry[4] ), 
	.B(\add_22/carry[3] ), 
	.A(rbin[3]));
   CLKXOR2X2M U41 (.Y(N7), 
	.B(rbin[4]), 
	.A(\add_22/carry[4] ));
   CLKXOR2X2M U42 (.Y(n30), 
	.B(gray_next[2]), 
	.A(rq_wptr[2]));
   OAI2B2X1M U43 (.Y(n26), 
	.B1(n19), 
	.B0(rq_wptr[1]), 
	.A1N(gray_next[1]), 
	.A0(n19));
   OAI2B2X1M U44 (.Y(n21), 
	.B1(n20), 
	.B0(gray_next[1]), 
	.A1N(rq_wptr[1]), 
	.A0(n20));
   CLKNAND2X2M U45 (.Y(n29), 
	.B(n21), 
	.A(n26));
   CLKXOR2X2M U46 (.Y(n28), 
	.B(gray_next[3]), 
	.A(rq_wptr[3]));
   CLKXOR2X2M U47 (.Y(n27), 
	.B(gray_next[4]), 
	.A(rq_wptr[4]));
   NOR4X1M U48 (.Y(N8), 
	.D(n27), 
	.C(n28), 
	.B(n29), 
	.A(n30));
endmodule

module DF_SYNC_NUM_ADDR_BITS4_test_1 (
	clk, 
	rst_n, 
	unsynchronized_in, 
	synchronized_out, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [4:0] unsynchronized_in;
   output [4:0] synchronized_out;
   input test_si;
   input test_se;

   // Internal wires
   wire [4:0] second_stage;

   SDFFRQX2M \synchronized_out_reg[4]  (.SI(synchronized_out[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[4]), 
	.D(second_stage[4]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[3]  (.SI(synchronized_out[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[3]), 
	.D(second_stage[3]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[2]  (.SI(synchronized_out[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[2]), 
	.D(second_stage[2]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[0]  (.SI(second_stage[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[0]), 
	.D(second_stage[0]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[1]  (.SI(synchronized_out[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[1]), 
	.D(second_stage[1]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[4]  (.SI(second_stage[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[4]), 
	.D(unsynchronized_in[4]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[3]  (.SI(second_stage[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[3]), 
	.D(unsynchronized_in[3]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[2]  (.SI(second_stage[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[2]), 
	.D(unsynchronized_in[2]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[1]  (.SI(second_stage[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[1]), 
	.D(unsynchronized_in[1]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[0]), 
	.D(unsynchronized_in[0]), 
	.CK(clk));
endmodule

module DF_SYNC_NUM_ADDR_BITS4_test_0 (
	clk, 
	rst_n, 
	unsynchronized_in, 
	synchronized_out, 
	test_si, 
	test_se, 
	FE_OFN17_SE);
   input clk;
   input rst_n;
   input [4:0] unsynchronized_in;
   output [4:0] synchronized_out;
   input test_si;
   input test_se;
   input FE_OFN17_SE;

   // Internal wires
   wire [4:0] second_stage;

   SDFFRQX2M \synchronized_out_reg[4]  (.SI(synchronized_out[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[4]), 
	.D(second_stage[4]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[2]  (.SI(synchronized_out[1]), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(synchronized_out[2]), 
	.D(second_stage[2]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[3]  (.SI(synchronized_out[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(synchronized_out[3]), 
	.D(second_stage[3]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[1]  (.SI(synchronized_out[0]), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(synchronized_out[1]), 
	.D(second_stage[1]), 
	.CK(clk));
   SDFFRQX2M \synchronized_out_reg[0]  (.SI(second_stage[4]), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(synchronized_out[0]), 
	.D(second_stage[0]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[4]  (.SI(second_stage[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[4]), 
	.D(unsynchronized_in[4]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[3]  (.SI(second_stage[2]), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(second_stage[3]), 
	.D(unsynchronized_in[3]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[2]  (.SI(second_stage[1]), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(second_stage[2]), 
	.D(unsynchronized_in[2]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[1]  (.SI(second_stage[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(second_stage[1]), 
	.D(unsynchronized_in[1]), 
	.CK(clk));
   SDFFRQX2M \second_stage_reg[0]  (.SI(test_si), 
	.SE(FE_OFN17_SE), 
	.RN(rst_n), 
	.Q(second_stage[0]), 
	.D(unsynchronized_in[0]), 
	.CK(clk));
endmodule

module fifo_mem_cntrl_DATA_WIDTH8_NUM_ADDR_BITS4_test_1 (
	W_CLK, 
	W_INC, 
	wfull, 
	w_addr, 
	wdata, 
	r_addr, 
	rdata, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN15_SE, 
	FE_OFN16_SE, 
	FE_OFN17_SE, 
	REF_CLK_M__L14_N2, 
	REF_CLK_M__L14_N3, 
	REF_CLK_M__L14_N4, 
	REF_CLK_M__L14_N5, 
	REF_CLK_M__L14_N6, 
	REF_CLK_M__L14_N7, 
	REF_CLK_M__L14_N8);
   input W_CLK;
   input W_INC;
   input wfull;
   input [3:0] w_addr;
   input [7:0] wdata;
   input [3:0] r_addr;
   output [7:0] rdata;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN15_SE;
   input FE_OFN16_SE;
   input FE_OFN17_SE;
   input REF_CLK_M__L14_N2;
   input REF_CLK_M__L14_N3;
   input REF_CLK_M__L14_N4;
   input REF_CLK_M__L14_N5;
   input REF_CLK_M__L14_N6;
   input REF_CLK_M__L14_N7;
   input REF_CLK_M__L14_N8;

   // Internal wires
   wire FE_OFN21_SE;
   wire FE_OFN8_n379;
   wire FE_OFN7_n377;
   wire FE_OFN6_n380;
   wire FE_OFN5_n378;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire \mem[15][7] ;
   wire \mem[15][6] ;
   wire \mem[15][5] ;
   wire \mem[15][4] ;
   wire \mem[15][3] ;
   wire \mem[15][2] ;
   wire \mem[15][1] ;
   wire \mem[15][0] ;
   wire \mem[14][7] ;
   wire \mem[14][6] ;
   wire \mem[14][5] ;
   wire \mem[14][4] ;
   wire \mem[14][3] ;
   wire \mem[14][2] ;
   wire \mem[14][1] ;
   wire \mem[14][0] ;
   wire \mem[13][7] ;
   wire \mem[13][6] ;
   wire \mem[13][5] ;
   wire \mem[13][4] ;
   wire \mem[13][3] ;
   wire \mem[13][2] ;
   wire \mem[13][1] ;
   wire \mem[13][0] ;
   wire \mem[12][7] ;
   wire \mem[12][6] ;
   wire \mem[12][5] ;
   wire \mem[12][4] ;
   wire \mem[12][3] ;
   wire \mem[12][2] ;
   wire \mem[12][1] ;
   wire \mem[12][0] ;
   wire \mem[11][7] ;
   wire \mem[11][6] ;
   wire \mem[11][5] ;
   wire \mem[11][4] ;
   wire \mem[11][3] ;
   wire \mem[11][2] ;
   wire \mem[11][1] ;
   wire \mem[11][0] ;
   wire \mem[10][7] ;
   wire \mem[10][6] ;
   wire \mem[10][5] ;
   wire \mem[10][4] ;
   wire \mem[10][3] ;
   wire \mem[10][2] ;
   wire \mem[10][1] ;
   wire \mem[10][0] ;
   wire \mem[9][7] ;
   wire \mem[9][6] ;
   wire \mem[9][5] ;
   wire \mem[9][4] ;
   wire \mem[9][3] ;
   wire \mem[9][2] ;
   wire \mem[9][1] ;
   wire \mem[9][0] ;
   wire \mem[8][7] ;
   wire \mem[8][6] ;
   wire \mem[8][5] ;
   wire \mem[8][4] ;
   wire \mem[8][3] ;
   wire \mem[8][2] ;
   wire \mem[8][1] ;
   wire \mem[8][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][4] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n148;
   wire n151;
   wire n152;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n164;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n147;
   wire n149;
   wire n150;
   wire n153;
   wire n161;
   wire n162;
   wire n163;
   wire n165;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n425;
   wire n427;
   wire n429;
   wire n431;
   wire n441;
   wire n443;
   wire n445;
   wire n447;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n1;

   assign N9 = r_addr[0] ;
   assign N10 = r_addr[1] ;
   assign N11 = r_addr[2] ;
   assign N12 = r_addr[3] ;
   assign test_so2 = \mem[15][7]  ;

   BUFX4M FE_OFC21_SE (.Y(FE_OFN21_SE), 
	.A(FE_OFN17_SE));
   BUFX2M FE_OFC8_n379 (.Y(FE_OFN8_n379), 
	.A(n379));
   BUFX4M FE_OFC7_n377 (.Y(FE_OFN7_n377), 
	.A(n377));
   BUFX4M FE_OFC6_n380 (.Y(FE_OFN6_n380), 
	.A(n380));
   BUFX4M FE_OFC5_n378 (.Y(FE_OFN5_n378), 
	.A(n378));
   SDFFQX2M \mem_reg[15][7]  (.SI(\mem[15][6] ), 
	.SE(FE_OFN16_SE), 
	.Q(\mem[15][7] ), 
	.D(n293), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[15][6]  (.SI(\mem[15][5] ), 
	.SE(FE_OFN16_SE), 
	.Q(\mem[15][6] ), 
	.D(n292), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[15][5]  (.SI(\mem[15][4] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[15][5] ), 
	.D(n291), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[15][4]  (.SI(\mem[15][3] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[15][4] ), 
	.D(n290), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[15][3]  (.SI(\mem[15][2] ), 
	.SE(test_se), 
	.Q(\mem[15][3] ), 
	.D(n289), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[15][2]  (.SI(\mem[15][1] ), 
	.SE(test_se), 
	.Q(\mem[15][2] ), 
	.D(n288), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[15][1]  (.SI(\mem[15][0] ), 
	.SE(test_se), 
	.Q(\mem[15][1] ), 
	.D(n287), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[15][0]  (.SI(\mem[14][7] ), 
	.SE(test_se), 
	.Q(\mem[15][0] ), 
	.D(n286), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[13][7]  (.SI(\mem[13][6] ), 
	.SE(FE_OFN15_SE), 
	.Q(\mem[13][7] ), 
	.D(n277), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][6]  (.SI(\mem[13][5] ), 
	.SE(FE_OFN15_SE), 
	.Q(\mem[13][6] ), 
	.D(n276), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][5]  (.SI(\mem[13][4] ), 
	.SE(FE_OFN15_SE), 
	.Q(\mem[13][5] ), 
	.D(n275), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][4]  (.SI(\mem[13][3] ), 
	.SE(FE_OFN15_SE), 
	.Q(\mem[13][4] ), 
	.D(n274), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][3]  (.SI(\mem[13][2] ), 
	.SE(test_se), 
	.Q(\mem[13][3] ), 
	.D(n273), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][2]  (.SI(\mem[13][1] ), 
	.SE(FE_OFN15_SE), 
	.Q(\mem[13][2] ), 
	.D(n272), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][1]  (.SI(\mem[13][0] ), 
	.SE(test_se), 
	.Q(\mem[13][1] ), 
	.D(n271), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[13][0]  (.SI(\mem[12][7] ), 
	.SE(test_se), 
	.Q(\mem[13][0] ), 
	.D(n270), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[11][7]  (.SI(\mem[11][6] ), 
	.SE(test_se), 
	.Q(\mem[11][7] ), 
	.D(n261), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[11][6]  (.SI(\mem[11][5] ), 
	.SE(test_se), 
	.Q(\mem[11][6] ), 
	.D(n260), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[11][5]  (.SI(\mem[11][4] ), 
	.SE(test_se), 
	.Q(\mem[11][5] ), 
	.D(n259), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[11][4]  (.SI(\mem[11][3] ), 
	.SE(test_se), 
	.Q(\mem[11][4] ), 
	.D(n258), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[11][3]  (.SI(\mem[11][2] ), 
	.SE(test_se), 
	.Q(\mem[11][3] ), 
	.D(n257), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[11][2]  (.SI(\mem[11][1] ), 
	.SE(test_se), 
	.Q(\mem[11][2] ), 
	.D(n256), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[11][1]  (.SI(\mem[11][0] ), 
	.SE(test_se), 
	.Q(\mem[11][1] ), 
	.D(n255), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[11][0]  (.SI(\mem[10][7] ), 
	.SE(test_se), 
	.Q(\mem[11][0] ), 
	.D(n254), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[9][7]  (.SI(\mem[9][6] ), 
	.SE(test_se), 
	.Q(\mem[9][7] ), 
	.D(n245), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][6]  (.SI(\mem[9][5] ), 
	.SE(test_se), 
	.Q(\mem[9][6] ), 
	.D(n244), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][5]  (.SI(\mem[9][4] ), 
	.SE(test_se), 
	.Q(\mem[9][5] ), 
	.D(n243), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][4]  (.SI(\mem[9][3] ), 
	.SE(test_se), 
	.Q(\mem[9][4] ), 
	.D(n242), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][3]  (.SI(\mem[9][2] ), 
	.SE(test_se), 
	.Q(\mem[9][3] ), 
	.D(n241), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][2]  (.SI(\mem[9][1] ), 
	.SE(test_se), 
	.Q(\mem[9][2] ), 
	.D(n240), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[9][1]  (.SI(\mem[9][0] ), 
	.SE(test_se), 
	.Q(\mem[9][1] ), 
	.D(n239), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[9][0]  (.SI(\mem[8][7] ), 
	.SE(test_se), 
	.Q(\mem[9][0] ), 
	.D(n238), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(test_se), 
	.Q(\mem[7][7] ), 
	.D(n229), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(test_se), 
	.Q(\mem[7][6] ), 
	.D(n228), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(test_se), 
	.Q(\mem[7][5] ), 
	.D(n227), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[7][4] ), 
	.D(n226), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(test_se), 
	.Q(\mem[7][3] ), 
	.D(n225), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(test_se), 
	.Q(\mem[7][2] ), 
	.D(n224), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[7][1] ), 
	.D(n223), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[7][0] ), 
	.D(n222), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][7] ), 
	.D(n213), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][6] ), 
	.D(n212), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][5] ), 
	.D(n211), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][4] ), 
	.D(n210), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][3] ), 
	.D(n209), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][2] ), 
	.D(n208), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][1] ), 
	.D(n207), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[5][0] ), 
	.D(n206), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][7] ), 
	.D(n197), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][6] ), 
	.D(n196), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][5] ), 
	.D(n195), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][4] ), 
	.D(n194), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[3][3] ), 
	.D(n193), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][2] ), 
	.D(n192), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[3][1] ), 
	.D(n191), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[3][0] ), 
	.D(n190), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][7] ), 
	.D(n181), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][6] ), 
	.D(n180), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[1][5]  (.SI(\mem[1][4] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][5] ), 
	.D(n179), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][4] ), 
	.D(n178), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][3] ), 
	.D(n177), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][2] ), 
	.D(n176), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][1] ), 
	.D(n175), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[1][0] ), 
	.D(n174), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[14][7]  (.SI(\mem[14][6] ), 
	.SE(FE_OFN16_SE), 
	.Q(\mem[14][7] ), 
	.D(n285), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][6]  (.SI(\mem[14][5] ), 
	.SE(FE_OFN16_SE), 
	.Q(\mem[14][6] ), 
	.D(n284), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][5]  (.SI(\mem[14][4] ), 
	.SE(FE_OFN16_SE), 
	.Q(\mem[14][5] ), 
	.D(n283), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][4]  (.SI(\mem[14][3] ), 
	.SE(test_se), 
	.Q(\mem[14][4] ), 
	.D(n282), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][3]  (.SI(\mem[14][2] ), 
	.SE(test_se), 
	.Q(\mem[14][3] ), 
	.D(n281), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[14][2]  (.SI(\mem[14][1] ), 
	.SE(test_se), 
	.Q(\mem[14][2] ), 
	.D(n280), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][1]  (.SI(\mem[14][0] ), 
	.SE(test_se), 
	.Q(\mem[14][1] ), 
	.D(n279), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[14][0]  (.SI(\mem[13][7] ), 
	.SE(test_se), 
	.Q(\mem[14][0] ), 
	.D(n278), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[12][7]  (.SI(\mem[12][6] ), 
	.SE(test_se), 
	.Q(\mem[12][7] ), 
	.D(n269), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[12][6]  (.SI(\mem[12][5] ), 
	.SE(test_se), 
	.Q(\mem[12][6] ), 
	.D(n268), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[12][5]  (.SI(\mem[12][4] ), 
	.SE(test_se), 
	.Q(\mem[12][5] ), 
	.D(n267), 
	.CK(REF_CLK_M__L14_N4));
   SDFFQX2M \mem_reg[12][4]  (.SI(\mem[12][3] ), 
	.SE(test_se), 
	.Q(\mem[12][4] ), 
	.D(n266), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[12][3]  (.SI(\mem[12][2] ), 
	.SE(test_se), 
	.Q(\mem[12][3] ), 
	.D(n265), 
	.CK(REF_CLK_M__L14_N5));
   SDFFQX2M \mem_reg[12][2]  (.SI(\mem[12][1] ), 
	.SE(test_se), 
	.Q(\mem[12][2] ), 
	.D(n264), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[12][1]  (.SI(\mem[12][0] ), 
	.SE(test_se), 
	.Q(\mem[12][1] ), 
	.D(n263), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[12][0]  (.SI(\mem[11][7] ), 
	.SE(test_se), 
	.Q(\mem[12][0] ), 
	.D(n262), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[10][7]  (.SI(\mem[10][6] ), 
	.SE(test_se), 
	.Q(\mem[10][7] ), 
	.D(n253), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][6]  (.SI(\mem[10][5] ), 
	.SE(test_se), 
	.Q(\mem[10][6] ), 
	.D(n252), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][5]  (.SI(\mem[10][4] ), 
	.SE(test_se), 
	.Q(\mem[10][5] ), 
	.D(n251), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][4]  (.SI(\mem[10][3] ), 
	.SE(test_se), 
	.Q(\mem[10][4] ), 
	.D(n250), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][3]  (.SI(\mem[10][2] ), 
	.SE(test_se), 
	.Q(\mem[10][3] ), 
	.D(n249), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][2]  (.SI(\mem[10][1] ), 
	.SE(test_se), 
	.Q(\mem[10][2] ), 
	.D(n248), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[10][1]  (.SI(\mem[10][0] ), 
	.SE(test_se), 
	.Q(\mem[10][1] ), 
	.D(n247), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[10][0]  (.SI(\mem[9][7] ), 
	.SE(test_se), 
	.Q(\mem[10][0] ), 
	.D(n246), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[8][7]  (.SI(\mem[8][6] ), 
	.SE(test_se), 
	.Q(\mem[8][7] ), 
	.D(n237), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[8][6]  (.SI(\mem[8][5] ), 
	.SE(test_se), 
	.Q(\mem[8][6] ), 
	.D(n236), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[8][5]  (.SI(\mem[8][4] ), 
	.SE(test_se), 
	.Q(\mem[8][5] ), 
	.D(n235), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[8][4]  (.SI(\mem[8][3] ), 
	.SE(test_se), 
	.Q(\mem[8][4] ), 
	.D(n234), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[8][3]  (.SI(test_si1), 
	.SE(test_se), 
	.Q(\mem[8][3] ), 
	.D(n233), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[8][2]  (.SI(\mem[8][1] ), 
	.SE(test_se), 
	.Q(\mem[8][2] ), 
	.D(n232), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[8][1]  (.SI(\mem[8][0] ), 
	.SE(test_se), 
	.Q(\mem[8][1] ), 
	.D(n231), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[8][0]  (.SI(\mem[7][7] ), 
	.SE(test_se), 
	.Q(\mem[8][0] ), 
	.D(n230), 
	.CK(REF_CLK_M__L14_N8));
   SDFFQX2M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][7] ), 
	.D(n221), 
	.CK(REF_CLK_M__L14_N7));
   SDFFQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][6] ), 
	.D(n220), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][5] ), 
	.D(n219), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][4] ), 
	.D(n218), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][3] ), 
	.D(n217), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][2] ), 
	.D(n216), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][1] ), 
	.D(n215), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[6][0] ), 
	.D(n214), 
	.CK(REF_CLK_M__L14_N6));
   SDFFQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][7] ), 
	.D(n205), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[4][6] ), 
	.D(n204), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][5] ), 
	.D(n203), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][4] ), 
	.D(n202), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][3] ), 
	.D(n201), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][2] ), 
	.D(n200), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][1] ), 
	.D(n199), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[4][0] ), 
	.D(n198), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][7] ), 
	.D(n189), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][6] ), 
	.D(n188), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][5] ), 
	.D(n187), 
	.CK(REF_CLK_M__L14_N2));
   SDFFQX2M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][4] ), 
	.D(n186), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[2][3] ), 
	.D(n185), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][2] ), 
	.D(n184), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[2][1]  (.SI(\mem[2][0] ), 
	.SE(FE_OFN21_SE), 
	.Q(\mem[2][1] ), 
	.D(n183), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[2][0] ), 
	.D(n182), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][7] ), 
	.D(n173), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][6] ), 
	.D(n172), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][5] ), 
	.D(n171), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][4] ), 
	.D(n170), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][3] ), 
	.D(n169), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][2] ), 
	.D(n168), 
	.CK(REF_CLK_M__L14_N3));
   SDFFQX2M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][1] ), 
	.D(n167), 
	.CK(W_CLK));
   SDFFQX2M \mem_reg[0][0]  (.SI(wfull), 
	.SE(FE_OFN17_SE), 
	.Q(\mem[0][0] ), 
	.D(n166), 
	.CK(W_CLK));
   NOR2X2M U130 (.Y(n377), 
	.B(n391), 
	.A(n388));
   NOR2X2M U131 (.Y(n378), 
	.B(N9), 
	.A(n388));
   NOR2X2M U132 (.Y(n379), 
	.B(N10), 
	.A(n391));
   NOR2X2M U133 (.Y(n380), 
	.B(N10), 
	.A(N9));
   CLKNAND2X2M U134 (.Y(n381), 
	.B(n389), 
	.A(N11));
   CLKNAND2X2M U135 (.Y(n368), 
	.B(n390), 
	.A(N12));
   CLKINVX1M U136 (.Y(n390), 
	.A(N11));
   CLKNAND2X2M U137 (.Y(n371), 
	.B(N11), 
	.A(N12));
   CLKNAND2X2M U138 (.Y(n374), 
	.B(n389), 
	.A(n390));
   CLKINVX1M U139 (.Y(n389), 
	.A(N12));
   AND2X2M U140 (.Y(n143), 
	.B(w_addr[0]), 
	.A(n152));
   AND2X2M U141 (.Y(n158), 
	.B(w_addr[0]), 
	.A(n164));
   NOR2X2M U142 (.Y(n145), 
	.B(w_addr[2]), 
	.A(n457));
   NOR2X2M U143 (.Y(n140), 
	.B(w_addr[2]), 
	.A(w_addr[1]));
   AND2X2M U144 (.Y(n151), 
	.B(w_addr[1]), 
	.A(w_addr[2]));
   AND2X2M U145 (.Y(n148), 
	.B(n457), 
	.A(w_addr[2]));
   CLKINVX2M U170 (.Y(n447), 
	.A(n129));
   CLKINVX2M U172 (.Y(n445), 
	.A(n130));
   CLKINVX2M U174 (.Y(n443), 
	.A(n131));
   CLKINVX2M U176 (.Y(n441), 
	.A(n132));
   CLKINVX2M U178 (.Y(n431), 
	.A(n135));
   CLKINVX2M U180 (.Y(n429), 
	.A(n133));
   CLKINVX2M U182 (.Y(n427), 
	.A(n136));
   CLKINVX2M U184 (.Y(n425), 
	.A(n134));
   AND2X2M U188 (.Y(n141), 
	.B(n456), 
	.A(n152));
   AND2X2M U189 (.Y(n156), 
	.B(n456), 
	.A(n164));
   NAND2X2M U195 (.Y(n139), 
	.B(n141), 
	.A(n140));
   NAND2X2M U196 (.Y(n144), 
	.B(n141), 
	.A(n145));
   NAND2X2M U197 (.Y(n146), 
	.B(n143), 
	.A(n145));
   NAND2X2M U198 (.Y(n142), 
	.B(n140), 
	.A(n143));
   NAND2X2M U199 (.Y(n155), 
	.B(n140), 
	.A(n156));
   NAND2X2M U200 (.Y(n157), 
	.B(n140), 
	.A(n158));
   NAND2X2M U201 (.Y(n159), 
	.B(n145), 
	.A(n156));
   NAND2X2M U202 (.Y(n160), 
	.B(n145), 
	.A(n158));
   AND2X2M U203 (.Y(n129), 
	.B(n141), 
	.A(n148));
   AND2X2M U204 (.Y(n130), 
	.B(n143), 
	.A(n148));
   AND2X2M U205 (.Y(n131), 
	.B(n141), 
	.A(n151));
   AND2X2M U206 (.Y(n132), 
	.B(n143), 
	.A(n151));
   AND2X2M U207 (.Y(n133), 
	.B(n148), 
	.A(n158));
   AND2X2M U208 (.Y(n134), 
	.B(n151), 
	.A(n158));
   AND2X2M U209 (.Y(n135), 
	.B(n148), 
	.A(n156));
   AND2X2M U210 (.Y(n136), 
	.B(n151), 
	.A(n156));
   NOR2BX2M U228 (.Y(n154), 
	.B(wfull), 
	.AN(W_INC));
   NOR2BX2M U229 (.Y(n152), 
	.B(w_addr[3]), 
	.AN(n154));
   OAI2BB2X1M U230 (.Y(n175), 
	.B1(n142), 
	.B0(n464), 
	.A1N(n142), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U231 (.Y(n176), 
	.B1(n142), 
	.B0(n463), 
	.A1N(n142), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U232 (.Y(n177), 
	.B1(n142), 
	.B0(n462), 
	.A1N(n142), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U233 (.Y(n178), 
	.B1(n142), 
	.B0(n461), 
	.A1N(n142), 
	.A0N(\mem[1][4] ));
   OAI2BB2X1M U234 (.Y(n179), 
	.B1(n142), 
	.B0(n460), 
	.A1N(n142), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U235 (.Y(n180), 
	.B1(n142), 
	.B0(n459), 
	.A1N(n142), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U236 (.Y(n181), 
	.B1(n142), 
	.B0(n458), 
	.A1N(n142), 
	.A0N(\mem[1][7] ));
   OAI2BB2X1M U237 (.Y(n183), 
	.B1(n144), 
	.B0(n464), 
	.A1N(n144), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U238 (.Y(n184), 
	.B1(n144), 
	.B0(n463), 
	.A1N(n144), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U239 (.Y(n185), 
	.B1(n144), 
	.B0(n462), 
	.A1N(n144), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U240 (.Y(n186), 
	.B1(n144), 
	.B0(n461), 
	.A1N(n144), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U241 (.Y(n187), 
	.B1(n144), 
	.B0(n460), 
	.A1N(n144), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U242 (.Y(n188), 
	.B1(n144), 
	.B0(n459), 
	.A1N(n144), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U243 (.Y(n189), 
	.B1(n144), 
	.B0(n458), 
	.A1N(n144), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U244 (.Y(n191), 
	.B1(n146), 
	.B0(n464), 
	.A1N(n146), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U245 (.Y(n192), 
	.B1(n146), 
	.B0(n463), 
	.A1N(n146), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U246 (.Y(n193), 
	.B1(n146), 
	.B0(n462), 
	.A1N(n146), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U247 (.Y(n194), 
	.B1(n146), 
	.B0(n461), 
	.A1N(n146), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U248 (.Y(n195), 
	.B1(n146), 
	.B0(n460), 
	.A1N(n146), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U249 (.Y(n196), 
	.B1(n146), 
	.B0(n459), 
	.A1N(n146), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U250 (.Y(n197), 
	.B1(n146), 
	.B0(n458), 
	.A1N(n146), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U251 (.Y(n198), 
	.B1(n447), 
	.B0(n465), 
	.A1N(n447), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U252 (.Y(n199), 
	.B1(n447), 
	.B0(n464), 
	.A1N(n447), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U253 (.Y(n200), 
	.B1(n447), 
	.B0(n463), 
	.A1N(n447), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U254 (.Y(n201), 
	.B1(n447), 
	.B0(n462), 
	.A1N(n447), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U255 (.Y(n202), 
	.B1(n447), 
	.B0(n461), 
	.A1N(n447), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U256 (.Y(n203), 
	.B1(n447), 
	.B0(n460), 
	.A1N(n447), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U257 (.Y(n204), 
	.B1(n447), 
	.B0(n459), 
	.A1N(n447), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U258 (.Y(n205), 
	.B1(n447), 
	.B0(n458), 
	.A1N(n447), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U259 (.Y(n206), 
	.B1(n445), 
	.B0(n465), 
	.A1N(n445), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U260 (.Y(n207), 
	.B1(n445), 
	.B0(n464), 
	.A1N(n445), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U261 (.Y(n208), 
	.B1(n445), 
	.B0(n463), 
	.A1N(n445), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U262 (.Y(n209), 
	.B1(n445), 
	.B0(n462), 
	.A1N(n445), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U263 (.Y(n210), 
	.B1(n445), 
	.B0(n461), 
	.A1N(n445), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U264 (.Y(n211), 
	.B1(n445), 
	.B0(n460), 
	.A1N(n445), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U265 (.Y(n212), 
	.B1(n445), 
	.B0(n459), 
	.A1N(n445), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U266 (.Y(n213), 
	.B1(n445), 
	.B0(n458), 
	.A1N(n445), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U267 (.Y(n214), 
	.B1(n443), 
	.B0(n465), 
	.A1N(n443), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U268 (.Y(n215), 
	.B1(n443), 
	.B0(n464), 
	.A1N(n443), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U269 (.Y(n216), 
	.B1(n443), 
	.B0(n463), 
	.A1N(n443), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U270 (.Y(n217), 
	.B1(n443), 
	.B0(n462), 
	.A1N(n443), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U271 (.Y(n218), 
	.B1(n443), 
	.B0(n461), 
	.A1N(n443), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U272 (.Y(n219), 
	.B1(n443), 
	.B0(n460), 
	.A1N(n443), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U273 (.Y(n220), 
	.B1(n443), 
	.B0(n459), 
	.A1N(n443), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U274 (.Y(n221), 
	.B1(n443), 
	.B0(n458), 
	.A1N(n443), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U275 (.Y(n222), 
	.B1(n441), 
	.B0(n465), 
	.A1N(n441), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U276 (.Y(n223), 
	.B1(n441), 
	.B0(n464), 
	.A1N(n441), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U277 (.Y(n224), 
	.B1(n441), 
	.B0(n463), 
	.A1N(n441), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U278 (.Y(n225), 
	.B1(n441), 
	.B0(n462), 
	.A1N(n441), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U279 (.Y(n226), 
	.B1(n441), 
	.B0(n461), 
	.A1N(n441), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U280 (.Y(n227), 
	.B1(n441), 
	.B0(n460), 
	.A1N(n441), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U281 (.Y(n228), 
	.B1(n441), 
	.B0(n459), 
	.A1N(n441), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U282 (.Y(n229), 
	.B1(n441), 
	.B0(n458), 
	.A1N(n441), 
	.A0N(\mem[7][7] ));
   OAI2BB2X1M U283 (.Y(n231), 
	.B1(n155), 
	.B0(n464), 
	.A1N(n155), 
	.A0N(\mem[8][1] ));
   OAI2BB2X1M U284 (.Y(n232), 
	.B1(n155), 
	.B0(n463), 
	.A1N(n155), 
	.A0N(test_so1));
   OAI2BB2X1M U285 (.Y(n233), 
	.B1(n155), 
	.B0(n462), 
	.A1N(n155), 
	.A0N(\mem[8][3] ));
   OAI2BB2X1M U286 (.Y(n234), 
	.B1(n155), 
	.B0(n461), 
	.A1N(n155), 
	.A0N(\mem[8][4] ));
   OAI2BB2X1M U287 (.Y(n235), 
	.B1(n155), 
	.B0(n460), 
	.A1N(n155), 
	.A0N(\mem[8][5] ));
   OAI2BB2X1M U288 (.Y(n236), 
	.B1(n155), 
	.B0(n459), 
	.A1N(n155), 
	.A0N(\mem[8][6] ));
   OAI2BB2X1M U289 (.Y(n237), 
	.B1(n155), 
	.B0(n458), 
	.A1N(n155), 
	.A0N(\mem[8][7] ));
   OAI2BB2X1M U290 (.Y(n239), 
	.B1(n157), 
	.B0(n464), 
	.A1N(n157), 
	.A0N(\mem[9][1] ));
   OAI2BB2X1M U291 (.Y(n240), 
	.B1(n157), 
	.B0(n463), 
	.A1N(n157), 
	.A0N(\mem[9][2] ));
   OAI2BB2X1M U292 (.Y(n241), 
	.B1(n157), 
	.B0(n462), 
	.A1N(n157), 
	.A0N(\mem[9][3] ));
   OAI2BB2X1M U293 (.Y(n242), 
	.B1(n157), 
	.B0(n461), 
	.A1N(n157), 
	.A0N(\mem[9][4] ));
   OAI2BB2X1M U294 (.Y(n243), 
	.B1(n157), 
	.B0(n460), 
	.A1N(n157), 
	.A0N(\mem[9][5] ));
   OAI2BB2X1M U295 (.Y(n244), 
	.B1(n157), 
	.B0(n459), 
	.A1N(n157), 
	.A0N(\mem[9][6] ));
   OAI2BB2X1M U296 (.Y(n245), 
	.B1(n157), 
	.B0(n458), 
	.A1N(n157), 
	.A0N(\mem[9][7] ));
   OAI2BB2X1M U297 (.Y(n247), 
	.B1(n159), 
	.B0(n464), 
	.A1N(n159), 
	.A0N(\mem[10][1] ));
   OAI2BB2X1M U298 (.Y(n248), 
	.B1(n159), 
	.B0(n463), 
	.A1N(n159), 
	.A0N(\mem[10][2] ));
   OAI2BB2X1M U299 (.Y(n249), 
	.B1(n159), 
	.B0(n462), 
	.A1N(n159), 
	.A0N(\mem[10][3] ));
   OAI2BB2X1M U300 (.Y(n250), 
	.B1(n159), 
	.B0(n461), 
	.A1N(n159), 
	.A0N(\mem[10][4] ));
   OAI2BB2X1M U301 (.Y(n251), 
	.B1(n159), 
	.B0(n460), 
	.A1N(n159), 
	.A0N(\mem[10][5] ));
   OAI2BB2X1M U302 (.Y(n252), 
	.B1(n159), 
	.B0(n459), 
	.A1N(n159), 
	.A0N(\mem[10][6] ));
   OAI2BB2X1M U303 (.Y(n253), 
	.B1(n159), 
	.B0(n458), 
	.A1N(n159), 
	.A0N(\mem[10][7] ));
   OAI2BB2X1M U304 (.Y(n255), 
	.B1(n160), 
	.B0(n464), 
	.A1N(n160), 
	.A0N(\mem[11][1] ));
   OAI2BB2X1M U305 (.Y(n256), 
	.B1(n160), 
	.B0(n463), 
	.A1N(n160), 
	.A0N(\mem[11][2] ));
   OAI2BB2X1M U306 (.Y(n257), 
	.B1(n160), 
	.B0(n462), 
	.A1N(n160), 
	.A0N(\mem[11][3] ));
   OAI2BB2X1M U307 (.Y(n258), 
	.B1(n160), 
	.B0(n461), 
	.A1N(n160), 
	.A0N(\mem[11][4] ));
   OAI2BB2X1M U308 (.Y(n259), 
	.B1(n160), 
	.B0(n460), 
	.A1N(n160), 
	.A0N(\mem[11][5] ));
   OAI2BB2X1M U309 (.Y(n260), 
	.B1(n160), 
	.B0(n459), 
	.A1N(n160), 
	.A0N(\mem[11][6] ));
   OAI2BB2X1M U310 (.Y(n261), 
	.B1(n160), 
	.B0(n458), 
	.A1N(n160), 
	.A0N(\mem[11][7] ));
   OAI2BB2X1M U311 (.Y(n262), 
	.B1(n431), 
	.B0(n465), 
	.A1N(n431), 
	.A0N(\mem[12][0] ));
   OAI2BB2X1M U312 (.Y(n263), 
	.B1(n431), 
	.B0(n464), 
	.A1N(n431), 
	.A0N(\mem[12][1] ));
   OAI2BB2X1M U313 (.Y(n264), 
	.B1(n431), 
	.B0(n463), 
	.A1N(n431), 
	.A0N(\mem[12][2] ));
   OAI2BB2X1M U314 (.Y(n265), 
	.B1(n431), 
	.B0(n462), 
	.A1N(n431), 
	.A0N(\mem[12][3] ));
   OAI2BB2X1M U315 (.Y(n266), 
	.B1(n431), 
	.B0(n461), 
	.A1N(n431), 
	.A0N(\mem[12][4] ));
   OAI2BB2X1M U316 (.Y(n267), 
	.B1(n431), 
	.B0(n460), 
	.A1N(n431), 
	.A0N(\mem[12][5] ));
   OAI2BB2X1M U317 (.Y(n268), 
	.B1(n431), 
	.B0(n459), 
	.A1N(n431), 
	.A0N(\mem[12][6] ));
   OAI2BB2X1M U318 (.Y(n269), 
	.B1(n431), 
	.B0(n458), 
	.A1N(n431), 
	.A0N(\mem[12][7] ));
   OAI2BB2X1M U319 (.Y(n270), 
	.B1(n429), 
	.B0(n465), 
	.A1N(n429), 
	.A0N(\mem[13][0] ));
   OAI2BB2X1M U320 (.Y(n271), 
	.B1(n429), 
	.B0(n464), 
	.A1N(n429), 
	.A0N(\mem[13][1] ));
   OAI2BB2X1M U321 (.Y(n272), 
	.B1(n429), 
	.B0(n463), 
	.A1N(n429), 
	.A0N(\mem[13][2] ));
   OAI2BB2X1M U322 (.Y(n273), 
	.B1(n429), 
	.B0(n462), 
	.A1N(n429), 
	.A0N(\mem[13][3] ));
   OAI2BB2X1M U323 (.Y(n274), 
	.B1(n429), 
	.B0(n461), 
	.A1N(n429), 
	.A0N(\mem[13][4] ));
   OAI2BB2X1M U324 (.Y(n275), 
	.B1(n429), 
	.B0(n460), 
	.A1N(n429), 
	.A0N(\mem[13][5] ));
   OAI2BB2X1M U325 (.Y(n276), 
	.B1(n429), 
	.B0(n459), 
	.A1N(n429), 
	.A0N(\mem[13][6] ));
   OAI2BB2X1M U326 (.Y(n277), 
	.B1(n429), 
	.B0(n458), 
	.A1N(n429), 
	.A0N(\mem[13][7] ));
   OAI2BB2X1M U327 (.Y(n278), 
	.B1(n427), 
	.B0(n465), 
	.A1N(n427), 
	.A0N(\mem[14][0] ));
   OAI2BB2X1M U328 (.Y(n279), 
	.B1(n427), 
	.B0(n464), 
	.A1N(n427), 
	.A0N(\mem[14][1] ));
   OAI2BB2X1M U329 (.Y(n280), 
	.B1(n427), 
	.B0(n463), 
	.A1N(n427), 
	.A0N(\mem[14][2] ));
   OAI2BB2X1M U330 (.Y(n281), 
	.B1(n427), 
	.B0(n462), 
	.A1N(n427), 
	.A0N(\mem[14][3] ));
   OAI2BB2X1M U331 (.Y(n282), 
	.B1(n427), 
	.B0(n461), 
	.A1N(n427), 
	.A0N(\mem[14][4] ));
   OAI2BB2X1M U332 (.Y(n283), 
	.B1(n427), 
	.B0(n460), 
	.A1N(n427), 
	.A0N(\mem[14][5] ));
   OAI2BB2X1M U333 (.Y(n284), 
	.B1(n427), 
	.B0(n459), 
	.A1N(n427), 
	.A0N(\mem[14][6] ));
   OAI2BB2X1M U334 (.Y(n285), 
	.B1(n427), 
	.B0(n458), 
	.A1N(n427), 
	.A0N(\mem[14][7] ));
   OAI2BB2X1M U335 (.Y(n286), 
	.B1(n425), 
	.B0(n465), 
	.A1N(n425), 
	.A0N(\mem[15][0] ));
   OAI2BB2X1M U336 (.Y(n287), 
	.B1(n425), 
	.B0(n464), 
	.A1N(n425), 
	.A0N(\mem[15][1] ));
   OAI2BB2X1M U337 (.Y(n288), 
	.B1(n425), 
	.B0(n463), 
	.A1N(n425), 
	.A0N(\mem[15][2] ));
   OAI2BB2X1M U338 (.Y(n289), 
	.B1(n425), 
	.B0(n462), 
	.A1N(n425), 
	.A0N(\mem[15][3] ));
   OAI2BB2X1M U339 (.Y(n290), 
	.B1(n425), 
	.B0(n461), 
	.A1N(n425), 
	.A0N(\mem[15][4] ));
   OAI2BB2X1M U340 (.Y(n291), 
	.B1(n425), 
	.B0(n460), 
	.A1N(n425), 
	.A0N(\mem[15][5] ));
   OAI2BB2X1M U341 (.Y(n292), 
	.B1(n425), 
	.B0(n459), 
	.A1N(n425), 
	.A0N(\mem[15][6] ));
   OAI2BB2X1M U342 (.Y(n293), 
	.B1(n425), 
	.B0(n458), 
	.A1N(n425), 
	.A0N(\mem[15][7] ));
   OAI2BB2X1M U343 (.Y(n166), 
	.B1(n465), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U344 (.Y(n167), 
	.B1(n464), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U345 (.Y(n168), 
	.B1(n463), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U346 (.Y(n169), 
	.B1(n462), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U347 (.Y(n170), 
	.B1(n461), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U348 (.Y(n171), 
	.B1(n460), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U349 (.Y(n172), 
	.B1(n459), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U350 (.Y(n173), 
	.B1(n458), 
	.B0(n139), 
	.A1N(n139), 
	.A0N(\mem[0][7] ));
   OAI2BB2X1M U351 (.Y(n174), 
	.B1(n142), 
	.B0(n465), 
	.A1N(n142), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U352 (.Y(n182), 
	.B1(n144), 
	.B0(n465), 
	.A1N(n144), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U353 (.Y(n190), 
	.B1(n146), 
	.B0(n465), 
	.A1N(n146), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U354 (.Y(n230), 
	.B1(n155), 
	.B0(n465), 
	.A1N(n155), 
	.A0N(\mem[8][0] ));
   OAI2BB2X1M U355 (.Y(n238), 
	.B1(n157), 
	.B0(n465), 
	.A1N(n157), 
	.A0N(\mem[9][0] ));
   OAI2BB2X1M U356 (.Y(n246), 
	.B1(n159), 
	.B0(n465), 
	.A1N(n159), 
	.A0N(\mem[10][0] ));
   OAI2BB2X1M U357 (.Y(n254), 
	.B1(n160), 
	.B0(n465), 
	.A1N(n160), 
	.A0N(\mem[11][0] ));
   INVX2M U358 (.Y(n388), 
	.A(N10));
   INVX2M U359 (.Y(n391), 
	.A(N9));
   AND2X2M U360 (.Y(n164), 
	.B(n154), 
	.A(w_addr[3]));
   INVX2M U361 (.Y(n465), 
	.A(wdata[0]));
   INVX2M U362 (.Y(n464), 
	.A(wdata[1]));
   INVX2M U363 (.Y(n463), 
	.A(wdata[2]));
   INVX2M U364 (.Y(n462), 
	.A(wdata[3]));
   INVX2M U365 (.Y(n461), 
	.A(wdata[4]));
   INVX2M U366 (.Y(n460), 
	.A(wdata[5]));
   INVX2M U367 (.Y(n459), 
	.A(wdata[6]));
   INVX2M U368 (.Y(n458), 
	.A(wdata[7]));
   INVX2M U369 (.Y(n457), 
	.A(w_addr[1]));
   INVX2M U370 (.Y(n456), 
	.A(w_addr[0]));
   AOI22X1M U371 (.Y(n138), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][0] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][0] ));
   AOI22X1M U372 (.Y(n137), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][0] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][0] ));
   AOI21X1M U373 (.Y(n295), 
	.B0(n368), 
	.A1(n137), 
	.A0(n138));
   AOI22X1M U374 (.Y(n149), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][0] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][0] ));
   AOI22X1M U375 (.Y(n147), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][0] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][0] ));
   AOI21X1M U376 (.Y(n294), 
	.B0(n371), 
	.A1(n147), 
	.A0(n149));
   AOI22X1M U377 (.Y(n153), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][0] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][0] ));
   AOI22X1M U378 (.Y(n150), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][0] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][0] ));
   AOI21X1M U379 (.Y(n165), 
	.B0(n374), 
	.A1(n150), 
	.A0(n153));
   AOI22X1M U380 (.Y(n162), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][0] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][0] ));
   AOI22X1M U381 (.Y(n161), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][0] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][0] ));
   AOI21X1M U382 (.Y(n163), 
	.B0(n381), 
	.A1(n161), 
	.A0(n162));
   OR4X1M U383 (.Y(rdata[0]), 
	.D(n163), 
	.C(n165), 
	.B(n294), 
	.A(n295));
   AOI22X1M U384 (.Y(n297), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][1] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][1] ));
   AOI22X1M U385 (.Y(n296), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][1] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][1] ));
   AOI21X1M U386 (.Y(n307), 
	.B0(n368), 
	.A1(n296), 
	.A0(n297));
   AOI22X1M U387 (.Y(n299), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][1] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][1] ));
   AOI22X1M U388 (.Y(n298), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][1] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][1] ));
   AOI21X1M U389 (.Y(n306), 
	.B0(n371), 
	.A1(n298), 
	.A0(n299));
   AOI22X1M U390 (.Y(n301), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][1] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][1] ));
   AOI22X1M U391 (.Y(n300), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][1] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][1] ));
   AOI21X1M U392 (.Y(n305), 
	.B0(n374), 
	.A1(n300), 
	.A0(n301));
   AOI22X1M U393 (.Y(n303), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][1] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][1] ));
   AOI22X1M U394 (.Y(n302), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][1] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][1] ));
   AOI21X1M U395 (.Y(n304), 
	.B0(n381), 
	.A1(n302), 
	.A0(n303));
   OR4X1M U396 (.Y(rdata[1]), 
	.D(n304), 
	.C(n305), 
	.B(n306), 
	.A(n307));
   AOI22X1M U397 (.Y(n309), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][2] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][2] ));
   AOI22X1M U398 (.Y(n308), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][2] ), 
	.A1(FE_OFN6_n380), 
	.A0(test_so1));
   AOI21X1M U399 (.Y(n319), 
	.B0(n368), 
	.A1(n308), 
	.A0(n309));
   AOI22X1M U400 (.Y(n311), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][2] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][2] ));
   AOI22X1M U401 (.Y(n310), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][2] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][2] ));
   AOI21X1M U402 (.Y(n318), 
	.B0(n371), 
	.A1(n310), 
	.A0(n311));
   AOI22X1M U403 (.Y(n313), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][2] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][2] ));
   AOI22X1M U404 (.Y(n312), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][2] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][2] ));
   AOI21X1M U405 (.Y(n317), 
	.B0(n374), 
	.A1(n312), 
	.A0(n313));
   AOI22X1M U406 (.Y(n315), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][2] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][2] ));
   AOI22X1M U407 (.Y(n314), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][2] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][2] ));
   AOI21X1M U408 (.Y(n316), 
	.B0(n381), 
	.A1(n314), 
	.A0(n315));
   OR4X1M U409 (.Y(rdata[2]), 
	.D(n316), 
	.C(n317), 
	.B(n318), 
	.A(n319));
   AOI22X1M U410 (.Y(n321), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][3] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][3] ));
   AOI22X1M U411 (.Y(n320), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][3] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][3] ));
   AOI21X1M U412 (.Y(n331), 
	.B0(n368), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U413 (.Y(n323), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][3] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][3] ));
   AOI22X1M U414 (.Y(n322), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][3] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][3] ));
   AOI21X1M U415 (.Y(n330), 
	.B0(n371), 
	.A1(n322), 
	.A0(n323));
   AOI22X1M U416 (.Y(n325), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][3] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][3] ));
   AOI22X1M U417 (.Y(n324), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][3] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][3] ));
   AOI21X1M U418 (.Y(n329), 
	.B0(n374), 
	.A1(n324), 
	.A0(n325));
   AOI22X1M U419 (.Y(n327), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][3] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][3] ));
   AOI22X1M U420 (.Y(n326), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][3] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][3] ));
   AOI21X1M U421 (.Y(n328), 
	.B0(n381), 
	.A1(n326), 
	.A0(n327));
   OR4X1M U422 (.Y(rdata[3]), 
	.D(n328), 
	.C(n329), 
	.B(n330), 
	.A(n331));
   AOI22X1M U423 (.Y(n333), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][4] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][4] ));
   AOI22X1M U424 (.Y(n332), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][4] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][4] ));
   AOI21X1M U425 (.Y(n343), 
	.B0(n368), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U426 (.Y(n335), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][4] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][4] ));
   AOI22X1M U427 (.Y(n334), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][4] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][4] ));
   AOI21X1M U428 (.Y(n342), 
	.B0(n371), 
	.A1(n334), 
	.A0(n335));
   AOI22X1M U429 (.Y(n337), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][4] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][4] ));
   AOI22X1M U430 (.Y(n336), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][4] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][4] ));
   AOI21X1M U431 (.Y(n341), 
	.B0(n374), 
	.A1(n336), 
	.A0(n337));
   AOI22X1M U432 (.Y(n339), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][4] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][4] ));
   AOI22X1M U433 (.Y(n338), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][4] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][4] ));
   AOI21X1M U434 (.Y(n340), 
	.B0(n381), 
	.A1(n338), 
	.A0(n339));
   OR4X1M U435 (.Y(rdata[4]), 
	.D(n340), 
	.C(n341), 
	.B(n342), 
	.A(n343));
   AOI22X1M U436 (.Y(n345), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][5] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][5] ));
   AOI22X1M U437 (.Y(n344), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][5] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][5] ));
   AOI21X1M U438 (.Y(n355), 
	.B0(n368), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U439 (.Y(n347), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][5] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][5] ));
   AOI22X1M U440 (.Y(n346), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][5] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][5] ));
   AOI21X1M U441 (.Y(n354), 
	.B0(n371), 
	.A1(n346), 
	.A0(n347));
   AOI22X1M U442 (.Y(n349), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][5] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][5] ));
   AOI22X1M U443 (.Y(n348), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][5] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][5] ));
   AOI21X1M U444 (.Y(n353), 
	.B0(n374), 
	.A1(n348), 
	.A0(n349));
   AOI22X1M U445 (.Y(n351), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][5] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][5] ));
   AOI22X1M U446 (.Y(n350), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][5] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][5] ));
   AOI21X1M U447 (.Y(n352), 
	.B0(n381), 
	.A1(n350), 
	.A0(n351));
   OR4X1M U448 (.Y(rdata[5]), 
	.D(n352), 
	.C(n353), 
	.B(n354), 
	.A(n355));
   AOI22X1M U449 (.Y(n357), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][6] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][6] ));
   AOI22X1M U450 (.Y(n356), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][6] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][6] ));
   AOI21X1M U451 (.Y(n367), 
	.B0(n368), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U452 (.Y(n359), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][6] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][6] ));
   AOI22X1M U453 (.Y(n358), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][6] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][6] ));
   AOI21X1M U454 (.Y(n366), 
	.B0(n371), 
	.A1(n358), 
	.A0(n359));
   AOI22X1M U455 (.Y(n361), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][6] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][6] ));
   AOI22X1M U456 (.Y(n360), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][6] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][6] ));
   AOI21X1M U457 (.Y(n365), 
	.B0(n374), 
	.A1(n360), 
	.A0(n361));
   AOI22X1M U458 (.Y(n363), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][6] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][6] ));
   AOI22X1M U459 (.Y(n362), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][6] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][6] ));
   AOI21X1M U460 (.Y(n364), 
	.B0(n381), 
	.A1(n362), 
	.A0(n363));
   OR4X1M U461 (.Y(rdata[6]), 
	.D(n364), 
	.C(n365), 
	.B(n366), 
	.A(n367));
   AOI22X1M U462 (.Y(n370), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[11][7] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[10][7] ));
   AOI22X1M U463 (.Y(n369), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[9][7] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[8][7] ));
   AOI21X1M U464 (.Y(n387), 
	.B0(n368), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U465 (.Y(n373), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[15][7] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[14][7] ));
   AOI22X1M U466 (.Y(n372), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[13][7] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[12][7] ));
   AOI21X1M U467 (.Y(n386), 
	.B0(n371), 
	.A1(n372), 
	.A0(n373));
   AOI22X1M U468 (.Y(n376), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[3][7] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[2][7] ));
   AOI22X1M U469 (.Y(n375), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[1][7] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[0][7] ));
   AOI21X1M U470 (.Y(n385), 
	.B0(n374), 
	.A1(n375), 
	.A0(n376));
   AOI22X1M U471 (.Y(n383), 
	.B1(FE_OFN7_n377), 
	.B0(\mem[7][7] ), 
	.A1(FE_OFN5_n378), 
	.A0(\mem[6][7] ));
   AOI22X1M U472 (.Y(n382), 
	.B1(FE_OFN8_n379), 
	.B0(\mem[5][7] ), 
	.A1(FE_OFN6_n380), 
	.A0(\mem[4][7] ));
   AOI21X1M U473 (.Y(n384), 
	.B0(n381), 
	.A1(n382), 
	.A0(n383));
   OR4X1M U474 (.Y(rdata[7]), 
	.D(n384), 
	.C(n385), 
	.B(n386), 
	.A(n387));
   INVXLM U2 (.Y(n1), 
	.A(\mem[8][2] ));
   INVX2M U3 (.Y(test_so1), 
	.A(n1));
endmodule

module fifo_DATA_WIDTH8_NUM_ADDR_BITS4_test_1 (
	W_CLK, 
	W_RST, 
	W_INC, 
	R_CLK, 
	R_RST, 
	R_INC, 
	WR_DATA, 
	RD_DATA, 
	FULL, 
	EMPTY, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_sync_rst_1_M, 
	FE_OFN15_SE, 
	FE_OFN16_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	tx_rx_clk_M__L4_N1, 
	REF_CLK_M__L14_N1, 
	REF_CLK_M__L14_N11, 
	REF_CLK_M__L14_N2, 
	REF_CLK_M__L14_N3, 
	REF_CLK_M__L14_N4, 
	REF_CLK_M__L14_N5, 
	REF_CLK_M__L14_N6, 
	REF_CLK_M__L14_N7, 
	REF_CLK_M__L14_N8);
   input W_CLK;
   input W_RST;
   input W_INC;
   input R_CLK;
   input R_RST;
   input R_INC;
   input [7:0] WR_DATA;
   output [7:0] RD_DATA;
   output FULL;
   output EMPTY;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_sync_rst_1_M;
   input FE_OFN15_SE;
   input FE_OFN16_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input tx_rx_clk_M__L4_N1;
   input REF_CLK_M__L14_N1;
   input REF_CLK_M__L14_N11;
   input REF_CLK_M__L14_N2;
   input REF_CLK_M__L14_N3;
   input REF_CLK_M__L14_N4;
   input REF_CLK_M__L14_N5;
   input REF_CLK_M__L14_N6;
   input REF_CLK_M__L14_N7;
   input REF_CLK_M__L14_N8;

   // Internal wires
   wire FE_OFN17_SE;
   wire internal_full;
   wire internal_empty;
   wire [7:0] internal_rd_data;
   wire [4:0] wq2_rptr;
   wire [3:0] w_addr;
   wire [4:0] w_ptr;
   wire [4:0] rq2_wptr;
   wire [3:0] r_addr;
   wire [4:0] r_ptr;

   BUFX4M FE_OFC17_SE (.Y(FE_OFN17_SE), 
	.A(test_se));
   SDFFRQX2M \RD_DATA_reg[7]  (.SI(RD_DATA[6]), 
	.SE(FE_OFN16_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[7]), 
	.D(internal_rd_data[7]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[6]  (.SI(RD_DATA[5]), 
	.SE(FE_OFN16_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[6]), 
	.D(internal_rd_data[6]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[5]  (.SI(RD_DATA[4]), 
	.SE(FE_OFN16_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[5]), 
	.D(internal_rd_data[5]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[4]  (.SI(RD_DATA[3]), 
	.SE(FE_OFN16_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[4]), 
	.D(internal_rd_data[4]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[3]  (.SI(RD_DATA[2]), 
	.SE(FE_OFN16_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[3]), 
	.D(internal_rd_data[3]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[2]  (.SI(RD_DATA[1]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(RD_DATA[2]), 
	.D(internal_rd_data[2]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[1]  (.SI(RD_DATA[0]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(RD_DATA[1]), 
	.D(internal_rd_data[1]), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[0]  (.SI(FULL), 
	.SE(FE_OFN15_SE), 
	.RN(R_RST), 
	.Q(RD_DATA[0]), 
	.D(internal_rd_data[0]), 
	.CK(R_CLK));
   SDFFSQX2M EMPTY_reg (.SN(R_RST), 
	.SI(test_si1), 
	.SE(FE_OFN15_SE), 
	.Q(EMPTY), 
	.D(internal_empty), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M FULL_reg (.SI(EMPTY), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_sync_rst_1_M), 
	.Q(FULL), 
	.D(internal_full), 
	.CK(REF_CLK_M__L14_N5));
   FIFO_WR_NUM_ADDR_BITS4_test_1 u_FIFO_WR (.W_CLK(REF_CLK_M__L14_N1), 
	.W_RST(W_RST), 
	.W_INC(W_INC), 
	.wq_rptr({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.wfull(internal_full), 
	.w_addr({ w_addr[3],
		w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.w_ptr({ w_ptr[4],
		w_ptr[3],
		w_ptr[2],
		w_ptr[1],
		w_ptr[0] }), 
	.test_si(internal_empty), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.REF_CLK_M__L14_N11(REF_CLK_M__L14_N11), 
	.REF_CLK_M__L14_N4(REF_CLK_M__L14_N4));
   FIFO_RD_NUM_ADDR_BITS4_test_1 u_FIFO_RD (.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.R_INC(R_INC), 
	.rq_wptr({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.rempty(internal_empty), 
	.r_addr({ r_addr[3],
		r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.r_ptr({ r_ptr[4],
		r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.test_se(FE_OFN18_SE), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.tx_rx_clk_M__L4_N1(tx_rx_clk_M__L4_N1));
   DF_SYNC_NUM_ADDR_BITS4_test_1 u_DF_SYNC_W2R (.clk(tx_rx_clk_M__L4_N1), 
	.rst_n(R_RST), 
	.unsynchronized_in({ w_ptr[4],
		w_ptr[3],
		w_ptr[2],
		w_ptr[1],
		w_ptr[0] }), 
	.synchronized_out({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(wq2_rptr[4]), 
	.test_se(FE_OFN18_SE));
   DF_SYNC_NUM_ADDR_BITS4_test_0 u_DF_SYNC_R2W (.clk(REF_CLK_M__L14_N1), 
	.rst_n(W_RST), 
	.unsynchronized_in({ r_ptr[4],
		r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.synchronized_out({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(RD_DATA[7]), 
	.test_se(FE_OFN18_SE), 
	.FE_OFN17_SE(FE_OFN17_SE));
   fifo_mem_cntrl_DATA_WIDTH8_NUM_ADDR_BITS4_test_1 u_fifo_mem_cntrl (.W_CLK(W_CLK), 
	.W_INC(W_INC), 
	.wfull(internal_full), 
	.w_addr({ w_addr[3],
		w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.wdata({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.r_addr({ r_addr[3],
		r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.rdata({ internal_rd_data[7],
		internal_rd_data[6],
		internal_rd_data[5],
		internal_rd_data[4],
		internal_rd_data[3],
		internal_rd_data[2],
		internal_rd_data[1],
		internal_rd_data[0] }), 
	.test_si1(test_si2), 
	.test_so2(test_so2), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.REF_CLK_M__L14_N2(REF_CLK_M__L14_N2), 
	.REF_CLK_M__L14_N3(REF_CLK_M__L14_N3), 
	.REF_CLK_M__L14_N4(REF_CLK_M__L14_N4), 
	.REF_CLK_M__L14_N5(REF_CLK_M__L14_N5), 
	.REF_CLK_M__L14_N6(REF_CLK_M__L14_N6), 
	.REF_CLK_M__L14_N7(REF_CLK_M__L14_N7), 
	.REF_CLK_M__L14_N8(REF_CLK_M__L14_N8));
endmodule

module rst_synchronizer_test_1 (
	clk, 
	rst, 
	synch_rst, 
	test_si, 
	test_se);
   input clk;
   input rst;
   output synch_rst;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \Q[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \Q_reg[1]  (.SI(\Q[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(synch_rst), 
	.D(\Q[0] ), 
	.CK(clk));
   SDFFRQX1M \Q_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\Q[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module clk_div_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module clk_div_test_0 (
	I_ref_clk, 
	I_rst_n, 
	I_clk_en, 
	I_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN15_SE, 
	FE_OFN16_SE, 
	n19__Exclude_0_NET, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L7_N0);
   input I_ref_clk;
   input I_rst_n;
   input I_clk_en;
   input [7:0] I_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN15_SE;
   input FE_OFN16_SE;
   input n19__Exclude_0_NET;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire div_clk;
   wire clk_state;
   wire N10;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N23;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N33;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n1;
   wire n2;
   wire n21;
   wire n22;
   wire n23;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire [7:0] counter;

//   assign test_so = div_clk ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSQX2M div_clk_reg (.SN(I_rst_n), 
	.SI(counter[7]), 
	.SE(FE_OFN16_SE), 
	.Q(test_so), 
	.D(n34), 
	.CK(UART_CLK_M__L2_N0));
   SDFFSQX2M clk_state_reg (.SN(I_rst_n), 
	.SI(test_si), 
	.SE(FE_OFN15_SE), 
	.Q(clk_state), 
	.D(n35), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[7]), 
	.D(N79), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(FE_OFN16_SE), 
	.RN(I_rst_n), 
	.Q(counter[2]), 
	.D(N74), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(FE_OFN16_SE), 
	.RN(I_rst_n), 
	.Q(counter[3]), 
	.D(N75), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(FE_OFN16_SE), 
	.RN(I_rst_n), 
	.Q(counter[4]), 
	.D(N76), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[5]), 
	.D(N77), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[6]), 
	.D(N78), 
	.CK(I_ref_clk));
   SDFFRQX1M \counter_reg[1]  (.SI(counter[0]), 
	.SE(FE_OFN16_SE), 
	.RN(I_rst_n), 
	.Q(counter[1]), 
	.D(N73), 
	.CK(I_ref_clk));
   SDFFRQX1M \counter_reg[0]  (.SI(clk_state), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[0]), 
	.D(N72), 
	.CK(I_ref_clk));
   AOI21BX2M U6 (.Y(n1), 
	.B0N(n21), 
	.A1(I_div_ratio[2]), 
	.A0(I_div_ratio[1]));
   AOI21BX2M U7 (.Y(n2), 
	.B0N(n38), 
	.A1(I_div_ratio[2]), 
	.A0(I_div_ratio[1]));
   NOR3X2M U10 (.Y(N17), 
	.C(n36), 
	.B(I_div_ratio[7]), 
	.A(I_div_ratio[6]));
   NOR3X2M U16 (.Y(N30), 
	.C(n41), 
	.B(I_div_ratio[7]), 
	.A(I_div_ratio[6]));
   OAI211X2M U23 (.Y(n25), 
	.C0(HTIE_LTIEHI_NET), 
	.B0(n28), 
	.A1(n27), 
	.A0(n26));
   OAI2B1X2M U24 (.Y(n33), 
	.B0(n31), 
	.A1N(n26), 
	.A0(n27));
   OAI22X1M U25 (.Y(n26), 
	.B1(n78), 
	.B0(N31), 
	.A1(N33), 
	.A0(clk_state));
   NOR2BX2M U26 (.Y(n55), 
	.B(I_div_ratio[1]), 
	.AN(counter[0]));
   NOR3X2M U27 (.Y(n74), 
	.C(counter[7]), 
	.B(N30), 
	.A(n68));
   NOR2BX2M U28 (.Y(n56), 
	.B(counter[0]), 
	.AN(I_div_ratio[1]));
   NOR3X2M U29 (.Y(n51), 
	.C(counter[7]), 
	.B(N17), 
	.A(n45));
   CLKINVX2M U30 (.Y(n77), 
	.A(n25));
   NOR2X2M U31 (.Y(n43), 
	.B(N10), 
	.A(n54));
   NOR2X2M U32 (.Y(n66), 
	.B(N23), 
	.A(n54));
   OR2X2M U33 (.Y(n36), 
	.B(I_div_ratio[5]), 
	.A(n23));
   NAND2BX2M U34 (.Y(n21), 
	.B(N10), 
	.AN(I_div_ratio[2]));
   OR2X2M U35 (.Y(n22), 
	.B(I_div_ratio[3]), 
	.A(n21));
   OR2X2M U36 (.Y(n23), 
	.B(I_div_ratio[4]), 
	.A(n22));
   OR2X2M U37 (.Y(n41), 
	.B(I_div_ratio[5]), 
	.A(n40));
   NAND2BX2M U38 (.Y(n38), 
	.B(N23), 
	.AN(I_div_ratio[2]));
   OR2X2M U39 (.Y(n39), 
	.B(I_div_ratio[3]), 
	.A(n38));
   OR2X2M U40 (.Y(n40), 
	.B(I_div_ratio[4]), 
	.A(n39));
   OAI2BB1XLM U41 (.Y(N14), 
	.B0(n36), 
	.A1N(I_div_ratio[5]), 
	.A0N(n23));
   OAI2BB1XLM U42 (.Y(N27), 
	.B0(n41), 
	.A1N(I_div_ratio[5]), 
	.A0N(n40));
   OAI2BB1XLM U43 (.Y(N13), 
	.B0(n23), 
	.A1N(I_div_ratio[4]), 
	.A0N(n22));
   OAI2BB1XLM U44 (.Y(N26), 
	.B0(n40), 
	.A1N(I_div_ratio[4]), 
	.A0N(n39));
   OAI2BB1XLM U45 (.Y(N12), 
	.B0(n22), 
	.A1N(I_div_ratio[3]), 
	.A0N(n21));
   OAI2BB1XLM U46 (.Y(N25), 
	.B0(n39), 
	.A1N(I_div_ratio[3]), 
	.A0N(n38));
   NOR2X2M U47 (.Y(N33), 
	.B(n64), 
	.A(n65));
   NOR2X2M U48 (.Y(n24), 
	.B(n79), 
	.A(n78));
   CLKNAND2X2M U49 (.Y(n32), 
	.B(HTIE_LTIEHI_NET), 
	.A(n33));
   NAND2X2M U50 (.Y(n28), 
	.B(n78), 
	.A(N18));
   OAI22X1M U51 (.Y(n35), 
	.B1(n24), 
	.B0(n77), 
	.A1(n25), 
	.A0(n78));
   NOR2BX2M U52 (.Y(N78), 
	.B(n32), 
	.AN(N43));
   NOR2BX2M U53 (.Y(N77), 
	.B(n32), 
	.AN(N42));
   NOR2BX2M U54 (.Y(N76), 
	.B(n32), 
	.AN(N41));
   NOR2BX2M U55 (.Y(N75), 
	.B(n32), 
	.AN(N40));
   NOR2BX2M U56 (.Y(N74), 
	.B(n32), 
	.AN(N39));
   NOR2BX2M U57 (.Y(N73), 
	.B(n32), 
	.AN(N38));
   OAI2BB2X1M U60 (.Y(n34), 
	.B1(n24), 
	.B0(n77), 
	.A1N(n77), 
	.A0N(n19__Exclude_0_NET));
   NAND2BX2M U61 (.Y(n31), 
	.B(n28), 
	.AN(I_div_ratio[0]));
   INVX2M U62 (.Y(N10), 
	.A(I_div_ratio[1]));
   INVX2M U63 (.Y(N23), 
	.A(I_div_ratio[1]));
   NOR2BX2M U64 (.Y(N72), 
	.B(n32), 
	.AN(N37));
   NAND2X2M U65 (.Y(n27), 
	.B(n28), 
	.A(I_div_ratio[0]));
   AND3X2M U66 (.Y(N79), 
	.C(N44), 
	.B(HTIE_LTIEHI_NET), 
	.A(n29));
   OAI211X2M U67 (.Y(n29), 
	.C0(n31), 
	.B0(n30), 
	.A1(n78), 
	.A0(N31));
   OR3X1M U68 (.Y(n30), 
	.C(N18), 
	.B(clk_state), 
	.A(N33));
   INVX2M U69 (.Y(n54), 
	.A(counter[0]));
   CLKINVX2M U70 (.Y(n78), 
	.A(clk_state));
   INVX2M U71 (.Y(n79), 
	.A(HTIE_LTIEHI_NET));
   MX2XLM U72 (.Y(o_div_clk), 
	.S0(n79), 
	.B(UART_CLK_M__L7_N0), 
	.A(test_so));
   XNOR2X1M U73 (.Y(N15), 
	.B(n36), 
	.A(I_div_ratio[6]));
   OAI21X1M U74 (.Y(n37), 
	.B0(I_div_ratio[7]), 
	.A1(n36), 
	.A0(I_div_ratio[6]));
   NAND2BX1M U75 (.Y(N16), 
	.B(n37), 
	.AN(N17));
   XNOR2X1M U76 (.Y(N28), 
	.B(n41), 
	.A(I_div_ratio[6]));
   OAI21X1M U77 (.Y(n42), 
	.B0(I_div_ratio[7]), 
	.A1(n41), 
	.A0(I_div_ratio[6]));
   NAND2BX1M U78 (.Y(N29), 
	.B(n42), 
	.AN(N30));
   XNOR2X1M U79 (.Y(n53), 
	.B(counter[2]), 
	.A(N12));
   OAI22X1M U80 (.Y(n52), 
	.B1(n1), 
	.B0(n43), 
	.A1(n43), 
	.A0(counter[1]));
   CLKNAND2X2M U81 (.Y(n44), 
	.B(n54), 
	.A(N10));
   AOI22X1M U82 (.Y(n45), 
	.B1(counter[1]), 
	.B0(n44), 
	.A1(n1), 
	.A0(n44));
   CLKXOR2X2M U83 (.Y(n49), 
	.B(counter[3]), 
	.A(N13));
   CLKXOR2X2M U84 (.Y(n48), 
	.B(counter[4]), 
	.A(N14));
   CLKXOR2X2M U85 (.Y(n47), 
	.B(counter[5]), 
	.A(N15));
   CLKXOR2X2M U86 (.Y(n46), 
	.B(counter[6]), 
	.A(N16));
   NOR4X1M U87 (.Y(n50), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   AND4X1M U88 (.Y(N18), 
	.D(n50), 
	.C(n51), 
	.B(n52), 
	.A(n53));
   OAI2B2X1M U89 (.Y(n59), 
	.B1(n55), 
	.B0(counter[1]), 
	.A1N(I_div_ratio[2]), 
	.A0(n55));
   XNOR2X1M U90 (.Y(n58), 
	.B(counter[2]), 
	.A(I_div_ratio[3]));
   OAI2B2X1M U91 (.Y(n57), 
	.B1(n56), 
	.B0(I_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n56));
   NAND4BX1M U92 (.Y(n65), 
	.D(n57), 
	.C(n58), 
	.B(n59), 
	.AN(counter[7]));
   XNOR2X1M U93 (.Y(n63), 
	.B(I_div_ratio[7]), 
	.A(counter[6]));
   XNOR2X1M U94 (.Y(n62), 
	.B(counter[5]), 
	.A(I_div_ratio[6]));
   XNOR2X1M U95 (.Y(n61), 
	.B(I_div_ratio[5]), 
	.A(counter[4]));
   XNOR2X1M U96 (.Y(n60), 
	.B(I_div_ratio[4]), 
	.A(counter[3]));
   NAND4X1M U97 (.Y(n64), 
	.D(n60), 
	.C(n61), 
	.B(n62), 
	.A(n63));
   XNOR2X1M U98 (.Y(n76), 
	.B(N25), 
	.A(counter[2]));
   OAI22X1M U99 (.Y(n75), 
	.B1(n2), 
	.B0(n66), 
	.A1(n66), 
	.A0(counter[1]));
   CLKNAND2X2M U100 (.Y(n67), 
	.B(n54), 
	.A(N23));
   AOI22X1M U101 (.Y(n68), 
	.B1(counter[1]), 
	.B0(n67), 
	.A1(n2), 
	.A0(n67));
   CLKXOR2X2M U102 (.Y(n72), 
	.B(counter[3]), 
	.A(N26));
   CLKXOR2X2M U103 (.Y(n71), 
	.B(counter[4]), 
	.A(N27));
   CLKXOR2X2M U104 (.Y(n70), 
	.B(counter[5]), 
	.A(N28));
   CLKXOR2X2M U105 (.Y(n69), 
	.B(counter[6]), 
	.A(N29));
   NOR4X1M U106 (.Y(n73), 
	.D(n69), 
	.C(n70), 
	.B(n71), 
	.A(n72));
   AND4X1M U107 (.Y(N31), 
	.D(n73), 
	.C(n74), 
	.B(n75), 
	.A(n76));
   clk_div_0_DW01_inc_0 r75 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		N38,
		N37 }));
endmodule

module clk_div_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module clk_div_test_1 (
	I_ref_clk, 
	I_rst_n, 
	I_clk_en, 
	I_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_sync_rst_2_M, 
	n18__Exclude_0_NET, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L7_N0);
   input I_ref_clk;
   input I_rst_n;
   input I_clk_en;
   input [7:0] I_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_sync_rst_2_M;
   input n18__Exclude_0_NET;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire FE_PHN1_n19__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_UNCONNECTED_0;
   wire div_clk;
   wire clk_state;
   wire N10;
   wire N12;
   wire N13;
   wire N14;
   wire N16;
   wire N18;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N33;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire n1;
   wire n9;
   wire n10;
   wire n21;
   wire n22;
   wire n23;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n63;
   wire n64;
   wire n67;
   wire n68;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire [7:0] counter;

//   assign test_so = div_clk ;

   DLY4X1M FE_PHC1_n19__Exclude_0_NET (.Y(FE_PHN1_n19__Exclude_0_NET), 
	.A(test_si));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFSQX2M div_clk_reg (.SN(I_rst_n), 
	.SI(counter[7]), 
	.SE(test_se), 
	.Q(test_so), 
	.D(n75), 
	.CK(UART_CLK_M__L2_N0));
   SDFFSQX2M clk_state_reg (.SN(I_rst_n), 
	.SI(FE_PHN1_n19__Exclude_0_NET), 
	.SE(test_se), 
	.Q(clk_state), 
	.D(n74), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(counter[7]), 
	.D(N79), 
	.CK(I_ref_clk));
   SDFFRQX4M \counter_reg[0]  (.SI(clk_state), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[0]), 
	.D(N72), 
	.CK(I_ref_clk));
   SDFFRQX4M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[1]), 
	.D(N73), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[2]), 
	.D(N74), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[3]), 
	.D(N75), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[4]), 
	.D(N76), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(I_rst_n), 
	.Q(counter[5]), 
	.D(N77), 
	.CK(I_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(counter[6]), 
	.D(N78), 
	.CK(I_ref_clk));
   AOI21BX2M U6 (.Y(n1), 
	.B0N(n10), 
	.A1(I_div_ratio[2]), 
	.A0(I_div_ratio[1]));
   OAI211X2M U8 (.Y(n84), 
	.C0(HTIE_LTIEHI_NET), 
	.B0(n81), 
	.A1(n82), 
	.A0(n83));
   OAI2B1X2M U9 (.Y(n76), 
	.B0(n78), 
	.A1N(n83), 
	.A0(n82));
   OAI22X1M U10 (.Y(n83), 
	.B1(n72), 
	.B0(N31), 
	.A1(N33), 
	.A0(clk_state));
   NOR2BX2M U16 (.Y(n50), 
	.B(counter[0]), 
	.AN(I_div_ratio[1]));
   NOR2BX2M U19 (.Y(n49), 
	.B(I_div_ratio[1]), 
	.AN(counter[0]));
   NOR3X2M U20 (.Y(n68), 
	.C(counter[7]), 
	.B(N30), 
	.A(n39));
   NOR3X2M U21 (.Y(N30), 
	.C(n23), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NOR3X2M U22 (.Y(n45), 
	.C(counter[7]), 
	.B(N30), 
	.A(n39));
   NAND2BX2M U24 (.Y(n10), 
	.B(N10), 
	.AN(I_div_ratio[2]));
   CLKINVX2M U26 (.Y(n71), 
	.A(n84));
   NOR2X2M U27 (.Y(n37), 
	.B(N10), 
	.A(n48));
   OR2X2M U30 (.Y(n23), 
	.B(LTIE_LTIELO_NET), 
	.A(n22));
   OR2X2M U32 (.Y(n21), 
	.B(LTIE_LTIELO_NET), 
	.A(n10));
   OR2X2M U34 (.Y(n22), 
	.B(LTIE_LTIELO_NET), 
	.A(n21));
   OAI2BB1XLM U35 (.Y(N14), 
	.B0(n23), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n22));
   OAI2BB1XLM U37 (.Y(N13), 
	.B0(n22), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n21));
   OAI2BB1XLM U39 (.Y(N12), 
	.B0(n21), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n10));
   NOR2X2M U41 (.Y(N33), 
	.B(n58), 
	.A(n59));
   NOR2X2M U42 (.Y(n85), 
	.B(n73), 
	.A(n72));
   CLKNAND2X2M U43 (.Y(n77), 
	.B(HTIE_LTIEHI_NET), 
	.A(n76));
   NAND2BX2M U44 (.Y(n78), 
	.B(n81), 
	.AN(I_div_ratio[0]));
   NAND2X2M U45 (.Y(n82), 
	.B(n81), 
	.A(I_div_ratio[0]));
   INVX2M U46 (.Y(N10), 
	.A(I_div_ratio[1]));
   NAND2X2M U48 (.Y(n81), 
	.B(n72), 
	.A(N18));
   OAI22X1M U49 (.Y(n74), 
	.B1(n85), 
	.B0(n71), 
	.A1(n84), 
	.A0(n72));
   NOR2BX2M U50 (.Y(N78), 
	.B(n77), 
	.AN(N43));
   NOR2BX2M U51 (.Y(N77), 
	.B(n77), 
	.AN(N42));
   NOR2BX2M U52 (.Y(N76), 
	.B(n77), 
	.AN(N41));
   NOR2BX2M U53 (.Y(N75), 
	.B(n77), 
	.AN(N40));
   NOR2BX2M U54 (.Y(N74), 
	.B(n77), 
	.AN(N39));
   NOR2BX2M U55 (.Y(N73), 
	.B(n77), 
	.AN(N38));
   OAI2BB2X1M U58 (.Y(n75), 
	.B1(n85), 
	.B0(n71), 
	.A1N(n71), 
	.A0N(n18__Exclude_0_NET));
   NOR2BX2M U59 (.Y(N72), 
	.B(n77), 
	.AN(n48));
   AND3X2M U60 (.Y(N79), 
	.C(N44), 
	.B(HTIE_LTIEHI_NET), 
	.A(n80));
   OAI211X2M U61 (.Y(n80), 
	.C0(n78), 
	.B0(n79), 
	.A1(n72), 
	.A0(N31));
   OR3X1M U62 (.Y(n79), 
	.C(N18), 
	.B(clk_state), 
	.A(N33));
   INVX2M U63 (.Y(n48), 
	.A(counter[0]));
   CLKINVX2M U64 (.Y(n72), 
	.A(clk_state));
   INVX2M U65 (.Y(n73), 
	.A(HTIE_LTIEHI_NET));
   MX2XLM U66 (.Y(o_div_clk), 
	.S0(n73), 
	.B(UART_CLK_M__L7_N0), 
	.A(test_so));
   OAI21X1M U68 (.Y(n9), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n23), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U69 (.Y(N16), 
	.B(n9), 
	.AN(N30));
   XNOR2X1M U70 (.Y(N28), 
	.B(n23), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U71 (.Y(n36), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n23), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U72 (.Y(N29), 
	.B(n36), 
	.AN(N30));
   XNOR2X1M U73 (.Y(n47), 
	.B(counter[2]), 
	.A(N12));
   OAI22X1M U74 (.Y(n46), 
	.B1(n1), 
	.B0(n37), 
	.A1(n37), 
	.A0(counter[1]));
   CLKNAND2X2M U75 (.Y(n38), 
	.B(n48), 
	.A(N10));
   AOI22X1M U76 (.Y(n39), 
	.B1(counter[1]), 
	.B0(n38), 
	.A1(n1), 
	.A0(n38));
   CLKXOR2X2M U77 (.Y(n43), 
	.B(counter[3]), 
	.A(N13));
   CLKXOR2X2M U78 (.Y(n42), 
	.B(counter[4]), 
	.A(N14));
   CLKXOR2X2M U79 (.Y(n41), 
	.B(counter[5]), 
	.A(N28));
   CLKXOR2X2M U80 (.Y(n40), 
	.B(counter[6]), 
	.A(N16));
   NOR4X1M U81 (.Y(n44), 
	.D(n40), 
	.C(n41), 
	.B(n42), 
	.A(n43));
   AND4X1M U82 (.Y(N18), 
	.D(n44), 
	.C(n45), 
	.B(n46), 
	.A(n47));
   OAI2B2X1M U83 (.Y(n53), 
	.B1(n49), 
	.B0(counter[1]), 
	.A1N(I_div_ratio[2]), 
	.A0(n49));
   XNOR2X1M U84 (.Y(n52), 
	.B(counter[2]), 
	.A(LTIE_LTIELO_NET));
   OAI2B2X1M U85 (.Y(n51), 
	.B1(n50), 
	.B0(I_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n50));
   NAND4BX1M U86 (.Y(n59), 
	.D(n51), 
	.C(n52), 
	.B(n53), 
	.AN(counter[7]));
   XNOR2X1M U87 (.Y(n57), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U88 (.Y(n56), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[5]));
   XNOR2X1M U89 (.Y(n55), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[4]));
   XNOR2X1M U90 (.Y(n54), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[3]));
   NAND4X1M U91 (.Y(n58), 
	.D(n54), 
	.C(n55), 
	.B(n56), 
	.A(n57));
   XNOR2X1M U92 (.Y(n70), 
	.B(N12), 
	.A(counter[2]));
   CLKXOR2X2M U98 (.Y(n64), 
	.B(counter[5]), 
	.A(N28));
   CLKXOR2X2M U99 (.Y(n63), 
	.B(counter[6]), 
	.A(N29));
   NOR4X1M U100 (.Y(n67), 
	.D(n63), 
	.C(n64), 
	.B(n42), 
	.A(n43));
   AND4X1M U101 (.Y(N31), 
	.D(n67), 
	.C(n68), 
	.B(n46), 
	.A(n70));
   clk_div_1_DW01_inc_0 r75 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		N38,
		FE_UNCONNECTED_0 }));
endmodule

module rx_DATA_WIDTH8_test_1 (
	clk, 
	rst, 
	par_type, 
	par_en, 
	rx_in, 
	Prescale, 
	parity_err, 
	stop_err, 
	data_valid, 
	p_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_sync_rst_2_M, 
	FE_OFN16_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	rx_clk_M__L3_N1);
   input clk;
   input rst;
   input par_type;
   input par_en;
   input rx_in;
   input [5:0] Prescale;
   output parity_err;
   output stop_err;
   output data_valid;
   output [7:0] p_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_sync_rst_2_M;
   input FE_OFN16_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input rx_clk_M__L3_N1;

   // Internal wires
   wire FE_OFN4_n76;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire edge_max;
   wire N29;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire \add_217/carry[4] ;
   wire \add_217/carry[3] ;
   wire \add_217/carry[2] ;
   wire \add_191/carry[5] ;
   wire \add_191/carry[4] ;
   wire \add_191/carry[3] ;
   wire \add_191/carry[2] ;
   wire n2;
   wire n6;
   wire n7;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n1;
   wire n4;
   wire [5:0] edg_cnt;
   wire [2:0] current_state;
   wire [3:0] bit_cnt;
   wire [2:0] samples;

   BUFX2M FE_OFC4_n76 (.Y(FE_OFN4_n76), 
	.A(n76));
   SDFFSQX2M \p_data_reg[6]  (.SN(FE_OFN2_sync_rst_2_M), 
	.SI(p_data[5]), 
	.SE(FE_OFN20_SE), 
	.Q(p_data[6]), 
	.D(n119), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[7]  (.SN(FE_OFN2_sync_rst_2_M), 
	.SI(p_data[6]), 
	.SE(FE_OFN20_SE), 
	.Q(p_data[7]), 
	.D(n120), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[5]  (.SN(rst), 
	.SI(p_data[4]), 
	.SE(FE_OFN20_SE), 
	.Q(p_data[5]), 
	.D(n118), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[0]  (.SN(rst), 
	.SI(edg_cnt[5]), 
	.SE(FE_OFN18_SE), 
	.Q(p_data[0]), 
	.D(n113), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[4]  (.SN(rst), 
	.SI(p_data[3]), 
	.SE(FE_OFN20_SE), 
	.Q(p_data[4]), 
	.D(n117), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[2]  (.SN(rst), 
	.SI(p_data[1]), 
	.SE(test_se), 
	.Q(p_data[2]), 
	.D(n115), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[1]  (.SN(rst), 
	.SI(p_data[0]), 
	.SE(FE_OFN20_SE), 
	.Q(p_data[1]), 
	.D(n114), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \p_data_reg[3]  (.SN(rst), 
	.SI(p_data[2]), 
	.SE(test_se), 
	.Q(p_data[3]), 
	.D(n116), 
	.CK(rx_clk_M__L3_N1));
   SDFFSQX2M \samples_reg[2]  (.SN(FE_OFN2_sync_rst_2_M), 
	.SI(samples[1]), 
	.SE(FE_OFN18_SE), 
	.Q(samples[2]), 
	.D(n123), 
	.CK(clk));
   SDFFSQX2M \samples_reg[1]  (.SN(FE_OFN2_sync_rst_2_M), 
	.SI(samples[0]), 
	.SE(FE_OFN18_SE), 
	.Q(samples[1]), 
	.D(n124), 
	.CK(clk));
   SDFFSQX2M \samples_reg[0]  (.SN(FE_OFN2_sync_rst_2_M), 
	.SI(parity_err), 
	.SE(FE_OFN18_SE), 
	.Q(samples[0]), 
	.D(n138), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(bit_cnt[3]), 
	.D(n128), 
	.CK(clk));
   SDFFRQX2M \edg_cnt_reg[0]  (.SI(data_valid), 
	.SE(FE_OFN18_SE), 
	.RN(rst), 
	.Q(edg_cnt[0]), 
	.D(n133), 
	.CK(rx_clk_M__L3_N1));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(FE_OFN18_SE), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(n137), 
	.CK(rx_clk_M__L3_N1));
   SDFFRQX2M \current_state_reg[0]  (.SI(bit_cnt[3]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(current_state[0]), 
	.D(n135), 
	.CK(clk));
   SDFFRQX2M data_valid_reg (.SI(current_state[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(data_valid), 
	.D(N29), 
	.CK(rx_clk_M__L3_N1));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(FE_OFN18_SE), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(n136), 
	.CK(rx_clk_M__L3_N1));
   SDFFRX1M parity_err_reg (.SI(p_data[7]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(n6), 
	.D(n112), 
	.CK(rx_clk_M__L3_N1));
   SDFFRX1M str_err_reg (.SI(stop_err), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.QN(test_so), 
	.Q(n175), 
	.D(n122), 
	.CK(rx_clk_M__L3_N1));
   SDFFRX1M stop_err_reg (.SI(samples[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(n7), 
	.D(n121), 
	.CK(clk));
   SDFFRQX4M \edg_cnt_reg[1]  (.SI(edg_cnt[0]), 
	.SE(FE_OFN16_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(edg_cnt[1]), 
	.D(n134), 
	.CK(clk));
   SDFFRQX4M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(bit_cnt[1]), 
	.D(n126), 
	.CK(clk));
   SDFFRQX4M \edg_cnt_reg[4]  (.SI(edg_cnt[3]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(edg_cnt[4]), 
	.D(n130), 
	.CK(clk));
   SDFFRQX4M \edg_cnt_reg[3]  (.SI(edg_cnt[2]), 
	.SE(FE_OFN16_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(edg_cnt[3]), 
	.D(n131), 
	.CK(clk));
   SDFFRQX4M \edg_cnt_reg[2]  (.SI(edg_cnt[1]), 
	.SE(FE_OFN16_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(edg_cnt[2]), 
	.D(n132), 
	.CK(clk));
   SDFFRQX4M \edg_cnt_reg[5]  (.SI(edg_cnt[4]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(edg_cnt[5]), 
	.D(n129), 
	.CK(clk));
   SDFFRQX4M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(bit_cnt[0]), 
	.D(n127), 
	.CK(rx_clk_M__L3_N1));
   SDFFRQX4M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_sync_rst_2_M), 
	.Q(bit_cnt[2]), 
	.D(n125), 
	.CK(clk));
   OR4X1M U9 (.Y(n2), 
	.D(n70), 
	.C(n71), 
	.B(n72), 
	.A(n73));
   NOR3X2M U10 (.Y(n97), 
	.C(bit_cnt[2]), 
	.B(par_en), 
	.A(bit_cnt[1]));
   NAND3XLM U11 (.Y(n100), 
	.C(bit_cnt[2]), 
	.B(n104), 
	.A(bit_cnt[1]));
   NOR3X2M U14 (.Y(N100), 
	.C(n55), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   CLKINVX2M U15 (.Y(N95), 
	.A(Prescale[1]));
   NAND3X2M U49 (.Y(n94), 
	.C(current_state[1]), 
	.B(n78), 
	.A(n88));
   NOR2X2M U50 (.Y(n77), 
	.B(FE_OFN4_n76), 
	.A(n80));
   NOR2X2M U51 (.Y(N24), 
	.B(Prescale[5]), 
	.A(n53));
   NOR3X2M U52 (.Y(n156), 
	.C(n78), 
	.B(current_state[1]), 
	.A(current_state[0]));
   CLKINVX2M U53 (.Y(n78), 
	.A(current_state[2]));
   OAI32X1M U54 (.Y(n136), 
	.B1(n87), 
	.B0(n86), 
	.A2(n85), 
	.A1(n80), 
	.A0(n84));
   ADDFX2M U55 (.CO(n85), 
	.CI(samples[0]), 
	.B(samples[2]), 
	.A(samples[1]));
   NOR4X1M U56 (.Y(edge_max), 
	.D(n62), 
	.C(n63), 
	.B(n64), 
	.A(n65));
   NOR3X2M U57 (.Y(n83), 
	.C(n87), 
	.B(current_state[2]), 
	.A(n88));
   NOR2BX2M U58 (.Y(n161), 
	.B(n111), 
	.AN(n156));
   NOR3BX2M U59 (.Y(n82), 
	.C(bit_cnt[0]), 
	.B(n93), 
	.AN(n97));
   INVX2M U60 (.Y(n93), 
	.A(bit_cnt[3]));
   CLKNAND2X2M U61 (.Y(n98), 
	.B(n96), 
	.A(FE_OFN4_n76));
   NAND2X2M U62 (.Y(n160), 
	.B(n96), 
	.A(stop_err));
   OAI21X2M U63 (.Y(n106), 
	.B0(n96), 
	.A1(n111), 
	.A0(FE_OFN4_n76));
   NAND3X2M U64 (.Y(n96), 
	.C(n88), 
	.B(n78), 
	.A(n87));
   AO21XLM U65 (.Y(n80), 
	.B0(n95), 
	.A1(n92), 
	.A0(rx_in));
   AO2B2X2M U66 (.Y(n132), 
	.B1(n95), 
	.B0(N70), 
	.A1N(n98), 
	.A0(edg_cnt[2]));
   AO2B2X2M U67 (.Y(n131), 
	.B1(n95), 
	.B0(N71), 
	.A1N(n98), 
	.A0(edg_cnt[3]));
   AO2B2X2M U68 (.Y(n130), 
	.B1(n95), 
	.B0(N72), 
	.A1N(n98), 
	.A0(edg_cnt[4]));
   AO2B2X2M U69 (.Y(n129), 
	.B1(n95), 
	.B0(N73), 
	.A1N(n98), 
	.A0(edg_cnt[5]));
   AO2B2X2M U70 (.Y(n133), 
	.B1(n95), 
	.B0(N68), 
	.A1N(n98), 
	.A0(edg_cnt[0]));
   NOR2X1M U71 (.Y(n95), 
	.B(FE_OFN4_n76), 
	.A(edge_max));
   NOR2X2M U72 (.Y(n163), 
	.B(n94), 
	.A(n111));
   CLKINVX2M U73 (.Y(n111), 
	.A(edge_max));
   INVX2M U74 (.Y(n102), 
	.A(FE_OFN4_n76));
   NOR2BX2M U75 (.Y(n57), 
	.B(edg_cnt[0]), 
	.AN(N18));
   NOR2BX2M U76 (.Y(n58), 
	.B(N18), 
	.AN(edg_cnt[0]));
   NOR2BX2M U77 (.Y(n67), 
	.B(edg_cnt[0]), 
	.AN(N95));
   NAND2BX2M U78 (.Y(n50), 
	.B(N18), 
	.AN(Prescale[1]));
   OR2X2M U79 (.Y(n53), 
	.B(Prescale[4]), 
	.A(n52));
   OR2X2M U80 (.Y(n51), 
	.B(Prescale[2]), 
	.A(n50));
   OR2X2M U81 (.Y(n52), 
	.B(Prescale[3]), 
	.A(n51));
   OAI21X2M U82 (.Y(n103), 
	.B0(n108), 
	.A1(FE_OFN4_n76), 
	.A0(bit_cnt[1]));
   MX2XLM U83 (.Y(n113), 
	.S0(n163), 
	.B(p_data[1]), 
	.A(p_data[0]));
   MX2XLM U84 (.Y(n114), 
	.S0(n163), 
	.B(p_data[2]), 
	.A(p_data[1]));
   MX2XLM U85 (.Y(n115), 
	.S0(n163), 
	.B(p_data[3]), 
	.A(p_data[2]));
   MX2XLM U86 (.Y(n116), 
	.S0(n163), 
	.B(p_data[4]), 
	.A(p_data[3]));
   MX2XLM U87 (.Y(n117), 
	.S0(n163), 
	.B(p_data[5]), 
	.A(p_data[4]));
   NOR3X2M U88 (.Y(n91), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[0]));
   NOR3BX2M U89 (.Y(n90), 
	.C(n94), 
	.B(n93), 
	.AN(par_en));
   MXI2XLM U90 (.Y(n127), 
	.S0(bit_cnt[0]), 
	.B(n106), 
	.A(n105));
   NAND2XLM U91 (.Y(n105), 
	.B(n102), 
	.A(n106));
   OAI2BB1XLM U92 (.Y(N22), 
	.B0(n53), 
	.A1N(Prescale[4]), 
	.A0N(n52));
   INVX2M U93 (.Y(n88), 
	.A(current_state[0]));
   CLKINVX2M U94 (.Y(n87), 
	.A(current_state[1]));
   NAND2XLM U95 (.Y(n174), 
	.B(n85), 
	.A(n161));
   OAI2BB1XLM U96 (.Y(N21), 
	.B0(n52), 
	.A1N(Prescale[3]), 
	.A0N(n51));
   OAI2BB1XLM U97 (.Y(N20), 
	.B0(n51), 
	.A1N(Prescale[2]), 
	.A0N(n50));
   NAND3X2M U98 (.Y(n84), 
	.C(current_state[0]), 
	.B(n78), 
	.A(n87));
   NAND2XLM U99 (.Y(n166), 
	.B(n96), 
	.A(parity_err));
   NAND2XLM U100 (.Y(n157), 
	.B(n96), 
	.A(n175));
   NAND4X2M U101 (.Y(n139), 
	.D(n144), 
	.C(n143), 
	.B(n142), 
	.A(n141));
   NAND4X2M U102 (.Y(n147), 
	.D(n152), 
	.C(n151), 
	.B(n150), 
	.A(n149));
   OR2X2M U103 (.Y(n55), 
	.B(Prescale[3]), 
	.A(n54));
   NAND2BX2M U104 (.Y(n54), 
	.B(N95), 
	.AN(Prescale[2]));
   NOR2BX2M U105 (.Y(n66), 
	.B(N95), 
	.AN(edg_cnt[0]));
   OAI2BB1XLM U106 (.Y(N97), 
	.B0(n55), 
	.A1N(Prescale[3]), 
	.A0N(n54));
   NOR3X2M U107 (.Y(n152), 
	.C(n155), 
	.B(n154), 
	.A(n153));
   NOR3X2M U108 (.Y(n144), 
	.C(n146), 
	.B(edg_cnt[5]), 
	.A(n145));
   NOR4BX1M U113 (.Y(n76), 
	.D(n83), 
	.C(n81), 
	.B(n156), 
	.AN(n84));
   INVX2M U114 (.Y(N68), 
	.A(edg_cnt[0]));
   INVX2M U115 (.Y(N18), 
	.A(Prescale[0]));
   ADDHX1M U117 (.S(N107), 
	.CO(N108), 
	.B(\add_217/carry[4] ), 
	.A(Prescale[5]));
   ADDHX1M U118 (.S(N106), 
	.CO(\add_217/carry[4] ), 
	.B(\add_217/carry[3] ), 
	.A(Prescale[4]));
   ADDHX1M U119 (.S(N105), 
	.CO(\add_217/carry[3] ), 
	.B(\add_217/carry[2] ), 
	.A(Prescale[3]));
   ADDHX1M U120 (.S(N104), 
	.CO(\add_217/carry[2] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U121 (.S(N69), 
	.CO(\add_191/carry[2] ), 
	.B(edg_cnt[0]), 
	.A(edg_cnt[1]));
   ADDHX1M U122 (.S(N70), 
	.CO(\add_191/carry[3] ), 
	.B(\add_191/carry[2] ), 
	.A(edg_cnt[2]));
   ADDHX1M U123 (.S(N71), 
	.CO(\add_191/carry[4] ), 
	.B(\add_191/carry[3] ), 
	.A(edg_cnt[3]));
   ADDHX1M U124 (.S(N72), 
	.CO(\add_191/carry[5] ), 
	.B(\add_191/carry[4] ), 
	.A(edg_cnt[4]));
   OAI2BB1X1M U125 (.Y(N19), 
	.B0(n50), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   AO21XLM U126 (.Y(N23), 
	.B0(N24), 
	.A1(Prescale[5]), 
	.A0(n53));
   CLKXOR2X2M U127 (.Y(N73), 
	.B(edg_cnt[5]), 
	.A(\add_191/carry[5] ));
   OAI2BB1X1M U128 (.Y(N96), 
	.B0(n54), 
	.A1N(Prescale[2]), 
	.A0N(Prescale[1]));
   XNOR2X1M U129 (.Y(N98), 
	.B(n55), 
	.A(Prescale[4]));
   OAI21X1M U130 (.Y(n56), 
	.B0(Prescale[5]), 
	.A1(n55), 
	.A0(Prescale[4]));
   NAND2BX1M U131 (.Y(N99), 
	.B(n56), 
	.AN(N100));
   OAI2B2X1M U132 (.Y(n61), 
	.B1(n57), 
	.B0(N19), 
	.A1N(edg_cnt[1]), 
	.A0(n57));
   XNOR2X1M U133 (.Y(n60), 
	.B(edg_cnt[5]), 
	.A(N23));
   OAI2B2X1M U134 (.Y(n59), 
	.B1(n58), 
	.B0(edg_cnt[1]), 
	.A1N(N19), 
	.A0(n58));
   NAND4BX1M U135 (.Y(n65), 
	.D(n59), 
	.C(n60), 
	.B(n61), 
	.AN(N24));
   CLKXOR2X2M U136 (.Y(n64), 
	.B(edg_cnt[4]), 
	.A(N22));
   CLKXOR2X2M U137 (.Y(n63), 
	.B(edg_cnt[2]), 
	.A(N20));
   CLKXOR2X2M U138 (.Y(n62), 
	.B(edg_cnt[3]), 
	.A(N21));
   OAI2B2X1M U139 (.Y(n69), 
	.B1(n66), 
	.B0(edg_cnt[1]), 
	.A1N(N96), 
	.A0(n66));
   OAI2B2X1M U140 (.Y(n68), 
	.B1(n67), 
	.B0(N96), 
	.A1N(edg_cnt[1]), 
	.A0(n67));
   NAND4BBX1M U141 (.Y(n73), 
	.D(n68), 
	.C(n69), 
	.BN(edg_cnt[5]), 
	.AN(N100));
   CLKXOR2X2M U142 (.Y(n72), 
	.B(edg_cnt[4]), 
	.A(N99));
   CLKXOR2X2M U143 (.Y(n71), 
	.B(edg_cnt[2]), 
	.A(N97));
   CLKXOR2X2M U144 (.Y(n70), 
	.B(edg_cnt[3]), 
	.A(N98));
   OAI21X1M U145 (.Y(n138), 
	.B0(n75), 
	.A1(n74), 
	.A0(n2));
   OAI21X1M U146 (.Y(n75), 
	.B0(samples[0]), 
	.A1(n2), 
	.A0(FE_OFN4_n76));
   OAI22X1M U147 (.Y(n137), 
	.B1(n80), 
	.B0(n79), 
	.A1(n78), 
	.A0(n77));
   AOI21X1M U148 (.Y(n79), 
	.B0(n83), 
	.A1(n82), 
	.A0(n81));
   OAI22X1M U149 (.Y(n135), 
	.B1(n80), 
	.B0(n89), 
	.A1(n88), 
	.A0(n86));
   AOI21X1M U150 (.Y(n89), 
	.B0(n92), 
	.A1(n91), 
	.A0(n90));
   OA21X1M U151 (.Y(n86), 
	.B0(n77), 
	.A1(n94), 
	.A0(n82));
   CLKINVX1M U152 (.Y(n92), 
	.A(n96));
   OAI2BB2X1M U153 (.Y(n134), 
	.B1(n99), 
	.B0(n98), 
	.A1N(n95), 
	.A0N(N69));
   MXI2X1M U154 (.Y(n128), 
	.S0(bit_cnt[3]), 
	.B(n101), 
	.A(n100));
   AOI2B1X1M U155 (.Y(n101), 
	.B0(n103), 
	.A1N(bit_cnt[2]), 
	.A0(n102));
   MXI2X1M U156 (.Y(n126), 
	.S0(bit_cnt[1]), 
	.B(n108), 
	.A(n107));
   MXI2X1M U157 (.Y(n125), 
	.S0(bit_cnt[2]), 
	.B(n110), 
	.A(n109));
   CLKINVX1M U158 (.Y(n110), 
	.A(n103));
   OA21X1M U159 (.Y(n108), 
	.B0(n106), 
	.A1(FE_OFN4_n76), 
	.A0(bit_cnt[0]));
   CLKNAND2X2M U160 (.Y(n109), 
	.B(n104), 
	.A(bit_cnt[1]));
   CLKINVX1M U161 (.Y(n104), 
	.A(n107));
   NAND3X1M U162 (.Y(n107), 
	.C(bit_cnt[0]), 
	.B(n102), 
	.A(n106));
   OAI21X1M U163 (.Y(n124), 
	.B0(n140), 
	.A1(n139), 
	.A0(n74));
   OAI21X1M U164 (.Y(n140), 
	.B0(samples[1]), 
	.A1(n139), 
	.A0(FE_OFN4_n76));
   CLKXOR2X2M U165 (.Y(n146), 
	.B(Prescale[1]), 
	.A(edg_cnt[0]));
   CLKXOR2X2M U166 (.Y(n145), 
	.B(Prescale[5]), 
	.A(edg_cnt[4]));
   XNOR2X1M U167 (.Y(n143), 
	.B(Prescale[3]), 
	.A(edg_cnt[2]));
   XNOR2X1M U168 (.Y(n142), 
	.B(Prescale[4]), 
	.A(edg_cnt[3]));
   CLKXOR2X2M U169 (.Y(n141), 
	.B(Prescale[2]), 
	.A(n99));
   CLKINVX1M U170 (.Y(n99), 
	.A(edg_cnt[1]));
   OAI21X1M U171 (.Y(n123), 
	.B0(n148), 
	.A1(n147), 
	.A0(n74));
   OAI21X1M U172 (.Y(n148), 
	.B0(samples[2]), 
	.A1(n147), 
	.A0(FE_OFN4_n76));
   CLKXOR2X2M U173 (.Y(n155), 
	.B(N107), 
	.A(edg_cnt[4]));
   CLKXOR2X2M U174 (.Y(n154), 
	.B(N104), 
	.A(edg_cnt[1]));
   CLKXOR2X2M U175 (.Y(n153), 
	.B(N95), 
	.A(edg_cnt[0]));
   XNOR2X1M U176 (.Y(n151), 
	.B(N105), 
	.A(edg_cnt[2]));
   XNOR2X1M U177 (.Y(n150), 
	.B(N106), 
	.A(edg_cnt[3]));
   XNOR2X1M U178 (.Y(n149), 
	.B(N108), 
	.A(edg_cnt[5]));
   CLKNAND2X2M U179 (.Y(n74), 
	.B(n102), 
	.A(rx_in));
   CLKINVX1M U180 (.Y(n81), 
	.A(n94));
   MXI2X1M U181 (.Y(n122), 
	.S0(n159), 
	.B(n158), 
	.A(n157));
   NOR2X1M U182 (.Y(n159), 
	.B(n111), 
	.A(n84));
   MXI2X1M U183 (.Y(n121), 
	.S0(n161), 
	.B(n85), 
	.A(n160));
   MXI2X1M U184 (.Y(n120), 
	.S0(n163), 
	.B(n158), 
	.A(n162));
   CLKINVX1M U185 (.Y(n158), 
	.A(n85));
   MXI2X1M U186 (.Y(n119), 
	.S0(n163), 
	.B(n162), 
	.A(n164));
   CLKINVX1M U187 (.Y(n162), 
	.A(p_data[7]));
   MXI2X1M U188 (.Y(n118), 
	.S0(n163), 
	.B(n164), 
	.A(n165));
   CLKINVX1M U189 (.Y(n164), 
	.A(p_data[6]));
   MXI2X1M U190 (.Y(n112), 
	.S0(n168), 
	.B(n167), 
	.A(n166));
   NOR2BX1M U191 (.Y(n168), 
	.B(n111), 
	.AN(n83));
   XOR3XLM U192 (.Y(n167), 
	.C(n170), 
	.B(n165), 
	.A(n169));
   XOR3XLM U193 (.Y(n170), 
	.C(n173), 
	.B(n172), 
	.A(n171));
   XOR3XLM U194 (.Y(n173), 
	.C(n85), 
	.B(p_data[0]), 
	.A(p_data[1]));
   CLKXOR2X2M U195 (.Y(n172), 
	.B(p_data[2]), 
	.A(p_data[3]));
   CLKXOR2X2M U196 (.Y(n171), 
	.B(p_data[4]), 
	.A(par_type));
   CLKINVX1M U197 (.Y(n165), 
	.A(p_data[5]));
   CLKXOR2X2M U198 (.Y(n169), 
	.B(p_data[6]), 
	.A(p_data[7]));
   NOR4X1M U199 (.Y(N29), 
	.D(parity_err), 
	.C(stop_err), 
	.B(n175), 
	.A(n174));
   INVXLM U3 (.Y(n1), 
	.A(n6));
   INVX3M U4 (.Y(parity_err), 
	.A(n1));
   INVXLM U5 (.Y(n4), 
	.A(n7));
   INVX3M U6 (.Y(stop_err), 
	.A(n4));
endmodule

module Tx_DATA_WIDTH8_test_1 (
	clk, 
	rst, 
	par_type, 
	par_enable, 
	data_valid, 
	p_data, 
	tx_out, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN16_SE, 
	FE_OFN20_SE, 
	tx_rx_clk_M__L4_N1);
   input clk;
   input rst;
   input par_type;
   input par_enable;
   input data_valid;
   input [7:0] p_data;
   output tx_out;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN16_SE;
   input FE_OFN20_SE;
   input tx_rx_clk_M__L4_N1;

   // Internal wires
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n22;
   wire n68;
   wire n69;
   wire n70;
   wire n72;
   wire n73;
   wire n74;
   wire n77;
   wire n80;
   wire n81;
   wire [7:0] shift_reg;
   wire [2:0] count;
   wire [2:0] current_state;

   assign test_so = shift_reg[7] ;

   OAI22X1M U52 (.Y(n47), 
	.B1(n69), 
	.B0(n50), 
	.A1(n25), 
	.A0(data_valid));
   SDFFRQX2M \shift_reg_reg[5]  (.SI(shift_reg[4]), 
	.SE(FE_OFN16_SE), 
	.RN(rst), 
	.Q(shift_reg[5]), 
	.D(n56), 
	.CK(clk));
   SDFFRQX2M \shift_reg_reg[1]  (.SI(shift_reg[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(shift_reg[1]), 
	.D(n61), 
	.CK(clk));
   SDFFRQX2M \shift_reg_reg[4]  (.SI(shift_reg[3]), 
	.SE(FE_OFN16_SE), 
	.RN(rst), 
	.Q(shift_reg[4]), 
	.D(n57), 
	.CK(clk));
   SDFFRQX2M \shift_reg_reg[0]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(shift_reg[0]), 
	.D(n60), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \shift_reg_reg[3]  (.SI(shift_reg[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(shift_reg[3]), 
	.D(n58), 
	.CK(clk));
   SDFFRQX2M \shift_reg_reg[6]  (.SI(shift_reg[5]), 
	.SE(FE_OFN16_SE), 
	.RN(rst), 
	.Q(shift_reg[6]), 
	.D(n55), 
	.CK(clk));
   SDFFRQX2M \shift_reg_reg[2]  (.SI(shift_reg[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(shift_reg[2]), 
	.D(n59), 
	.CK(clk));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(FE_OFN20_SE), 
	.RN(rst), 
	.Q(count[2]), 
	.D(n62), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(FE_OFN20_SE), 
	.RN(rst), 
	.Q(count[1]), 
	.D(n63), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(n66), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \current_state_reg[0]  (.SI(count[2]), 
	.SE(FE_OFN20_SE), 
	.RN(rst), 
	.Q(current_state[0]), 
	.D(n67), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(rst), 
	.Q(count[0]), 
	.D(n64), 
	.CK(tx_rx_clk_M__L4_N1));
   SDFFRQX4M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(FE_OFN20_SE), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(n65), 
	.CK(tx_rx_clk_M__L4_N1));
   NAND2X2M U18 (.Y(n25), 
	.B(n68), 
	.A(n53));
   INVX2M U19 (.Y(n70), 
	.A(current_state[1]));
   INVX2M U20 (.Y(n68), 
	.A(current_state[0]));
   NOR2X2M U21 (.Y(n53), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR2BX2M U23 (.Y(n45), 
	.B(n47), 
	.AN(n24));
   NAND2BX2M U24 (.Y(n34), 
	.B(n69), 
	.AN(n35));
   NAND4X2M U27 (.Y(n24), 
	.D(n52), 
	.C(n23), 
	.B(n69), 
	.A(n22));
   AND2X2M U28 (.Y(n52), 
	.B(n25), 
	.A(n48));
   NAND4X2M U29 (.Y(busy), 
	.D(n51), 
	.C(n22), 
	.B(n24), 
	.A(n69));
   AND2X2M U30 (.Y(n51), 
	.B(n48), 
	.A(n23));
   INVX2M U31 (.Y(n22), 
	.A(n27));
   CLKINVX1M U32 (.Y(n69), 
	.A(n29));
   NOR3X2M U33 (.Y(n50), 
	.C(n73), 
	.B(n72), 
	.A(n74));
   OAI221X1M U34 (.Y(n67), 
	.C0(n49), 
	.B1(n68), 
	.B0(n45), 
	.A1(n47), 
	.A0(n25));
   OAI211X2M U35 (.Y(n66), 
	.C0(n49), 
	.B0(n48), 
	.A1(n70), 
	.A0(n45));
   NOR2BX2M U37 (.Y(n35), 
	.B(busy), 
	.AN(data_valid));
   NOR3X2M U39 (.Y(n27), 
	.C(n68), 
	.B(current_state[2]), 
	.A(n70));
   NAND3X2M U40 (.Y(n23), 
	.C(current_state[2]), 
	.B(n70), 
	.A(n68));
   NAND2X2M U41 (.Y(n48), 
	.B(current_state[0]), 
	.A(n53));
   NOR3X4M U43 (.Y(n29), 
	.C(n70), 
	.B(current_state[2]), 
	.A(current_state[0]));
   OAI32X1M U44 (.Y(n63), 
	.B1(n73), 
	.B0(n43), 
	.A2(n69), 
	.A1(count[1]), 
	.A0(n72));
   NAND3BX2M U45 (.Y(n49), 
	.C(par_enable), 
	.B(n29), 
	.AN(n47));
   OAI2B2X1M U46 (.Y(n65), 
	.B1(n47), 
	.B0(n46), 
	.A1N(current_state[2]), 
	.A0(n45));
   AOI2BB1X2M U47 (.Y(n46), 
	.B0(n27), 
	.A1N(n69), 
	.A0N(par_enable));
   OAI22X1M U48 (.Y(n62), 
	.B1(n69), 
	.B0(n44), 
	.A1(n74), 
	.A0(n43));
   AOI32X1M U49 (.Y(n44), 
	.B1(n73), 
	.B0(count[2]), 
	.A2(count[1]), 
	.A1(n74), 
	.A0(n80));
   OAI22X1M U50 (.Y(n64), 
	.B1(n69), 
	.B0(count[0]), 
	.A1(n72), 
	.A0(n34));
   OAI2B1X2M U51 (.Y(n59), 
	.B0(n40), 
	.A1N(shift_reg[2]), 
	.A0(n34));
   AOI22X1M U53 (.Y(n40), 
	.B1(shift_reg[3]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[2]));
   OAI2B1X2M U54 (.Y(n55), 
	.B0(n36), 
	.A1N(shift_reg[6]), 
	.A0(n34));
   AOI22X1M U55 (.Y(n36), 
	.B1(n81), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[6]));
   OAI2B1X2M U56 (.Y(n60), 
	.B0(n41), 
	.A1N(shift_reg[0]), 
	.A0(n34));
   AOI22X1M U57 (.Y(n41), 
	.B1(shift_reg[1]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[0]));
   OAI2B1X2M U58 (.Y(n61), 
	.B0(n42), 
	.A1N(shift_reg[1]), 
	.A0(n34));
   AOI22X1M U59 (.Y(n42), 
	.B1(shift_reg[2]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[1]));
   OAI2B1X2M U60 (.Y(n58), 
	.B0(n39), 
	.A1N(shift_reg[3]), 
	.A0(n34));
   AOI22X1M U61 (.Y(n39), 
	.B1(shift_reg[4]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[3]));
   OAI2B1X2M U62 (.Y(n57), 
	.B0(n38), 
	.A1N(shift_reg[4]), 
	.A0(n34));
   AOI22X1M U63 (.Y(n38), 
	.B1(shift_reg[5]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[4]));
   OAI2B1X2M U64 (.Y(n56), 
	.B0(n37), 
	.A1N(shift_reg[5]), 
	.A0(n34));
   AOI22X1M U65 (.Y(n37), 
	.B1(shift_reg[6]), 
	.B0(n29), 
	.A1(n35), 
	.A0(p_data[5]));
   OAI2BB2X1M U66 (.Y(n54), 
	.B1(n34), 
	.B0(n77), 
	.A1N(n35), 
	.A0N(p_data[7]));
   OA21X2M U67 (.Y(n43), 
	.B0(n34), 
	.A1(count[0]), 
	.A0(n69));
   INVX2M U68 (.Y(n72), 
	.A(count[0]));
   INVX2M U69 (.Y(n74), 
	.A(count[2]));
   INVX2M U70 (.Y(n73), 
	.A(count[1]));
   NAND4X4M U72 (.Y(tx_out), 
	.D(n26), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   AOI22X1M U73 (.Y(n26), 
	.B1(shift_reg[0]), 
	.B0(n29), 
	.A1(n28), 
	.A0(n27));
   XOR3XLM U74 (.Y(n28), 
	.C(par_type), 
	.B(n31), 
	.A(n30));
   XOR3XLM U75 (.Y(n30), 
	.C(n33), 
	.B(shift_reg[4]), 
	.A(shift_reg[5]));
   XNOR2X2M U76 (.Y(n33), 
	.B(shift_reg[6]), 
	.A(n77));
   XOR3XLM U77 (.Y(n31), 
	.C(n32), 
	.B(shift_reg[0]), 
	.A(shift_reg[1]));
   CLKXOR2X2M U78 (.Y(n32), 
	.B(shift_reg[2]), 
	.A(shift_reg[3]));
   INVXLM U79 (.Y(n77), 
	.A(shift_reg[7]));
   INVXLM U82 (.Y(n80), 
	.A(n72));
   INVXLM U83 (.Y(n81), 
	.A(n77));
   SDFFRQX4M \shift_reg_reg[7]  (.SI(shift_reg[6]), 
	.SE(FE_OFN16_SE), 
	.RN(rst), 
	.Q(shift_reg[7]), 
	.D(n54), 
	.CK(clk));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire sig_delay;

   assign test_so = sig_delay ;

   SDFFRQX2M sig_delay_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sig_delay), 
	.D(LVL_SIG), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(PULSE_SIG), 
	.B(LVL_SIG), 
	.AN(sig_delay));
endmodule

