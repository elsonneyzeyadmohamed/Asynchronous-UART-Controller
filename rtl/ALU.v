module ALU #(
    parameter WIDTH = 8

  )(
    input  wire                 CLK,
    input  wire                 RST,
    input  wire [WIDTH-1:0]     A,
    input  wire [WIDTH-1:0]     B,
    input  wire [3:0]           ALU_FUN,
    input  wire                 Enable,
    output reg  [2*WIDTH-1:0]   ALU_OUT,   // output is 2*WIDTH to accommodate multiplication result
    output reg                  OUT_VALID
  );

  always @(posedge CLK or negedge RST)
  begin
    if (!RST)
    begin
      ALU_OUT   <= 0;
      OUT_VALID <= 0;
    end
    else if (Enable)
    begin
      OUT_VALID <= 1'b1;
      case (ALU_FUN)
        4'b0000:
          ALU_OUT <= {{WIDTH{1'b0}}, A} + {{WIDTH{1'b0}}, B}; // keep the carry bit.
        4'b0001:
          ALU_OUT <= {{WIDTH{1'b0}}, A} - {{WIDTH{1'b0}}, B};
        4'b0010:
          ALU_OUT <= {{WIDTH{1'b0}}, A} * {{WIDTH{1'b0}}, B}; 
        4'b0011:
          ALU_OUT <= (B != 0) ? (A / B) : {2*WIDTH{1'b0}};
        4'b0100:
          ALU_OUT <= A & B;
        4'b0101:
          ALU_OUT <= A | B;
        4'b0110:
          ALU_OUT <= {{WIDTH{1'b0}}, ~(A & B)};
        4'b0111:
          ALU_OUT <= {{WIDTH{1'b0}}, ~(A | B)};
        4'b1000:
          ALU_OUT <= A ^ B;
        4'b1001:
          ALU_OUT <= {{WIDTH{1'b0}}, ~(A ^ B)};
        4'b1010:
          ALU_OUT <= (A == B) ? 1 : 0;
        4'b1011:
          ALU_OUT <= (A > B)  ? 1 : 0;
        4'b1100:
          ALU_OUT <= {{WIDTH{1'b0}}, (A >> 1)};
        4'b1101:
          ALU_OUT <= {{WIDTH{1'b0}}, (A << 1)}; 
        default:
          ALU_OUT <= 0;
      endcase
    end
    else
    begin
      OUT_VALID <= 1'b0;
    end
  end

endmodule
