module fifo #(
    parameter DATA_WIDTH = 8,
    parameter NUM_ADDR_BITS = 3
  ) (
    input W_CLK,
    input W_RST,
    input W_INC,
    input R_CLK,
    input R_RST,
    input R_INC,
    input      [DATA_WIDTH-1 : 0] WR_DATA,
    output reg [DATA_WIDTH-1 : 0] RD_DATA,
    output reg FULL,
    output reg EMPTY
  );

  // Internal wires connecting the sub-modules
  wire [NUM_ADDR_BITS-1:0] w_addr, r_addr;
  wire [NUM_ADDR_BITS:0]   w_ptr, r_ptr;
  wire [NUM_ADDR_BITS:0]   wq2_rptr, rq2_wptr;

  // Wires to catch the outputs from the sub-modules before registering
  wire                     internal_full, internal_empty;
  wire [DATA_WIDTH-1:0]    internal_rd_data;

  // registering write
  always @(posedge W_CLK or negedge W_RST)
  begin
    if (!W_RST)
    begin
      FULL <= 1'b0;
    end
    else
    begin
      FULL <= internal_full;
    end
  end

  // Registering read output

  always @(posedge R_CLK or negedge R_RST)
  begin
    if (!R_RST)
    begin
      EMPTY   <= 1'b1;
      RD_DATA <= 0;
    end
    else
    begin
      EMPTY   <= internal_empty;
      RD_DATA <= internal_rd_data;
    end
  end

  // 1 Write Controller
  FIFO_WR #( .NUM_ADDR_BITS(NUM_ADDR_BITS) ) u_FIFO_WR (
            .W_CLK   (W_CLK),
            .W_RST   (W_RST),
            .W_INC   (W_INC),
            .wq_rptr (wq2_rptr),
            .wfull   (internal_full), // Connect to internal wire
            .w_addr  (w_addr),
            .w_ptr   (w_ptr)
          );

  // 2 Read Controller
  FIFO_RD #( .NUM_ADDR_BITS(NUM_ADDR_BITS) ) u_FIFO_RD (
            .R_CLK   (R_CLK),
            .R_RST   (R_RST),
            .R_INC   (R_INC),
            .rq_wptr (rq2_wptr),
            .rempty  (internal_empty), // Connect to internal wire
            .r_addr  (r_addr),
            .r_ptr   (r_ptr)
          );

  //4 Synchronization of write pointer to read clock
  DF_SYNC #( .NUM_ADDR_BITS(NUM_ADDR_BITS) ) u_DF_SYNC_W2R (
            .clk   (R_CLK),
            .rst_n (R_RST),
            .unsynchronized_in (w_ptr),
            .synchronized_out  (rq2_wptr)
          );

  //4 Synchronization of read pointer to write clock
  DF_SYNC #( .NUM_ADDR_BITS(NUM_ADDR_BITS) ) u_DF_SYNC_R2W (
            .clk   (W_CLK),
            .rst_n (W_RST),
            .unsynchronized_in (r_ptr),
            .synchronized_out  (wq2_rptr)
          );

  //5 FIFO memory control
  fifo_mem_cntrl #( .DATA_WIDTH(DATA_WIDTH), .NUM_ADDR_BITS(NUM_ADDR_BITS) ) u_fifo_mem_cntrl (
                   .W_CLK  (W_CLK),
                   .W_INC  (W_INC),
                   .wfull  (internal_full), // Connect to internal wire
                   .w_addr (w_addr),
                   .wdata  (WR_DATA),
                   .r_addr (r_addr),
                   .rdata  (internal_rd_data) // Connect to internal wire
                 );

endmodule
