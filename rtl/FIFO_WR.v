module FIFO_WR #(parameter NUM_ADDR_BITS = 3)
  ( input W_CLK ,
    input W_RST ,
    input W_INC,
    input [NUM_ADDR_BITS:0] wq_rptr, // received from read register

    output reg wfull,
    output reg [NUM_ADDR_BITS-1:0] w_addr,
    output reg [NUM_ADDR_BITS:0] w_ptr   // sent to read
  );
  // wfull is 1 when wq_rptr and w_ptr equal
  // wq_rptr has info of read register
  // w_inc increments the address looking at
  // w_ptr outputs write reg info
  // Before convert to gray here

  reg [NUM_ADDR_BITS:0] wbin;
  reg [NUM_ADDR_BITS:0] wbin_next;
  reg [NUM_ADDR_BITS:0] gray_next;
  reg wfull_next;

  always @(*)
  begin
    if(W_INC && !wfull)
    begin
      wbin_next = wbin + 1;
    end
    else
    begin
      wbin_next = wbin;
    end
    gray_next = (wbin_next>>1) ^ wbin_next;  // gray conversion
    if ( (gray_next[NUM_ADDR_BITS]     != wq_rptr[NUM_ADDR_BITS]) &&
         (gray_next[NUM_ADDR_BITS-1]   != wq_rptr[NUM_ADDR_BITS-1]) &&
         (gray_next[NUM_ADDR_BITS-2:0] == wq_rptr[NUM_ADDR_BITS-2:0]) )
      wfull_next = 1'b1;
    else
      wfull_next = 1'b0;
  end

  always @(posedge W_CLK or negedge W_RST)
  begin
    if (!W_RST)
    begin
      wbin  <= 0;
      w_ptr <= 0;
      wfull <= 1'b0;
      w_addr <= 0;
    end
    else
    begin
      wbin  <= wbin_next;
      w_ptr <= gray_next;
      wfull <= wfull_next;
      w_addr <= wbin_next[NUM_ADDR_BITS-1:0];
    end
  end




endmodule
