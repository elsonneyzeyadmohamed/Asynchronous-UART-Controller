module fifo_mem_cntrl #(
    parameter DATA_WIDTH = 8,
    parameter NUM_ADDR_BITS = 3
  )(
    input W_CLK,
    input W_INC,
    input wfull,
    input      [NUM_ADDR_BITS-1:0] w_addr,
    input      [DATA_WIDTH-1:0]   wdata,

    input      [NUM_ADDR_BITS-1:0] r_addr,
    output     [DATA_WIDTH-1:0]   rdata
  );

  localparam DEPTH = 1 << NUM_ADDR_BITS; //depth of the FIFO

  // 2D ram array to hold the FIFO data
  reg [DATA_WIDTH-1:0] mem [DEPTH-1:0];

  always @(posedge W_CLK)
  begin
    if (W_INC && !wfull)
      mem[w_addr] <= wdata;
  end

  // read data from the FIFO memory
  assign rdata = mem[r_addr];


endmodule
