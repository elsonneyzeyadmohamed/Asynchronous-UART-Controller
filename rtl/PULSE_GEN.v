module PULSE_GEN (
    input  wire CLK,
    input  wire RST,
    input  wire LVL_SIG,
    output wire PULSE_SIG
  );

  reg sig_delay;

  always @(posedge CLK or negedge RST)
  begin
    if (!RST)
    begin
      sig_delay <= 1'b0;
    end
    else
    begin
      sig_delay <= LVL_SIG; // Delay the level signal by one clock cycle
    end
  end

  // Generate a pulse on the falling edge of LVL_SIG
  assign PULSE_SIG = ~LVL_SIG & sig_delay;

endmodule
