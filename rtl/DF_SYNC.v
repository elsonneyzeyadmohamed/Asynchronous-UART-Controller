module DF_SYNC #(parameter NUM_ADDR_BITS = 3)(
    input clk,
    input rst_n,
    input [NUM_ADDR_BITS:0] unsynchronized_in,
    output reg [NUM_ADDR_BITS:0] synchronized_out
  );

  reg [NUM_ADDR_BITS:0] second_stage;

  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
    begin
      synchronized_out <= 0;
      second_stage <= 0;
    end
    else
    begin
      second_stage <= unsynchronized_in;
      synchronized_out <= second_stage;
    end
  end
endmodule
