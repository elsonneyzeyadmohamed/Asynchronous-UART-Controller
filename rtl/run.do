# In ModelSim, open the Final system folder and enter: do run.do
if {![file exists SYS_TOP.v]} {
    error "Open the Final system folder in ModelSim before running do run.do."
}

if {![file exists work/_info]} {
    vlib work
}

vlog -work work \
    SYS_TOP.v \
    tb_SYS_TOP.v \
    ALU/ALU.v \
    {Reg file/Reg_file.v} \
    {Reg file/SYS_CTRL/SYS_CTRL.v} \
    UART_TX/Tx.v \
    UART_RX/Rx.v \
    CLK_DIV/clk_div.v \
    RST_SYNCH/rst_synch.v \
    Data_Synch/synch_.v \
    Asynch_fifo/async_fifo.v \
    Asynch_fifo/FIFO_WR.v \
    Asynch_fifo/FIFO_RD.v \
    Asynch_fifo/DF_SYNC.v \
    Asynch_fifo/fifo_mem_cntrl.v \
    PULSE_GEN/PULSE_GEN.v

# EDITED: Keep internal signals visible without disabling optimization in Questa.
vsim -voptargs=+acc work.tb_SYS_TOP
do wave.do
run -all
