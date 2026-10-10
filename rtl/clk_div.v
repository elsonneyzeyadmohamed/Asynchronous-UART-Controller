module clk_div (input I_ref_clk, I_rst_n, I_clk_en,
                  input [7:0]I_div_ratio,
                  output o_div_clk
                 );


  reg [7:0] counter ;
  reg div_clk;   // for the mux 
  wire odd_flag;
  reg clk_state; // Data mirror for logic checks 
  assign odd_flag = I_div_ratio[0];
// reset happens in always block no need to check reset here 
  assign o_div_clk = (!I_clk_en) ? I_ref_clk : div_clk;



  always @(posedge I_ref_clk or negedge I_rst_n)
  begin
    if(!I_rst_n ) // reset 
    begin
      div_clk <= 1'b1; // same clk value  
      clk_state <= 1'b1; // Sync the mirror
      counter   <= 8'd0;
    end
    else if (I_clk_en)
    begin
      if (!clk_state && counter == ((I_div_ratio / 2) - 1)) // even division logic
      begin
        counter <= 8'b00000000;
        div_clk <= ~clk_state;
        clk_state <= ~clk_state; // Toggle mirror
      end
      else if(odd_flag)
      begin // odd division logic

        if(clk_state && counter == ((I_div_ratio / 2) - 1))
        begin
          counter <= 8'b00000000;
          div_clk <= ~clk_state;
          clk_state <= ~clk_state;
        end
        else if (!clk_state && counter == (I_div_ratio / 2))
        begin
          counter <= 8'b00000000;
          div_clk <= ~clk_state;
          clk_state <= ~clk_state;
        end
        else
        begin
          counter <= counter + 1;
        end
      end
      else
      begin
        counter <= counter + 1;
      end

    end

    else // for non enabled division
    begin
      div_clk <= 1'b1; // same clk value
      clk_state <= 1'b1; // Sync the mirror
      counter   <= 8'd0;
    end


  end

endmodule

