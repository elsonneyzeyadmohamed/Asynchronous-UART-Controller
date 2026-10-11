
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP
########################### Formality Setup file ############################

set_svf SYS_TOP.svf

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path /home/ICer/Projects/Final_system/syn/work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/ICer/Projects/Final_system/std_cells
lappend search_path /home/ICer/Projects/Final_system/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"



set rtl_files [list \
    SYS_TOP.v ALU.v async_fifo.v clk_div.v DF_SYNC.v fifo_mem_cntrl.v \
    FIFO_RD.v FIFO_WR.v PULSE_GEN.v Reg_file.v rst_synch.v Rx.v \
    synch_.v SYS_CTRL.v Tx.v clk_gating.v ]

analyze -format verilog $rtl_files
elaborate $top_module                 
###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

# Constraints
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
create_clock -period 20 -name ref_clk [get_ports REF_CLK]
create_clock -period 271.296 -name uart_clk [get_ports UART_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks ref_clk]
set_clock_uncertainty -setup 0.2 [get_clocks uart_clk]
set_clock_uncertainty -hold 0.1 [get_clocks ref_clk]
set_clock_uncertainty -hold 0.1 [get_clocks uart_clk]
set_clock_transition 0.05 [get_clocks ref_clk]
set_clock_transition 0.05 [get_clocks uart_clk]


create_generated_clock -master_clock [get_clocks ref_clk] -source [get_ports REF_CLK] -name alu_clk -divide_by 1 [get_pin g_clk/gclk]
create_generated_clock -master_clock [get_clocks uart_clk] -source [get_ports UART_CLK] -name rx_clk -divide_by 1 [get_pin u_clk_div_rx/o_div_clk]
create_generated_clock -master_clock [get_clocks uart_clk] -source [get_ports UART_CLK] -name tx_clk -divide_by 32 [get_pin u_clk_div/o_div_clk]

set_clock_uncertainty -setup 0.2 [get_clocks alu_clk]
set_clock_uncertainty -setup 0.2 [get_clocks tx_clk]
set_clock_uncertainty -setup 0.2 [get_clocks rx_clk]
set_clock_uncertainty -hold 0.1 [get_clocks alu_clk]
set_clock_uncertainty -hold 0.1 [get_clocks tx_clk]
set_clock_uncertainty -hold 0.1 [get_clocks rx_clk]


set_dont_touch_network [get_clocks {ref_clk uart_clk}]  
set_dont_touch_network [get_clocks {alu_clk tx_clk rx_clk}]    

###################Clock Grouping ###########################################
set_clock_groups -asynchronous -group [get_clocks "ref_clk alu_clk"] -group [get_clocks "uart_clk rx_clk tx_clk"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
# 4ns
set_input_delay 4 -clock rx_clk [get_port RX_IN] 
set_input_delay  54.26  -clock rx_clk [get_ports RX_IN]
set_output_delay 1736.3 -clock tx_clk [get_ports TX_OUT]
set_output_delay 54.26  -clock rx_clk [get_ports {PAR_ERR STP_ERR}]
####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN] 
####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_port TX_OUT]
set_load 0.1 [get_port PAR_ERR]
set_load 0.1 [get_port STP_ERR]

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

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high 


#############################################################################
# Write out Design after initial compile
#############################################################################
write_file -format verilog -hierarchy -output SYS_TOP_Netlist.v
write_file -format ddc     -hierarchy -output SYS_TOP_Netlist.ddc
write_sdc  -nosplit SYS_TOP.sdc
write_sdf           SYS_TOP.sdf

################# reporting #######################

report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
##################### Close Formality Setup file ###########################

set_svf -off

################# starting graphical user interface #######################

#gui_start

exit
