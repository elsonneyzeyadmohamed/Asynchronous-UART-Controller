module Reg_file #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 16
  )(
    input  wire                     CLK,
    input  wire                     RST,

    input  wire [ADDR_WIDTH-1:0]    Address,
    input  wire                     WrEn,
    input  wire                     RdEn,
    input  wire [DATA_WIDTH-1:0]    WrData,

    output reg  [DATA_WIDTH-1:0]    RdData,
    output reg                      RdData_Valid,

    output wire [DATA_WIDTH-1:0]    REG0,
    output wire [DATA_WIDTH-1:0]    REG1,
    output wire [DATA_WIDTH-1:0]    REG2,
    output wire [DATA_WIDTH-1:0]    REG3
  );

  reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
  always @(posedge CLK or negedge RST)
  begin
    if (!RST)
    begin
      mem[0] <= 8'h00; // REG0: ALU Operand A
      mem[1] <= 8'h00; // REG1: ALU Operand B
      mem[2] <= 8'h81; // REG2: Prescale=32 (bits 7:2), Parity Typ=0 (bit 1), Parity En=1 (bit 0)
      mem[3] <= 8'h20; // REG3: Division Ratio = 32
      // Initialize remaining registers
      mem[4] <= 8'h00;
      mem[5] <= 8'h00;
      mem[6] <= 8'h00;
      mem[7] <= 8'h00;
      mem[8] <= 8'h00;
      mem[9] <= 8'h00;
      mem[10]<= 8'h00;
      mem[11]<= 8'h00;
      mem[12]<= 8'h00;
      mem[13]<= 8'h00;
      mem[14]<= 8'h00;
      mem[15]<= 8'h00;
      RdData       <= 8'h00;
      RdData_Valid <= 1'b0;
    end
    else
    begin
      RdData_Valid <= 1'b0;
      if(WrEn)
      begin
        mem[Address] <= WrData;
      end
      if(RdEn)
      begin
        RdData       <= mem[Address];
        RdData_Valid <= 1'b1;
      end
    end

  end

  // EDITED: continuously expose reserved registers through the declared ports.
  assign REG0 = mem[0];
  assign REG1 = mem[1];
  assign REG2 = mem[2];
  assign REG3 = mem[3];
endmodule
