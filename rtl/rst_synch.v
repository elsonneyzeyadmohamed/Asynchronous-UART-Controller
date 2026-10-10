module rst_synchronizer #(
    parameter NUM_STAGES = 2 // Parameter for Flip Flop Stages
  )(
    input  clk,      // Destination domain clock
    input  rst,      // Active-low asynchronous reset
    output wire synch_rst  // Synchronized Reset
  );
  reg [NUM_STAGES-1:0] Q;

  always@(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      Q <= {NUM_STAGES{1'b0}};  // rst applies for all flipflops
    end
    else
    begin
      Q <= {Q[NUM_STAGES-2:0], 1'b1};

    end
  end
  assign synch_rst = Q[NUM_STAGES-1];



endmodule
