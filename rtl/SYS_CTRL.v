module SYS_CTRL #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8
)(
    input wire CLK, RST,
    input wire [2*DATA_WIDTH-1:0] ALU_OUT,
    input wire OUT_VALID,
    output reg [3:0] ALU_FUN,
    output reg ALU_EN,
    output reg CLK_EN,
    output reg [ADDR_WIDTH-1:0] Address,
    output reg WrEn, RdEn,
    output reg [DATA_WIDTH-1:0] WrData,
    input wire [DATA_WIDTH-1:0] RdData,
    input wire RdData_Valid,
    input wire [DATA_WIDTH-1:0] RX_P_DATA,
    input wire RX_P_VALID,
    input wire FIFO_FULL,
    output reg [DATA_WIDTH-1:0] TX_P_DATA,
    output reg TX_P_VALID,
    output wire clk_div_en
);

  // EDITED: finish decoding the commands and returning their response bytes.
  localparam IDLE=4'b0000, WRITE_ADDRESS=4'b0001, WRITE_DATA=4'b0010, READ_ADDRESS=4'b0011;
  localparam READ_WAIT=4'b0100, ALU_A=4'b0101, ALU_B=4'b0110, ALU_FUNCTION=4'b0111;
  localparam ALU_WAIT=4'b1000, ALU_HIGH_BYTE=4'b1001;
  reg [3:0] state, next_state;
  reg [ADDR_WIDTH-1:0] saved_address;
  reg [3:0] saved_function;
  reg save_address;

  assign clk_div_en = 1'b1;

  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      state <= IDLE;
      saved_address <= 0;
      saved_function <= 0;
    end else begin
      state <= next_state;
      if (save_address)
        saved_address <= RX_P_DATA[ADDR_WIDTH-1:0];
      if (state == ALU_FUNCTION && RX_P_VALID)
        saved_function <= RX_P_DATA[3:0];
    end
  end

  always @(*) begin
    next_state = state;
    save_address = 1'b0;
    ALU_FUN = saved_function;
    ALU_EN = 1'b0;
    CLK_EN = 1'b0;
    Address = saved_address;
    WrEn = 1'b0;
    RdEn = 1'b0;
    WrData = 0;
    TX_P_DATA = 0;
    TX_P_VALID = 1'b0;

    case (state)
      IDLE: if (RX_P_VALID) begin
        case (RX_P_DATA)
          8'hAA: next_state = WRITE_ADDRESS;
          8'hBB: next_state = READ_ADDRESS;
          8'hCC: next_state = ALU_A;
          8'hDD: next_state = ALU_FUNCTION;
          default: next_state = IDLE;
        endcase
      end
      WRITE_ADDRESS: if (RX_P_VALID) begin
        save_address = 1'b1;
        next_state = WRITE_DATA;
      end
      WRITE_DATA: if (RX_P_VALID) begin
        Address = saved_address;
        WrEn = 1'b1; // EDITED: addresses 2 and 3 are written during initial configuration.
        WrData = RX_P_DATA;
        next_state = IDLE;
      end
      READ_ADDRESS: if (RX_P_VALID) begin
        Address = RX_P_DATA[ADDR_WIDTH-1:0];
        RdEn = 1'b1;
        next_state = READ_WAIT;
      end
      READ_WAIT: if (RdData_Valid && !FIFO_FULL) begin
        TX_P_DATA = RdData;
        TX_P_VALID = 1'b1;
        next_state = IDLE;
      end
      ALU_A: if (RX_P_VALID) begin
        Address = 0;
        WrEn = 1'b1;
        WrData = RX_P_DATA;
        next_state = ALU_B;
      end
      ALU_B: if (RX_P_VALID) begin
        Address = 1;
        WrEn = 1'b1;
        WrData = RX_P_DATA;
        next_state = ALU_FUNCTION;
      end
      ALU_FUNCTION: if (RX_P_VALID) begin
        ALU_FUN = RX_P_DATA[3:0]; // EDITED: use this command's function on the first ALU clock.
        ALU_EN = 1'b1;
        CLK_EN = 1'b1;
        next_state = ALU_WAIT;
      end
      ALU_WAIT: begin
        CLK_EN = 1'b1;
        ALU_EN = !OUT_VALID; // EDITED: give the gated ALU clock a full active edge.
        if (OUT_VALID && !FIFO_FULL) begin
          TX_P_DATA = ALU_OUT[7:0];
          TX_P_VALID = 1'b1;
          next_state = ALU_HIGH_BYTE;
        end
      end
      ALU_HIGH_BYTE: if (!FIFO_FULL) begin
        TX_P_DATA = ALU_OUT[15:8];
        TX_P_VALID = 1'b1;
        next_state = IDLE;
      end
      default: next_state = IDLE;
    endcase
  end
endmodule
