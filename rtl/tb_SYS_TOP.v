`timescale 1ns/1ps

module tb_SYS_TOP;
  reg REF_CLK = 1'b0;
  reg UART_CLK = 1'b0;
  reg RST = 1'b0;
  reg RX_IN = 1'b1;
  wire TX_OUT;
  wire PAR_ERR;
  wire STP_ERR;

  reg [7:0] received_byte;
  reg [7:0] low_byte;
  reg [7:0] high_byte;

  always #10 REF_CLK = ~REF_CLK;
  always #135.6 UART_CLK = ~UART_CLK;

  SYS_TOP dut (
    .REF_CLK(REF_CLK),
    .UART_CLK(UART_CLK),
    .RST(RST),
    .RX_IN(RX_IN),
    .TX_OUT(TX_OUT),
    .PAR_ERR(PAR_ERR),
    .STP_ERR(STP_ERR)
  );

  // Send one complete UART frame: start, 8 data bits, even parity, stop.
  task send_byte;
    input [7:0] value;
    integer bit_number;
    begin
      RX_IN = 1'b0;
      repeat (32) @(negedge UART_CLK);
      for (bit_number = 0; bit_number < 8; bit_number = bit_number + 1) begin
        RX_IN = value[bit_number];
        repeat (32) @(negedge UART_CLK);
      end
      RX_IN = ^value;
      repeat (32) @(negedge UART_CLK);
      RX_IN = 1'b1;
      repeat (32) @(negedge UART_CLK);
    end
  endtask

  // Read one complete reply frame from the system UART transmitter.
  task receive_byte;
    output [7:0] value;
    integer bit_number;
    begin
      @(negedge TX_OUT);
      repeat (16) @(posedge UART_CLK);
      for (bit_number = 0; bit_number < 8; bit_number = bit_number + 1) begin
        repeat (32) @(posedge UART_CLK);
        value[bit_number] = TX_OUT;
      end
      repeat (32) @(posedge UART_CLK); // parity bit
      repeat (32) @(posedge UART_CLK); // stop bit
    end
  endtask

  // The ALU sends its result low byte first.
  task check_alu_reply;
    input [15:0] expected;
    begin
      receive_byte(low_byte);
      receive_byte(high_byte);
      if ({high_byte, low_byte} !== expected) begin
        $display("FAIL: expected ALU result %h, received %h", expected,
                 {high_byte, low_byte});
        $finish;
      end
    end
  endtask

  initial begin
    repeat (8) @(posedge REF_CLK);
    RST = 1'b1;
    repeat (8) @(posedge UART_CLK);

    // AA: write 5A to register 4. BB below checks the stored value by reading it back.
    send_byte(8'hAA);
    send_byte(8'h04);
    send_byte(8'h5A);

    // BB: read register 4; this also verifies that the AA write worked.
    send_byte(8'hBB);
    send_byte(8'h04);
    receive_byte(received_byte);
    if (received_byte !== 8'h5A) begin
      $display("FAIL: BB read after AA expected 5A, received %h", received_byte);
      $finish;
    end
    $display("PASS: AA write verified by BB readback");
    $display("PASS: BB read");

    // CC: send A=12, B=03, function 0 (add); expected result is 0015.
    send_byte(8'hCC);
    send_byte(8'h12);
    send_byte(8'h03);
    send_byte(8'h00);
    check_alu_reply(16'h0015);
    $display("PASS: CC ALU with operands");

    // DD: use the same operands and function 2 (multiply); expected 0036.
    send_byte(8'hDD);
    send_byte(8'h02);
    check_alu_reply(16'h0036);
    $display("PASS: DD ALU using saved operands");

    $display("PASS: all four command cases completed");
    $finish;
  end

  initial begin
    #200000000;
    $display("FAIL: testbench timed out");
    $finish;
  end
endmodule
