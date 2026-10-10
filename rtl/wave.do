add wave -divider "Clock and reset"
add wave sim:/tb_SYS_TOP/REF_CLK
add wave sim:/tb_SYS_TOP/UART_CLK
add wave sim:/tb_SYS_TOP/RST
add wave -divider "UART pins and receiver"
add wave sim:/tb_SYS_TOP/RX_IN
add wave sim:/tb_SYS_TOP/TX_OUT
add wave sim:/tb_SYS_TOP/PAR_ERR
add wave sim:/tb_SYS_TOP/STP_ERR
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/rx_p_data
add wave sim:/tb_SYS_TOP/dut/rx_data_vld
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/sync_rx_p_data
add wave sim:/tb_SYS_TOP/dut/sync_rx_d_vld
add wave sim:/tb_SYS_TOP/dut/u_sys_ctrl/state
add wave sim:/tb_SYS_TOP/dut/rf_rd_en
add wave sim:/tb_SYS_TOP/dut/rf_rd_valid
add wave -divider "ALU and transmit FIFO"
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/alu_fun
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/alu_out
add wave sim:/tb_SYS_TOP/dut/alu_out_valid
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/tx_p_data_ctrl
add wave sim:/tb_SYS_TOP/dut/tx_d_vld_ctrl
add wave sim:/tb_SYS_TOP/dut/fifo_full
add wave sim:/tb_SYS_TOP/dut/fifo_empty
add wave sim:/tb_SYS_TOP/dut/fifo_rd_inc
add wave sim:/tb_SYS_TOP/dut/fifo_rd_wait
add wave -radix hexadecimal sim:/tb_SYS_TOP/dut/fifo_rd_data
add wave sim:/tb_SYS_TOP/dut/tx_busy
