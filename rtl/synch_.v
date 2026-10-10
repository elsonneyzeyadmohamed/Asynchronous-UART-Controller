module data_synch #(
    parameter BUS_WIDTH  = 8,
    parameter NUM_STAGES = 2  // Changed to 2, standard for multi-flop synchronizers
  )(
    input  wire                 bus_enable,
    input  wire                 dest_clk,
    input  wire                 dest_rst,
    input  wire [BUS_WIDTH-1:0] unsync_bus,

    output wire                 enable_pulse_d, // EDITED: this pulse is driven by the edge detector below.
    output reg  [BUS_WIDTH-1:0] sync_bus
  );

  // Internal signals
  reg [NUM_STAGES-1:0] sync_stages;
  reg sync_enable_delay;
  reg sync_enable_delay2; // EDITED: wait for the bus latch before raising its valid pulse.

  // 1. Multi-flop synchronizer for the enable signal
  always @(posedge dest_clk or negedge dest_rst)
  begin
    if(!dest_rst)
    begin
      sync_stages <= {NUM_STAGES{1'b0}};
    end
    else
    begin
      sync_stages <= {sync_stages[NUM_STAGES-2:0], bus_enable};
    end
  end

  wire synchronized_enable = sync_stages[NUM_STAGES-1];

  // 2. Delay register for edge detection
  always @(posedge dest_clk or negedge dest_rst)
  begin
    if (!dest_rst)
    begin
      sync_enable_delay <= 1'b0;
      sync_enable_delay2 <= 1'b0;
    end
    else
    begin
      sync_enable_delay <= synchronized_enable;
      sync_enable_delay2 <= sync_enable_delay;
    end
  end

  // 3. Pulse generation (Combinational)
  assign enable_pulse_d = sync_enable_delay & ~sync_enable_delay2;

  // 4. Data bus latching (Mux)
  always @(posedge dest_clk or negedge dest_rst)
  begin
    if (!dest_rst)
    begin
      sync_bus <= {BUS_WIDTH{1'b0}};
    end
    else if (synchronized_enable & ~sync_enable_delay)
    begin
      sync_bus <= unsync_bus;
    end
  end

endmodule
