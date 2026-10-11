########################### Define Top Module ############################

set top_module SYS_TOP   

##################### Define Working Library Directory ######################

define_design_lib work -path ./work

# Record transformations for Formality post-DFT (closed with set_svf -off at the end)
set_svf SYS_TOP_dft.svf

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

# SYS_TOP_dft.v replaces SYS_TOP.v (both define module SYS_TOP); mux2X1.v is new
set rtl_files [list \
    SYS_TOP_dft.v mux2X1.v ALU.v async_fifo.v clk_div.v DF_SYNC.v fifo_mem_cntrl.v \
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

#################### Checking design consistency ###########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

#################### 1. Archirecture Scan Chains ########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix \
                       -style multiplexed_flip_flop \
                       -replace true \
                       -chain_count 3

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

#test_ready compile
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## 2. Define DFT Signals ##########################

set_dft_signal -view existing_dft -type ScanClock -port [get_ports scan_clk] -timing {30 60}
set_dft_signal -view existing_dft -type Reset     -port [get_ports scan_rst] -active_state 0
set_dft_signal -view existing_dft -type Constant  -port [get_ports test_mode] -active_state 1
set_dft_signal -view spec         -type TestMode  -port [get_ports test_mode] -active_state 1

set_dft_signal -view spec -type ScanEnable  -port [get_ports SE] -active_state 1 -usage scan

set_dft_signal -view spec -type ScanDataIn  -port [get_ports {SI[0]}]
set_dft_signal -view spec -type ScanDataIn  -port [get_ports {SI[1]}]
set_dft_signal -view spec -type ScanDataIn  -port [get_ports {SI[2]}]

set_dft_signal -view spec -type ScanDataOut -port [get_ports {SO[0]}]
set_dft_signal -view spec -type ScanDataOut -port [get_ports {SO[1]}]
set_dft_signal -view spec -type ScanDataOut -port [get_ports {SO[2]}]

############################# 3. Create Test Protocol #######################

create_test_protocol

###################### 4. Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# 5. Preview DFT ##############################

preview_dft -show scan_summary

############################# 6. Insert DFT ##############################

insert_dft
compile -scan -incremental

###################### 7. Design Rule Checking post DFT #######################

dft_drc -verbose -coverage_estimate

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output SYS_TOP_dft_Netlist.v
write_file -format ddc     -hierarchy -output SYS_TOP_dft_Netlist.ddc
write_sdc  -nosplit SYS_TOP_dft.sdc
write_test_protocol -output SYS_TOP_dft.spf

# close the SVF after all transformations are done
set_svf -off

####################### reporting ##########################################

report_scan_path -view existing_dft -chain all > scan_chains.rpt
report_area -hierarchy > area_dft.rpt
report_power -hierarchy > power_dft.rpt
report_timing -max_paths 100 -delay_type min > hold_dft.rpt
report_timing -max_paths 100 -delay_type max > setup_dft.rpt
report_clock -attributes > clocks_dft.rpt
report_constraint -all_violators > constraints_dft.rpt

################# starting graphical user interface #######################

#gui_start

exit
