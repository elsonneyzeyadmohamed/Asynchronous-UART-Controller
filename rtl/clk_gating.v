module clk_gating (
    input  wire clk,
    input  wire en,
    output wire gclk
);
    reg en_latched;

    // Transparent while clk is low, holds while clk is high (standard ICG latch).
    always @ (clk or en) begin
        if (!clk)
            en_latched = en;
    end

    assign gclk = clk & en_latched;
endmodule
