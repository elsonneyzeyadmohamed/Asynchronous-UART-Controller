module FIFO_RD #(parameter NUM_ADDR_BITS = 3)
  ( input R_CLK ,
    input R_RST ,
    input R_INC
    ,
    input [NUM_ADDR_BITS:0] rq_wptr, // received from write register

    output reg rempty,
    output reg[NUM_ADDR_BITS-1:0] r_addr,
    output reg [NUM_ADDR_BITS:0] r_ptr   // sent to write
  );

  reg [NUM_ADDR_BITS:0] rbin;
  reg [NUM_ADDR_BITS:0] rbin_next;
  reg [NUM_ADDR_BITS:0] gray_next;
  reg rempty_next;

  always @(*)
  begin
    if(R_INC && !rempty)
    begin
      rbin_next = rbin + 1;
    end
    else
    begin
      rbin_next = rbin;
    end

    gray_next = (rbin_next>>1) ^ rbin_next;  // gray conversion

    if(gray_next == rq_wptr)
      rempty_next = 1'b1;
    else
      rempty_next = 1'b0;

  end

  always @(posedge R_CLK or negedge R_RST)
  begin
    if (!R_RST)
    begin
      rbin  <= 0;
      r_ptr <= 0;
      rempty <= 1'b1;
      r_addr <= 0;
    end
    else
    begin
      rbin  <= rbin_next;
      r_ptr <= gray_next;
      rempty <= rempty_next;
      r_addr <= rbin_next[NUM_ADDR_BITS-1:0];
    end
  end
endmodule
