################################################################################
################################################################################

source ../../scripts/adi_env.tcl
project_new fmcjesdadc1 -overwrite

set_global_assignment -name FAMILY "Arria V"
set_global_assignment -name DEVICE 5AGTFD7K3F40I5
set_global_assignment -name TOP_LEVEL_ENTITY fmcjesdadc1_top
set_global_assignment -name SDC_FILE fmcjesdadc1.sdc
set_global_assignment -name QIP_FILE fmcjesdadc1/synthesis/fmcjesdadc1.qip
set_global_assignment -name VERILOG_FILE $ad_hdl_dir/library/common/altera/ad_jesd_align.v
set_global_assignment -name VERILOG_FILE $ad_hdl_dir/library/common/altera/ad_xcvr_rx_rst.v
set_global_assignment -name VERILOG_FILE ../common/fmcjesdadc1_spi.v
set_global_assignment -name VERILOG_FILE fmcjesdadc1_top.v

# clocks and resets

set_location_assignment PIN_C34   -to sys_clk
set_location_assignment PIN_D34   -to "sys_clk(n)"
set_instance_assignment -name IO_STANDARD LVDS -to sys_clk
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to sys_clk -disable

set_location_assignment PIN_L6    -to sys_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to sys_resetn

# reference clock

set_location_assignment PIN_AB9   -to ref_clk
set_location_assignment PIN_AB8   -to "ref_clk(n)"
set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to ref_clk
set_instance_assignment -name XCVR_REFCLK_PIN_TERMINATION AC_COUPLING -to ref_clk
set_instance_assignment -name XCVR_IO_PIN_TERMINATION 100_OHMS -to ref_clk

# lane data

set_location_assignment PIN_AE1   -to rx_data[0]
set_location_assignment PIN_AE2   -to "rx_data[0](n)"
set_location_assignment PIN_AA1   -to rx_data[1]
set_location_assignment PIN_AA2   -to "rx_data[1](n)"
set_location_assignment PIN_U1    -to rx_data[2]
set_location_assignment PIN_U2    -to "rx_data[2](n)"
set_location_assignment PIN_R1    -to rx_data[3]
set_location_assignment PIN_R2    -to "rx_data[3](n)"
set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to rx_data[0]
set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to rx_data[1]
set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to rx_data[2]
set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to rx_data[3]
set_instance_assignment -name XCVR_IO_PIN_TERMINATION 100_OHMS -to rx_data[0]
set_instance_assignment -name XCVR_IO_PIN_TERMINATION 100_OHMS -to rx_data[1]
set_instance_assignment -name XCVR_IO_PIN_TERMINATION 100_OHMS -to rx_data[2]
set_instance_assignment -name XCVR_IO_PIN_TERMINATION 100_OHMS -to rx_data[3]

# jesd signals

set_location_assignment PIN_AD25  -to rx_sync
set_instance_assignment -name IO_STANDARD "2.5 V" -to rx_sync

set_location_assignment PIN_AC24  -to rx_sysref
set_instance_assignment -name IO_STANDARD "2.5 V" -to rx_sysref

# spi

set_location_assignment PIN_AG27  -to spi_csn
set_location_assignment PIN_AH27  -to spi_clk
set_location_assignment PIN_AD24  -to spi_sdio

set_instance_assignment -name IO_STANDARD "2.5 V" -to spi_csn
set_instance_assignment -name IO_STANDARD "2.5 V" -to spi_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to spi_sdio

# ddr3

set_location_assignment PIN_B31 -to ddr3_a[0]
set_location_assignment PIN_A30 -to ddr3_a[1]
set_location_assignment PIN_A31 -to ddr3_a[2]
set_location_assignment PIN_A32 -to ddr3_a[3]
set_location_assignment PIN_A33 -to ddr3_a[4]
set_location_assignment PIN_B33 -to ddr3_a[5]
set_location_assignment PIN_H31 -to ddr3_a[6]
set_location_assignment PIN_J31 -to ddr3_a[7]
set_location_assignment PIN_C31 -to ddr3_a[8]
set_location_assignment PIN_D31 -to ddr3_a[9]
set_location_assignment PIN_C32 -to ddr3_a[10]
set_location_assignment PIN_D32 -to ddr3_a[11]
set_location_assignment PIN_N31 -to ddr3_a[12]
set_location_assignment PIN_P31 -to ddr3_a[13]
set_location_assignment PIN_M32 -to ddr3_ba[0]
set_location_assignment PIN_N32 -to ddr3_ba[1]
set_location_assignment PIN_J34 -to ddr3_ba[2]
set_location_assignment PIN_B30 -to ddr3_clk_p
set_location_assignment PIN_C30 -to ddr3_clk_n
set_location_assignment PIN_E31 -to ddr3_cke
set_location_assignment PIN_L34 -to ddr3_cs_n
set_location_assignment PIN_K34 -to ddr3_ras_n
set_location_assignment PIN_L33 -to ddr3_cas_n
set_location_assignment PIN_M33 -to ddr3_we_n
set_location_assignment PIN_G30 -to ddr3_reset_n
set_location_assignment PIN_L31 -to ddr3_odt
set_location_assignment PIN_F33 -to ddr3_rzq

set_location_assignment PIN_N30 -to ddr3_dqs_p[0]
set_location_assignment PIN_P30 -to ddr3_dqs_n[0]
set_location_assignment PIN_R29 -to ddr3_dqs_p[1]
set_location_assignment PIN_T29 -to ddr3_dqs_n[1]
set_location_assignment PIN_J30 -to ddr3_dm[0]
set_location_assignment PIN_J29 -to ddr3_dm[1]
set_location_assignment PIN_B28 -to ddr3_dq[0]
set_location_assignment PIN_C29 -to ddr3_dq[1]
set_location_assignment PIN_R30 -to ddr3_dq[2]
set_location_assignment PIN_A29 -to ddr3_dq[3]
set_location_assignment PIN_A28 -to ddr3_dq[4]
set_location_assignment PIN_L30 -to ddr3_dq[5]
set_location_assignment PIN_D30 -to ddr3_dq[6]
set_location_assignment PIN_D29 -to ddr3_dq[7]
set_location_assignment PIN_L28 -to ddr3_dq[8]
set_location_assignment PIN_M28 -to ddr3_dq[9]
set_location_assignment PIN_H28 -to ddr3_dq[10]
set_location_assignment PIN_C28 -to ddr3_dq[11]
set_location_assignment PIN_D28 -to ddr3_dq[12]
set_location_assignment PIN_F28 -to ddr3_dq[13]
set_location_assignment PIN_M29 -to ddr3_dq[14]
set_location_assignment PIN_N29 -to ddr3_dq[15]

set_location_assignment PIN_R28 -to ddr3_dqs_p[2]
set_location_assignment PIN_T28 -to ddr3_dqs_n[2]
set_location_assignment PIN_M26 -to ddr3_dqs_p[3]
set_location_assignment PIN_N26 -to ddr3_dqs_n[3]
set_location_assignment PIN_K27 -to ddr3_dm[2]
set_location_assignment PIN_J26 -to ddr3_dm[3]
set_location_assignment PIN_P27 -to ddr3_dq[16]
set_location_assignment PIN_R27 -to ddr3_dq[17]
set_location_assignment PIN_H27 -to ddr3_dq[18]
set_location_assignment PIN_B27 -to ddr3_dq[19]
set_location_assignment PIN_C27 -to ddr3_dq[20]
set_location_assignment PIN_E27 -to ddr3_dq[21]
set_location_assignment PIN_M27 -to ddr3_dq[22]
set_location_assignment PIN_N27 -to ddr3_dq[23]
set_location_assignment PIN_C26 -to ddr3_dq[24]
set_location_assignment PIN_D26 -to ddr3_dq[25]
set_location_assignment PIN_K25 -to ddr3_dq[26]
set_location_assignment PIN_R26 -to ddr3_dq[27]
set_location_assignment PIN_T27 -to ddr3_dq[28]
set_location_assignment PIN_A26 -to ddr3_dq[29]
set_location_assignment PIN_F26 -to ddr3_dq[30]
set_location_assignment PIN_G26 -to ddr3_dq[31]

set_location_assignment PIN_A20 -to ddr3_dqs_p[4]
set_location_assignment PIN_B21 -to ddr3_dqs_n[4]
set_location_assignment PIN_C23 -to ddr3_dqs_p[5]
set_location_assignment PIN_D23 -to ddr3_dqs_n[5]
set_location_assignment PIN_M21 -to ddr3_dm[4]
set_location_assignment PIN_B22 -to ddr3_dm[5]
set_location_assignment PIN_D20 -to ddr3_dq[32]
set_location_assignment PIN_H21 -to ddr3_dq[33]
set_location_assignment PIN_D21 -to ddr3_dq[34]
set_location_assignment PIN_J21 -to ddr3_dq[35]
set_location_assignment PIN_A21 -to ddr3_dq[36]
set_location_assignment PIN_G21 -to ddr3_dq[37]
set_location_assignment PIN_A22 -to ddr3_dq[38]
set_location_assignment PIN_C20 -to ddr3_dq[39]
set_location_assignment PIN_A23 -to ddr3_dq[40]
set_location_assignment PIN_E22 -to ddr3_dq[41]
set_location_assignment PIN_L22 -to ddr3_dq[42]
set_location_assignment PIN_C22 -to ddr3_dq[43]
set_location_assignment PIN_N22 -to ddr3_dq[44]
set_location_assignment PIN_F22 -to ddr3_dq[45]
set_location_assignment PIN_P22 -to ddr3_dq[46]
set_location_assignment PIN_J22 -to ddr3_dq[47]

set_location_assignment PIN_D24 -to ddr3_dqs_p[6]
set_location_assignment PIN_E24 -to ddr3_dqs_n[6]
set_location_assignment PIN_A25 -to ddr3_dqs_p[7]
set_location_assignment PIN_B25 -to ddr3_dqs_n[7]
set_location_assignment PIN_J23 -to ddr3_dm[6]
set_location_assignment PIN_D25 -to ddr3_dm[7]
set_location_assignment PIN_C24 -to ddr3_dq[48]
set_location_assignment PIN_M23 -to ddr3_dq[49]
set_location_assignment PIN_B24 -to ddr3_dq[50]
set_location_assignment PIN_R23 -to ddr3_dq[51]
set_location_assignment PIN_G24 -to ddr3_dq[52]
set_location_assignment PIN_G23 -to ddr3_dq[53]
set_location_assignment PIN_F24 -to ddr3_dq[54]
set_location_assignment PIN_F23 -to ddr3_dq[55]
set_location_assignment PIN_R24 -to ddr3_dq[56]
set_location_assignment PIN_G25 -to ddr3_dq[57]
set_location_assignment PIN_T26 -to ddr3_dq[58]
set_location_assignment PIN_E25 -to ddr3_dq[59]
set_location_assignment PIN_N24 -to ddr3_dq[60]
set_location_assignment PIN_K24 -to ddr3_dq[61]
set_location_assignment PIN_T25 -to ddr3_dq[62]
set_location_assignment PIN_P24 -to ddr3_dq[63]

set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[0] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[1] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[2] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[3] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[4] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[5] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[6] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[7] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[8] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[9] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[10] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[11] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[12] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_a[13] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_ba[0] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_ba[1] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_ba[2] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_clk_p 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_clk_n 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_cke 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_cs_n 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_ras_n 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_cas_n 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_we_n 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_odt 
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_reset_n 
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_rzq

set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[0] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[0] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[1] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[1] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[0] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[1] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[0] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[1] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[2] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[3] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[4] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[5] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[6] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[7] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[8] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[9] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[10] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[11] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[12] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[13] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[14] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[15] 

set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[2] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[2] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[3] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[3] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[2] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[3] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[16] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[17] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[18] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[19] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[20] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[21] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[22] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[23] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[24] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[25] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[26] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[27] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[28] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[29] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[30] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[31] 

set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[4] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[4] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[5] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[5] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[4] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[5] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[32] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[33] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[34] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[35] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[36] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[37] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[38] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[39] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[40] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[41] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[42] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[43] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[44] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[45] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[46] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[47] 

set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[6] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[6] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_p[7] 
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_dqs_n[7] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[6] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dm[7] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[48] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[49] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[50] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[51] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[52] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[53] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[54] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[55] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[56] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[57] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[58] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[59] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[60] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[61] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[62] 
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_dq[63] 

set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[0] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[1] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[2] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[3] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[4] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[5] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[6] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[7] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[8] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[9] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[10] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[11] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[12] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_a[13] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_ba[0] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_ba[1] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_ba[2] 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_cke 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_cs_n 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_ras_n 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_cas_n 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_we_n 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_reset_n 
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_odt 

set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dm[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dm[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[4] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[5] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[6] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[0] -to ddr3_dq[7] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[8] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[9] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[10] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[11] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[12] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[13] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[14] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[1] -to ddr3_dq[15] -tag __ddr3x64_example_if0_p0

set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dm[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dm[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[16] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[17] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[18] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[19] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[20] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[21] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[22] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[2] -to ddr3_dq[23] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[24] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[25] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[26] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[27] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[28] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[29] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[30] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name DQ_GROUP 9 -from ddr3_dqs_p[3] -to ddr3_dq[31] -tag __ddr3x64_example_if0_p0

set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to ddr3_clk_p 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to ddr3_clk_n 

set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[0] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[0] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[1] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[1] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[0] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[0] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[1] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[1] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[0] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[1] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[0] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[1] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[2] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[3] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[4] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[5] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[6] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[7] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[8] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[9] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[10] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[11] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[12] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[13] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[14] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[15] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[0] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[1] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[2] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[3] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[4] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[5] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[6] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[7] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[8] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[9] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[10] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[11] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[12] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[13] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[14] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[15] 

set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[2] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[2] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[3] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[3] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[2] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[2] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[3] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[3] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[2] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[3] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[16] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[17] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[18] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[19] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[20] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[21] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[22] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[23] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[24] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[25] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[26] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[27] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[28] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[29] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[30] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[31] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[16] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[17] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[18] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[19] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[20] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[21] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[22] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[23] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[24] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[25] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[26] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[27] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[28] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[29] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[30] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[31] 

set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[4] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[4] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[5] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[5] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[4] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[4] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[5] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[5] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[4] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[5] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[32] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[33] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[34] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[35] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[36] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[37] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[38] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[39] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[40] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[41] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[42] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[43] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[44] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[45] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[46] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[47] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[32] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[33] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[34] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[35] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[36] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[37] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[38] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[39] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[40] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[41] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[42] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[43] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[44] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[45] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[46] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[47] 

set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[6] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[6] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[7] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[7] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[6] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[6] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_p[7] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dqs_n[7] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[6] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dm[7] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[48] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[49] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[50] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[51] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[52] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[53] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[54] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[55] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[56] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[57] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[58] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[59] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[60] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[61] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[62] 
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_dq[63] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[48] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[49] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[50] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[51] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[52] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[53] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[54] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[55] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[56] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[57] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[58] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[59] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[60] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[61] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[62] 
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_dq[63] 

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[3] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[4] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[5] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[6] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[7] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[8] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[9] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[10] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[11] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[12] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_a[13] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_ba[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_ba[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_ba[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_clk_p 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_clk_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_cke 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_cs_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_ras_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_cas_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_we_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_reset_n 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_odt 

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[0] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[1] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[3] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[4] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[5] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[6] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[7] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[8] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[9] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[10] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[11] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[12] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[13] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[14] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[15] 

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[3] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[3] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[2] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[3] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[16] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[17] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[18] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[19] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[20] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[21] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[22] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[23] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[24] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[25] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[26] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[27] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[28] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[29] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[30] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[31] 

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[4] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[4] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[5] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[5] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[4] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[5] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[32] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[33] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[34] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[35] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[36] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[37] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[38] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[39] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[40] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[41] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[42] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[43] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[44] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[45] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[46] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[47] 

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[6] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[6] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_p[7] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dqs_n[7] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[6] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dm[7] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[48] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[49] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[50] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[51] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[52] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[53] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[54] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[55] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[56] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[57] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[58] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[59] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[60] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[61] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[62] 
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION ON -to ddr3_dq[63] 

set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_p[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_n[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_p[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_n[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dm[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dm[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[0] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[1] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[4] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[5] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[6] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[7] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[8] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[9] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[10] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[11] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[12] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[13] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[14] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[15] -tag __ddr3x64_example_if0_p0

set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_p[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_n[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_p[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dqs_n[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dm[2] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dm[3] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[16] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[17] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[18] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[19] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[20] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[21] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[22] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[23] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[24] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[25] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[26] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[27] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[28] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[29] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[30] -tag __ddr3x64_example_if0_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to ddr3_dq[31] -tag __ddr3x64_example_if0_p0

set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to i_fmcjesdadc1|sys_ddr3_cntrl 

set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to i_fmcjesdadc1|sys_ddr3_cntrl|pll0|pll_addr_cmd_clk 
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to i_fmcjesdadc1|sys_ddr3_cntrl|pll0|pll_avl_clk 
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to i_fmcjesdadc1|sys_ddr3_cntrl|pll0|pll_config_clk 
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to i_fmcjesdadc1|sys_ddr3_cntrl|pll0|pll_afi_clk 
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to i_fmcjesdadc1|sys_ddr3_cntrl|pll0|pll_hr_clk 

set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[4].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[5].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[6].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uio_pads|dq_ddio[7].read_capture_clk_buffer 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[4] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[5] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[6] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[7] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[4] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[5] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[6] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|uread_datapath|reset_n_fifo_write_side[7] 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|ureset|phy_reset_mem_stable_n 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|p0|umemphy|ureset|phy_reset_n 
set_instance_assignment -name GLOBAL_SIGNAL OFF -to i_fmcjesdadc1|sys_ddr3_cntrl|s0|sequencer_rw_mgr_inst|rw_mgr_inst|rw_mgr_core_inst|rw_soft_reset_n 

# ethernet interface

set_location_assignment PIN_M14 -to eth_rx_clk
set_location_assignment PIN_N14 -to eth_rx_data[0]
set_location_assignment PIN_N15 -to eth_rx_data[1]
set_location_assignment PIN_P15 -to eth_rx_data[2]
set_location_assignment PIN_B9  -to eth_rx_data[3]
set_location_assignment PIN_C9  -to eth_rx_cntrl[4]
set_location_assignment PIN_K18 -to eth_tx_clk_out[5]
set_location_assignment PIN_L18 -to eth_tx_data[0]
set_location_assignment PIN_R11 -to eth_tx_data[1]
set_location_assignment PIN_T11 -to eth_tx_data[2]
set_location_assignment PIN_H9  -to eth_tx_data[3]
set_location_assignment PIN_J9  -to eth_tx_cntrl
set_location_assignment PIN_F7  -to eth_mdc
set_location_assignment PIN_G7  -to eth_mdio_i
set_location_assignment PIN_F9  -to eth_mdio_o
set_location_assignment PIN_G9  -to eth_mdio_t

set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_data[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_data[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_data[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_data[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_rx_cntrl[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_clk_out[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_data[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_data[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_data[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_data[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_tx_cntrl
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_mdc
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_mdio_i
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_mdio_o
set_instance_assignment -name IO_STANDARD "2.5 V" -to eth_mdio_t

# leds

set_location_assignment PIN_M19   -to led_grn[0]
set_location_assignment PIN_L19   -to led_grn[1]
set_location_assignment PIN_K19   -to led_grn[2]
set_location_assignment PIN_J19   -to led_grn[3]
set_location_assignment PIN_K20   -to led_grn[4]
set_location_assignment PIN_J20   -to led_grn[5]
set_location_assignment PIN_T20   -to led_grn[6]
set_location_assignment PIN_R20   -to led_grn[7]
set_location_assignment PIN_N20   -to led_red[0]
set_location_assignment PIN_C15   -to led_red[1]
set_location_assignment PIN_AL28  -to led_red[2]
set_location_assignment PIN_F11   -to led_red[3]
set_location_assignment PIN_AJ31  -to led_red[4]
set_location_assignment PIN_AN34  -to led_red[5]
set_location_assignment PIN_AJ34  -to led_red[6]
set_location_assignment PIN_AK33  -to led_red[7]
set_location_assignment PIN_D6    -to push_buttons[0]
set_location_assignment PIN_C6    -to push_buttons[1]
set_location_assignment PIN_K7    -to push_buttons[2]
set_location_assignment PIN_C8    -to dip_switches[0]
set_location_assignment PIN_D8    -to dip_switches[1]
set_location_assignment PIN_E7    -to dip_switches[2]
set_location_assignment PIN_E6    -to dip_switches[3]
set_location_assignment PIN_G8    -to dip_switches[4]
set_location_assignment PIN_F8    -to dip_switches[5]
set_location_assignment PIN_D15   -to dip_switches[6]
set_location_assignment PIN_G11   -to dip_switches[7]

set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_grn[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to led_red[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to push_buttons[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to push_buttons[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to push_buttons[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to dip_switches[7]


# globals

set_global_assignment -name SYNCHRONIZER_IDENTIFICATION AUTO
set_global_assignment -name ENABLE_ADVANCED_IO_TIMING ON
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name TIMEQUEST_REPORT_SCRIPT fmcjesdadc1_sta.tcl
set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF

project_close

################################################################################
################################################################################
