module SYS_TOP #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
  )(
    input  wire REF_CLK,    // 50 MHz
    input  wire UART_CLK,   // 3.6864 MHz
    input  wire RST,        // Active Low Asynchronous Reset
    input  wire RX_IN,

    output wire TX_OUT,
    output wire PAR_ERR,
    output wire STP_ERR
  );


  // Internal wires

  // Reset Synchronizers
  wire sync_rst_1;
  wire sync_rst_2;

  // Clock Gating & Divider
  wire alu_clk;
  wire tx_rx_clk;
  wire rx_clk;            // EDITED: RX oversampling clock (UART_CLK / rx_div_ratio)


  // RegFile
  wire [DATA_WIDTH-1:0] reg0_op_a;
  wire [DATA_WIDTH-1:0] reg1_op_b;
  wire [DATA_WIDTH-1:0] reg2_uart_cfg;
  wire [DATA_WIDTH-1:0] reg3_div_ratio;
  wire [DATA_WIDTH-1:0] rf_rd_data;
  wire                  rf_rd_valid;

  // Unpacking REG2 for UART Config
  wire       uart_par_en   = reg2_uart_cfg[0];
  wire       uart_par_typ  = reg2_uart_cfg[1];
  wire [5:0] uart_prescale = reg2_uart_cfg[7:2];

  // SYS_CTRL Outputs
  wire [3:0]            alu_fun;
  wire                  alu_en;
  wire                  clk_en;
  wire [ADDR_WIDTH-1:0] rf_addr;
  wire                  rf_wr_en;
  wire                  rf_rd_en;
  wire [DATA_WIDTH-1:0] rf_wr_data;
  wire [DATA_WIDTH-1:0] tx_p_data_ctrl;
  wire                  tx_d_vld_ctrl;

  // ALU
  wire [2*DATA_WIDTH-1:0] alu_out;
  wire                    alu_out_valid;

  // UART RX
  wire [DATA_WIDTH-1:0] rx_p_data;
  wire                  rx_data_vld;

  // DATA_SYNC (RX to SYS_CTRL)
  wire [DATA_WIDTH-1:0] sync_rx_p_data;
  wire                  sync_rx_d_vld;

  // ASYNC FIFO (SYS_CTRL to UART TX)
  wire [DATA_WIDTH-1:0] fifo_rd_data;
  wire                  fifo_empty;
  wire                  fifo_full;
  wire                  tx_busy;
  wire                  fifo_rd_inc;
  reg                   fifo_rd_wait;

  // Clock Domain 1 (REF_CLK) Instantiations


  rst_synchronizer u_rst_sync_1 (
                     .clk(REF_CLK),
                     .rst(RST),
                     .synch_rst(sync_rst_1)
                   );

  // EDITED: was .en(alu_clk_en) -> undeclared net. SYS_CTRL drives clk_en.
  clk_gating g_clk (.clk(REF_CLK), .en(clk_en), .gclk(alu_clk));

  Reg_file #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) u_reg_file (
             .CLK(REF_CLK),
             .RST(sync_rst_1),
             .Address(rf_addr),
             .WrEn(rf_wr_en),
             .RdEn(rf_rd_en),
             .WrData(rf_wr_data),
             .RdData(rf_rd_data),
             .RdData_Valid(rf_rd_valid),
             .REG0(reg0_op_a),
             .REG1(reg1_op_b),
             .REG2(reg2_uart_cfg),
             .REG3(reg3_div_ratio)
           );

  ALU #(.WIDTH(DATA_WIDTH)) u_alu (
        .CLK(alu_clk),
        .RST(sync_rst_1),
        .A(reg0_op_a),
        .B(reg1_op_b),
        .ALU_FUN(alu_fun),
        .Enable(alu_en),
        .ALU_OUT(alu_out),
        .OUT_VALID(alu_out_valid)
      );

wire clk_div_en;


  SYS_CTRL #(ADDR_WIDTH, DATA_WIDTH) u_sys_ctrl (
             .CLK(REF_CLK),
             .RST(sync_rst_1),
             .ALU_OUT(alu_out),
             .OUT_VALID(alu_out_valid),
             .ALU_FUN(alu_fun),
             .ALU_EN(alu_en),
             .CLK_EN(clk_en),
             .Address(rf_addr),
             .WrEn(rf_wr_en),
             .RdEn(rf_rd_en),
             .WrData(rf_wr_data),
             .RdData(rf_rd_data),
             .RdData_Valid(rf_rd_valid),
             .RX_P_DATA(sync_rx_p_data),
             .RX_P_VALID(sync_rx_d_vld),
             .FIFO_FULL(fifo_full),
             .TX_P_DATA(tx_p_data_ctrl),
             .TX_P_VALID(tx_d_vld_ctrl),
             .clk_div_en(clk_div_en)
           );

  // Domain Bridging

  data_synch #(DATA_WIDTH, 2) u_data_sync (
               .bus_enable(rx_data_vld),
               .dest_clk(REF_CLK),
               .dest_rst(sync_rst_1),
               .unsync_bus(rx_p_data),
               .enable_pulse_d(sync_rx_d_vld),
               .sync_bus(sync_rx_p_data)
             );

  // ASYNC FIFO - Write side is REF_CLK, Read side is tx_rx_clk
  always @(posedge tx_rx_clk or negedge sync_rst_2) begin
    if (!sync_rst_2)
      fifo_rd_wait <= 1'b0;
    else
      fifo_rd_wait <= fifo_rd_inc;
  end

  fifo #(.DATA_WIDTH(DATA_WIDTH), .NUM_ADDR_BITS(4)) u_async_fifo (
               .W_CLK(REF_CLK),
               .W_RST(sync_rst_1),
               .W_INC(tx_d_vld_ctrl),
               .WR_DATA(tx_p_data_ctrl),

               .R_CLK(tx_rx_clk),
               .R_RST(sync_rst_2),
               .R_INC(fifo_rd_inc),
               .RD_DATA(fifo_rd_data),

               .FULL(fifo_full),
               .EMPTY(fifo_empty)
             );

  // Clock Domain 2 (UART_CLK) Instantiations

  rst_synchronizer u_rst_sync_2 (
                     .clk(UART_CLK),
                     .rst(RST),
                     .synch_rst(sync_rst_2)
                   );

  // TX baud clock: UART_CLK / REG3 (default 32 -> 115.2 kHz)
  clk_div u_clk_div (
            .I_ref_clk(UART_CLK),
            .I_rst_n(sync_rst_2),
            .I_clk_en(clk_div_en),                // EDITED: spec says divider is always on
            .I_div_ratio(reg3_div_ratio),
            .o_div_clk(tx_rx_clk)
          );

  // EDITED: RX oversampling clock. RX needs Prescale ticks per bit, bit time = REG3 UART_CLK cycles
  // RX_CLK = UART_CLK * Prescale / Div_Ratio. Assumes REG3 = 32 (baud 115.2k).
  //   Prescale 32 -> /1,  16 -> /2,  8 -> /4
  reg [7:0] rx_div_ratio;
  always @(*) begin
    case (uart_prescale)
      6'd32:   rx_div_ratio = 8'd1;
      6'd16:   rx_div_ratio = 8'd2;
      6'd8:    rx_div_ratio = 8'd4;
      default: rx_div_ratio = 8'd1;
    endcase
  end

  clk_div u_clk_div_rx (
            .I_ref_clk(UART_CLK),
            .I_rst_n(sync_rst_2),
            .I_clk_en(clk_div_en),
            .I_div_ratio(rx_div_ratio),
            .o_div_clk(rx_clk)
          );

  rx #(.DATA_WIDTH(DATA_WIDTH)) u_uart_rx (
            .clk(rx_clk),                   // EDITED: divided oversampling clock
            .rst(sync_rst_2),
            .Prescale(uart_prescale),
            .par_type(uart_par_typ),
            .par_en(uart_par_en),
            .rx_in(RX_IN),
            .parity_err(PAR_ERR),
            .stop_err(STP_ERR),
            .data_valid(rx_data_vld),
            .p_data(rx_p_data)
          );

  Tx #(.DATA_WIDTH(DATA_WIDTH)) u_uart_tx (
            .clk(tx_rx_clk),
            .rst(sync_rst_2),
            .par_type(uart_par_typ),
            .par_enable(uart_par_en),
            .data_valid(~fifo_empty && !fifo_rd_inc && !fifo_rd_wait), // wait for the new FIFO word to reach RD_DATA.
            .p_data(fifo_rd_data),
            .tx_out(TX_OUT),
            .busy(tx_busy)
          );

  PULSE_GEN u_pulse_gen (
              .CLK(tx_rx_clk),
              .RST(sync_rst_2),
              .LVL_SIG(tx_busy),
              .PULSE_SIG(fifo_rd_inc) // Triggers FIFO read when Busy drops
            );

endmodule
