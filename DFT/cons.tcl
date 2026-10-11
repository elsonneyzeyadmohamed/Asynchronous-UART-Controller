# Constraints (DFT stage: uses SYS_TOP_dft.v port names)
####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
####################################################################################
# 1. Master Clock Definitions
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
create_clock -period 20      -name ref_clk  [get_ports REF_CLK]
create_clock -period 271.296 -name uart_clk [get_ports UART_CLK]

# DFT 1: scan clock (100 ns period, rise at 30 / fall at 60 to match the test protocol timing)
create_clock -period 100 -waveform {30 60} -name SCAN_CLK [get_ports scan_clk]

set_clock_uncertainty -setup 0.2 [get_clocks {ref_clk uart_clk SCAN_CLK}]
set_clock_uncertainty -hold  0.1 [get_clocks {ref_clk uart_clk SCAN_CLK}]
set_clock_transition 0.05        [get_clocks {ref_clk uart_clk SCAN_CLK}]

create_generated_clock -master_clock [get_clocks ref_clk]  -source [get_ports REF_CLK]  -name alu_clk -divide_by 1  [get_pins g_clk/gclk]
create_generated_clock -master_clock [get_clocks uart_clk] -source [get_ports UART_CLK] -name rx_clk  -divide_by 1  [get_pins u_clk_div_rx/o_div_clk]
create_generated_clock -master_clock [get_clocks uart_clk] -source [get_ports UART_CLK] -name tx_clk  -divide_by 32 [get_pins u_clk_div/o_div_clk]

set_clock_uncertainty -setup 0.2 [get_clocks {alu_clk tx_clk rx_clk}]
set_clock_uncertainty -hold  0.1 [get_clocks {alu_clk tx_clk rx_clk}]

set_dont_touch_network [get_clocks {ref_clk uart_clk SCAN_CLK}]
set_dont_touch_network [get_clocks {alu_clk tx_clk rx_clk}]

################### Clock Grouping ###########################################
# DFT 2: SCAN_CLK in its own group
set_clock_groups -asynchronous \
    -group [get_clocks {ref_clk alu_clk}] \
    -group [get_clocks {uart_clk rx_clk tx_clk}] \
    -group [get_clocks {SCAN_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
# 20% of the clock period
# functional ports
set_input_delay  54.26  -clock rx_clk [get_ports UART_RX_IN]
set_output_delay 1736.3 -clock tx_clk [get_ports UART_TX_O]
set_output_delay 54.26  -clock rx_clk [get_ports {parity_error framing_error}]

# DFT 3: scan inputs (SI, SE), 20% of SCAN_CLK period = 20
set_input_delay  20 -clock SCAN_CLK [get_ports {SI* SE}]
# DFT 4: scan outputs (SO), 20% of SCAN_CLK period = 20
set_output_delay 20 -clock SCAN_CLK [get_ports SO*]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports UART_RX_IN]
# DFT 5: buffer driving cell on scan inputs
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports {SI* SE}]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports UART_TX_O]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]
# DFT 6: load on scan outputs
set_load 0.1 [get_ports SO*]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
                         -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : Case Analysis ####
           #########################################################
####################################################################################
# DFT 7: time the design in scan mode (muxes select scan_clk / scan_rst)
set_case_analysis 1 [get_ports test_mode]
