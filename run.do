if {![file exists work/_info]} {
    vlib work
}

vlog -work work \
    rtl/SYS_TOP.v \
    rtl/tb_SYS_TOP.v \
    rtl/ALU.v \
    rtl/async_fifo.v \
    rtl/clk_div.v \
    rtl/clk_gating.v \
    rtl/DF_SYNC.v \
    rtl/fifo_mem_cntrl.v \
    rtl/FIFO_RD.v \
    rtl/FIFO_WR.v \
    rtl/PULSE_GEN.v \
    rtl/Reg_file.v \
    rtl/rst_synch.v \
    rtl/Rx.v \
    rtl/synch_.v \
    rtl/SYS_CTRL.v \
    rtl/Tx.v

vsim -voptargs=+acc work.tb_SYS_TOP
run -all
