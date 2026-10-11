

########################### Variables #############################


set SSLIB "/home/ICer/Projects/Final_system/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/Projects/Final_system/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/Projects/Final_system/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"


############################ Guidance #############################


# Synopsys setup variable
set synopsys_auto_setup true

##### RTL Declarations : #####
set rtl_dir /home/ICer/Projects/Final_system/rtl
set rtl_files [list \
    SYS_TOP_dft.v mux2X1.v ALU.v async_fifo.v clk_div.v DF_SYNC.v fifo_mem_cntrl.v \
    FIFO_RD.v FIFO_WR.v PULSE_GEN.v Reg_file.v rst_synch.v Rx.v \
    synch_.v SYS_CTRL.v Tx.v clk_gating.v ]

set ref_list {}
foreach f $rtl_files { lappend ref_list $rtl_dir/$f }


# Formality Setup File
set_svf "/home/ICer/Projects/Final_system/DFT/SYS_TOP_dft.svf"

###################### Reference Container ########################


# Read Reference Design Verilog Files
read_verilog -container ref $ref_list

# Read Reference technology libraries
read_db -container ref [list $SSLIB $TTLIB $FFLIB]


# set the top Reference Design 

set_reference_design SYS_TOP_dft
set_top SYS_TOP_dft



#################### Implementation Container #####################


# Read Implementation Design Files
read_verilog -netlist -container imp /home/ICer/Projects/Final_system/DFT/SYS_TOP_dft_Netlist.v

# Read Implementation technology libraries
read_db -container imp [list $SSLIB $TTLIB $FFLIB]


# set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP
#test_mode
set_constant -type port ref:/WORK/SYS_TOP_dft/test_mode 0
set_constant -type port imp:/WORK/SYS_TOP/test_mode 0
#scan_enable
set_constant -type port ref:/WORK/SYS_TOP_dft/SE 0
set_constant -type port imp:/WORK/SYS_TOP/SE 0
###################### Matching Compare points ####################


match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


#start_gui

