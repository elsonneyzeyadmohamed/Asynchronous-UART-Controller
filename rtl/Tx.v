module Tx#(
    parameter DATA_WIDTH = 8
  )(
    input wire clk,
    rst,
    par_type,
    par_enable,
    data_valid,
    input wire [7:0] p_data,

    output reg tx_out,
    output reg busy

  );





  // serializer

  reg [DATA_WIDTH-1:0] shift_reg ;
  wire ser_done ;
  reg [2:0] count;
  reg par_val;

  wire  ser_en ;

  wire     ser_data;
  assign    ser_data = shift_reg[0];
  assign ser_done = (count == 3'b111)  ;


  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      shift_reg <= {DATA_WIDTH{1'b0}};
      count <= 3'b000;
    end
    else
    begin

      if(data_valid && !busy) // EDITED: don't reload the FIFO word while a frame is active.
      begin

        shift_reg <= p_data;
        count <= 3'b000;

      end
      else if (ser_en)
      begin
        // shifting in the register

        shift_reg <= {1'b0, shift_reg[DATA_WIDTH-1:1]};

        if(ser_done )
        begin
          count <= 3'b000;
        end
        else
        begin
          count <= count + 1'b1;
        end

      end // else if end
    end
  end





  //__________________________________________________________________________________________

  // FSM

  // _________________________________________________________________________________

  // states block
  localparam [2:0] idle   = 3'b000,
             start  = 3'b001,
             data   = 3'b010,
             parity = 3'b011,
             stop   = 3'b100;


  reg [2:0] current_state, next_state;
  reg [1:0] mux_sel;        // 2-bit selector for the 4 MUX inputs
  reg     ser_en_reg;    // Internal register to drive the ser_en wire

  assign ser_en = ser_en_reg;

  // state transition block
  always @(posedge clk or negedge rst)
  begin
    if (!rst)
    begin
      current_state <= idle;
    end
    else
    begin
      current_state <= next_state;
    end
  end


  // logic and output logic block (sequential)

  always @ (*)
  begin
    next_state = current_state;

    tx_out = 1'b1; // default output
    busy = 1'b1;
    ser_en_reg = 1'b0;

    case(current_state)

      idle :
      begin
        busy = 1'b0;
        if(data_valid)
        begin
          next_state = start;
        end
      end

      start :
      begin
        tx_out = 1'b0; // Start bit is always 0
        next_state = data;
      end

      data:
      begin
        tx_out = ser_data; // serial data output
        ser_en_reg = 1'b1;
        if(ser_done)
        begin
          if(par_enable)
          begin
            next_state = parity;
          end
          else
          begin
            next_state = stop;
          end
        end
      end

      parity :
      begin
        tx_out = par_val; // EDITED: parity is selected from the loaded data word.
        next_state = stop;
      end

      stop :
      begin
        tx_out = 1'b1; // stop bit is always 1
        next_state = idle;
      end



    endcase


  end


  // _________________________________________________________________________________________________________

  // parity block
  //________________________________________________________________________

  always @(*)
  begin
    if(par_type)
      par_val = ~^shift_reg;
    else
      par_val = ^shift_reg; // EDITED: type 0 is even parity, matching the receiver.


  end





endmodule
