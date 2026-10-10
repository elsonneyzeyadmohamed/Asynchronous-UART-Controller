module rx #(
    parameter DATA_WIDTH = 8
  )(

    input wire clk, rst , par_type, par_en, rx_in,
    input  wire [5:0]            Prescale,      // Added configurable Prescale
    output reg parity_err, stop_err , data_valid, 
    output reg [DATA_WIDTH-1:0] p_data

  );

  reg[3:0] bit_cnt;
  reg str_err;
  reg data_sample_en, par_chk_en, stp_chk_en, strt_chk_en, edge_cnt_en;
  reg [5:0] edg_cnt;  // for prescale of 8 only
  reg [2:0] samples; // majority vote samples
  reg sampled_bit ; // real taken sample
  reg deser_en;
  reg cnt_rst;
  wire edge_max;
  //finish each bit at the configured prescale count.
  assign edge_max = (edg_cnt == (Prescale - 1));
  // Take the three vote samples around the middle of each bit.
  wire [5:0] half_edge = Prescale >> 1; // Divide by 2

  // data valid block
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      data_valid <= 1'b0;
    end
    else
    begin
      data_valid <= 1'b0;

      if(stp_chk_en && edge_max)
      begin
        if(!parity_err && !stop_err && !str_err && sampled_bit) // EDITED: reject any bad frame.
          data_valid <= 1'b1;
      end
    end
  end



  //_____________________________________
  // FSM
  //________________________________________________

  // states block
  // we do not need sampling state as it is a process happens during each state
  localparam [2:0] idle   = 3'b000,
             start  = 3'b001,
             data   = 3'b010,
             parity = 3'b011,
             stop   = 3'b100;

  reg [2:0] current_state, next_state;

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
    // default values
    data_sample_en = 1'b0;
    par_chk_en = 1'b0;
    stp_chk_en = 1'b0;
    strt_chk_en = 1'b0;
    edge_cnt_en = 1'b0;
    deser_en = 1'b0;
    cnt_rst = 1'b0;



    case(current_state)
      idle :
      begin
        cnt_rst = 1'b1;
        if(!rx_in)
        begin
          next_state = start ;
        end
      end
      start:
      begin
        data_sample_en = 1'b1;
        strt_chk_en = 1'b1;
        edge_cnt_en = 1'b1;
        if (edge_max) // after the voting has occured
        begin
          if(!sampled_bit)
          begin
            next_state = data;
          end
          else
          begin
            next_state = idle;
          end
        end
      end

      data:
      begin
        data_sample_en = 1'b1;
        edge_cnt_en = 1'b1;
        if (edge_max)
        begin
          deser_en = 1'b1; // trigger deserializer
          if(bit_cnt == 4'b1000 && par_en )
          begin
            next_state = parity;
          end
          else if (bit_cnt == 4'b1000 && !par_en)
          begin
            next_state = stop;
          end
        end
        else
        begin
          deser_en = 1'b0; // to avoid serializer from working all time
        end
      end

      parity :
      begin
        data_sample_en = 1'b1;
        edge_cnt_en = 1'b1;
        par_chk_en = 1'b1;
        if(edge_max)
        begin
          next_state = stop;
        end
      end

      stop:
      begin
        stp_chk_en = 1'b1;
        data_sample_en = 1'b1;
        edge_cnt_en = 1'b1;
        if(edge_max)
        begin
          next_state = idle;
        end

      end
    endcase

  end // end of output always

  //_________________________________
  //edge_bit_counter
  //___________________________________

  always @(posedge clk or negedge rst)
  begin
    // reset of system
    if(!rst)
    begin
      edg_cnt <= 3'b000;
      bit_cnt <= 4'b0000;
    end
    else if(cnt_rst)
    begin
      edg_cnt <= 3'b000;
      bit_cnt <= 4'b0000;      // reset every frame
    end
    else if(edge_cnt_en)
    begin
      if (edge_max)  // if we finished the fast clock steps
      begin
        edg_cnt <= 3'b000;
        bit_cnt <= bit_cnt +1'b1;
      end
      else
      begin
        edg_cnt <= edg_cnt + 1'b1;
      end
    end


  end



  //______________________________________________
  // data sampling block
  //_________________________________________

  // EDITED: use clk, rst and rx_in from this module's declared interface.
  always@(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      samples <= 3'b111;
    end
    else if (data_sample_en)
    begin
      if(edg_cnt == (half_edge - 1))
        samples[0] <= rx_in;
      if(edg_cnt == half_edge)
        samples[1] <= rx_in;
      if(edg_cnt == (half_edge + 1))
        samples[2] <= rx_in;
    end
  end

  always @(*)
  begin
    // If at least two out of the three samples are 1, the result is 1
    if (samples == 3'b111 || samples == 3'b110 || samples == 3'b101 || samples == 3'b011)
      sampled_bit = 1'b1;
    else
      sampled_bit = 1'b0;
  end


  //___________________________________________
  // start check
  //__________________________
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      str_err <= 1'b0;
    end
    else if(current_state == idle)
    begin
      str_err <= 1'b0;
    end
    else if(strt_chk_en && edge_max)
    begin
      if(sampled_bit == 1'b0)
        str_err <= 1'b0;
      else
        str_err <= 1'b1;
    end
  end



  //____________________________________________________
  // parity check
  //_____________________
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      parity_err <= 1'b0;
    end
    else if(current_state == idle)
    begin
      parity_err <= 1'b0;
    end
    else if(par_chk_en && edge_max)
    begin
      if(par_type == 1'b0)
      begin
        parity_err <= (^p_data) != sampled_bit; // the check is here
      end
      else
      begin
        parity_err <= (~^p_data) != sampled_bit;
      end

    end

  end
  //___________________________________________
  // stop check
  //__________________________

  // stp_err is declared as an output
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      stop_err <= 1'b0;
    end
    else if(current_state == idle)
    begin
      stop_err <= 1'b0;
    end
    else if (stp_chk_en && edge_max)
    begin
      if(sampled_bit == 1'b0)
        stop_err <= 1'b1;
      else
        stop_err <= 1'b0;
    end
  end

  //_____________________________
  // deserializer
  //_____________________________


  always@(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      p_data <= {DATA_WIDTH{1'b1}};
    end
    else if(deser_en)
    begin
      p_data <= {sampled_bit , p_data[DATA_WIDTH-1:1]};
    end

  end


endmodule
