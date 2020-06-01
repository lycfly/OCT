debImport "-sv" "../pe_mode0_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode0_tb/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "190" "106" "901" "700"
verdiWindowResize -win $_Verdi_1 "190" "106" "913" "704"
verdiWindowResize -win $_Verdi_1 "190" "106" "959" "715"
verdiWindowResize -win $_Verdi_1 "190" "106" "1202" "770"
verdiWindowResize -win $_Verdi_1 "190" "106" "1323" "782"
verdiWindowResize -win $_Verdi_1 "190" "106" "1344" "782"
verdiWindowResize -win $_Verdi_1 "190" "106" "1355" "781"
verdiWindowResize -win $_Verdi_1 "190" "106" "1359" "781"
verdiWindowResize -win $_Verdi_1 "190" "106" "1369" "782"
verdiWindowResize -win $_Verdi_1 "190" "106" "1396" "788"
verdiWindowResize -win $_Verdi_1 "190" "106" "1418" "791"
verdiWindowResize -win $_Verdi_1 "190" "106" "1433" "793"
verdiWindowResize -win $_Verdi_1 "190" "106" "1440" "794"
verdiWindowResize -win $_Verdi_1 "190" "106" "1443" "794"
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_config" -win $_nTrace1
srcSelect -signal "start_weight_load" -win $_nTrace1
srcSelect -signal "start_feature_load" -win $_nTrace1
srcSelect -signal "start_psum_in_load" -win $_nTrace1
srcSelect -signal "load_full_cloumn" -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcSelect -signal "mac_finish" -win $_nTrace1
srcSelect -signal "psum_acc_finish" -win $_nTrace1
srcSelect -signal "psum_out_valid" -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcSelect -signal "fifo_full_filter" -win $_nTrace1
srcSelect -signal "shift_finish_flg" -win $_nTrace1
srcSelect -signal "psum_out" -win $_nTrace1
srcSelect -signal "psum_out_en" -win $_nTrace1
srcSelect -signal "psum_out_start" -win $_nTrace1
srcSelect -toggle -signal "psum_out_en" -win $_nTrace1
srcSelect -toggle -signal "psum_out_start" -win $_nTrace1
srcSelect -toggle -signal "psum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 110428.388747 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 220210.997442 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 178881.074169 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 200191.815857 -snap {("G1" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 15 16 17 18 19 \
           20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 16 17 18 19 20 \
           )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 17 18 19 20 )} \
           
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 18 19 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 19 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 10 11 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 11 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 13 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 15 20 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 15 17 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 15 16 17 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 16 17 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 17 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 15 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetCursor -win $_nWave2 525019.181586 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 305611.562745 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 285539.616887
wvSetCursor -win $_nWave2 347050.418711
wvSetCursor -win $_nWave2 565251.894654
wvSetCursor -win $_nWave2 625467.732229
wvSetCursor -win $_nWave2 264820.188904
wvSetCursor -win $_nWave2 233741.046930
wvSetCursor -win $_nWave2 276474.867145
wvSetCursor -win $_nWave2 276474.867145
wvSetCursor -win $_nWave2 90647.497424
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 104892.104163
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 171582.762982 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 158633.120493 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 117194.264527 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 134676.281888
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcSelect -signal "cnt_b" -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcSelect -signal "cnt_clip" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcSelect -signal "cnt_b" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcSelect -signal "psum_acc_finish" -win $_nTrace1
srcSelect -signal "both_pads_ready" -win $_nTrace1
srcSelect -signal "shift_finish_flg" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 40791.373841 -snap {("G1" 22)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_addr" -win $_nTrace1
srcSelect -signal "weight_addr_true" -win $_nTrace1
srcSelect -signal "zero_output_flg" -win $_nTrace1
srcSelect -signal "base_weight_address" -win $_nTrace1
srcSelect -signal "weight_out_from_pad" -win $_nTrace1
srcSelect -signal "weight_out" -win $_nTrace1
srcSelect -signal "Wpad_data_ready" -win $_nTrace1
srcSelect -signal "Wpad_full" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 30 31 32 33 34 35 36 37 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 9064.749742 132733.835514
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accumulate_mode" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 35572.386177 -snap {("G1" 38)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_initial_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 38 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 36668.566631 -snap {("G1" 39)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 38960.580308 -snap {("G1" 41)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mult_result" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSetPosition -win $_nWave2 {("G1" 38)}
wvSetPosition -win $_nWave2 {("G1" 37)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "PinA" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "PinB" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 36768.219399 -snap {("G1" 44)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 38661.622002 -snap {("G1" 29)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "restore_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mul_start2" -win $_nTrace1
srcSelect -signal "mul_start3" -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcSelect -signal "restore_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 37166.830473 -snap {("G1" 34)}
wvSetCursor -win $_nWave2 34874.816797 -snap {("G1" 33)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "restore_state" -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 30988.358823 -snap {("G1" 35)}
wvSetCursor -win $_nWave2 34874.816797 -snap {("G1" 33)}
wvSetCursor -win $_nWave2 31785.580972 -snap {("G1" 35)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 41152.941215 -snap {("G1" 36)}
wvSetCursor -win $_nWave2 39857.455224 -snap {("G1" 37)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 28696.345147 -snap {("G1" 38)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full_to_restore_delay" -win $_nTrace1
srcSelect -signal "pad_full_to_restore" -win $_nTrace1
srcSelect -signal "both_pads_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 31486.622666 -snap {("G1" 40)}
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Wpad_full" -win $_nTrace1
srcSelect -signal "Fpad_full" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvSetCursor -win $_nWave2 43544.607661 -snap {("G1" 43)}
wvSetCursor -win $_nWave2 25308.151016 -snap {("G1" 44)}
wvSelectSignal -win $_nWave2 {( "G1" 44 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 28998.955648 -snap {("G1" 40)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode0_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
srcSelect -signal "raddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
srcSelect -signal "raddra_filter" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode0_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "addr_closed" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "addr_closed" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
wvSetCursor -win $_nWave2 41355.898949 -snap {("G1" 42)}
wvSelectSignal -win $_nWave2 {( "G1" 44 )} 
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 29297.913954 -snap {("G1" 44)}
wvSetCursor -win $_nWave2 29198.261185 -snap {("G1" 43)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "raddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "raddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "raddra_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_data_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data_finish_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 394721.998388 -snap {("G1" 31)}
wvSetCursor -win $_nWave2 523000.000000
wvSetCursor -win $_nWave2 349959.709911
verdiWindowResize -win $_Verdi_1 -2 "25" "1440" "824"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 566814.602720 -snap {("G1" 31)}
wvSetCursor -win $_nWave2 527000.000000
wvSetCursor -win $_nWave2 555969.935576
wvSetCursor -win $_nWave2 377394.416607
wvSetCursor -win $_nWave2 516206.156049
wvSetCursor -win $_nWave2 529942.734431
wvSetCursor -win $_nWave2 771417.322835
wvSetCursor -win $_nWave2 780816.034359
wvSetCursor -win $_nWave2 788768.790265
wvSetCursor -win $_nWave2 793106.657122
wvSetCursor -win $_nWave2 331846.814603
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 205325.697924 -snap {("G1" 48)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 232075.876879 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 231352.899069 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 215000.000000
wvSetCursor -win $_nWave2 234244.810308
wvSetCursor -win $_nWave2 232075.876879
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 484395.132427 -snap {("G1" 27)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out" -win $_nTrace1
srcSelect -signal "psum_out_start" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out_start" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out" -win $_nTrace1
srcSelect -signal "psum_out_start" -win $_nTrace1
srcSelect -signal "psum_out_en" -win $_nTrace1
srcSelect -signal "psum_to_bus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_psum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 704903.364352 -snap {("G1" 52)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 608747.315676 735268.432355
wvSelectSignal -win $_nWave2 {( "G1" 51 )} 
wvZoom -win $_nWave2 703207.963275 720234.427080
wvSelectSignal -win $_nWave2 {( "G1" 52 )} 
wvSelectSignal -win $_nWave2 {( "G1" 51 )} 
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 474996.420902 551632.068719
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 889985.683608 919627.773801
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_transform_finish" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out_ready" -win $_nTrace1
srcSelect -signal "psum_transform_start" -win $_nTrace1
srcSelect -signal "psum_transform_finish" -win $_nTrace1
srcSelect -signal "psum_transform_finish" -win $_nTrace1
srcSelect -signal "psum_transform_start" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_num" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 52 )} 
wvSelectSignal -win $_nWave2 {( "G1" 53 )} 
wvSelectSignal -win $_nWave2 {( "G1" 54 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 49 50 51 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 49 50 51 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 909039.797419 -snap {("G1" 50)}
wvSelectSignal -win $_nWave2 {( "G1" 55 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_transforming" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 56)}
wvSetPosition -win $_nWave2 {("G1" 55)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSetPosition -win $_nWave2 {("G1" 53)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 53)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSelectSignal -win $_nWave2 {( "G1" 55 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_read_address" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_to_bus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSelect -signal "psum_read_address" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 56 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSetPosition -win $_nWave2 {("G1" 56)}
wvSelectSignal -win $_nWave2 {( "G1" 56 )} 
wvSelectSignal -win $_nWave2 {( "G1" 55 )} 
wvSelectSignal -win $_nWave2 {( "G1" 55 56 )} 
wvSelectSignal -win $_nWave2 {( "G1" 55 56 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 909156.498561 -snap {("G1" 54)}
wvSetCursor -win $_nWave2 911023.716841 -snap {("G1" 55)}
wvSetCursor -win $_nWave2 908774.567549 -snap {("G1" 54)}
wvSetCursor -win $_nWave2 911023.716841 -snap {("G1" 49)}
wvSelectSignal -win $_nWave2 {( "G1" 51 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 898812.090437 948191.615228
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 907012.555542 -snap {("G1" 52)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 54 )} 
wvSetCursor -win $_nWave2 908991.978153 -snap {("G1" 54)}
wvSetCursor -win $_nWave2 910936.053933 -snap {("G1" 55)}
wvSetCursor -win $_nWave2 913127.557538 -snap {("G1" 55)}
wvSetCursor -win $_nWave2 915071.633317 -snap {("G1" 54)}
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 910582.585609 -snap {("G1" 49)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 918040.767235 -snap {("G1" 56)}
wvSetCursor -win $_nWave2 917015.709097 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 917015.709097 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 917051.055929 -snap {("G1" 49)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode0_tb/simulation/novas.fsdb}
wvSetCursor -win $_nWave3 3855.407750
wvSetCursor -win $_nWave3 11858.299595
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave3 1577.212261
wvSelectGroup -win $_nWave3 {G1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 63)}
wvSetPosition -win $_nWave2 {("G1" 62)}
wvSelectSignal -win $_nWave2 {( "G1" 62 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 62)}
wvSetPosition -win $_nWave2 {("G1" 61)}
wvSelectSignal -win $_nWave2 {( "G1" 61 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 61)}
wvSetPosition -win $_nWave2 {("G1" 60)}
wvSelectSignal -win $_nWave2 {( "G1" 60 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 60)}
wvSetPosition -win $_nWave2 {("G1" 59)}
wvSelectSignal -win $_nWave2 {( "G1" 59 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 59)}
wvSetPosition -win $_nWave2 {("G1" 58)}
wvSelectSignal -win $_nWave2 {( "G1" 58 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 58)}
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSelectSignal -win $_nWave2 {( "G1" 57 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSetPosition -win $_nWave2 {("G1" 56)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSetPosition -win $_nWave2 {("G1" 56)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvSetActiveFile -win $_nWave3 \
           {/home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode0_tb/simulation/novas.fsdb}
srcAddSelectedToWave -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSetPosition -win $_nWave2 {("G1" 56)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_config" -win $_nTrace1
srcSelect -signal "start_weight_load" -win $_nTrace1
srcSelect -signal "start_feature_load" -win $_nTrace1
srcSelect -signal "start_psum_in_load" -win $_nTrace1
srcSelect -signal "start_psum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_full_cloumn" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCompareSelected -win $_nWave3 -two
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 7 )} 
wvCompareSelected -win $_nWave3 -two
wvSetCursor -win $_nWave3 10285.600764 -snap {("G1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 4 7 )} 
wvSetCursor -win $_nWave3 12389.473648 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 12389.473648 -snap {("G1" 4)}
wvSetErrorViewingOptions -win $_nWave3 -dispMark off
wvCompareSelected -win $_nWave3 -two
wvSetErrorViewingOptions -win $_nWave3 -dispMark on
wvSetCursor -win $_nWave3 10753.128072 -snap {("G1" 4)}
wvSetCursor -win $_nWave3 12740.119128 -snap {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 7)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_weight_load" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
srcDeselectAll -win $_nTrace1
srcSignalView -on
srcSignalView -off
verdiDockWidgetHide -dock widgetDock_<Signal_List>
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
wvSelectGroup -win $_nWave3 {G1}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvRenameGroup -win $_nWave3 {G1} {pe}
wvSelectGroup -win $_nWave3 {G2}
wvRenameGroup -win $_nWave3 {G2} {input data}
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("pe" 3)}
wvSetPosition -win $_nWave3 {("pe" 4)}
wvSetPosition -win $_nWave3 {("pe" 5)}
wvSetPosition -win $_nWave3 {("pe" 6)}
wvSetPosition -win $_nWave3 {("pe" 7)}
wvSetPosition -win $_nWave3 {("pe" 8)}
wvSetPosition -win $_nWave3 {("pe" 9)}
wvSetPosition -win $_nWave3 {("pe" 10)}
wvSetPosition -win $_nWave3 {("pe" 11)}
wvSetPosition -win $_nWave3 {("pe" 12)}
wvSetPosition -win $_nWave3 {("pe" 13)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("pe" 13)}
wvScrollDown -win $_nWave3 2
wvSetPosition -win $_nWave3 {("pe" 10)}
wvSetPosition -win $_nWave3 {("pe" 11)}
wvSetPosition -win $_nWave3 {("pe" 12)}
wvSetPosition -win $_nWave3 {("pe" 13)}
wvSetPosition -win $_nWave3 {("pe" 14)}
wvSetPosition -win $_nWave3 {("input data" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("input data" 6)}
wvSetPosition -win $_nWave3 {("input data" 6)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {input data}
wvScrollUp -win $_nWave3 3
wvSelectGroup -win $_nWave3 {pe} {input data}
wvSetSpacing -win $_nWave3 10
wvUndo -win $_nWave3
wvSetPosition -win $_nWave3 {("input data" 0)}
wvScrollDown -win $_nWave3 5
wvScrollDown -win $_nWave3 1
wvSetPosition -win $_nWave3 {("pe" 10)}
wvSetPosition -win $_nWave3 {("pe" 11)}
wvSetPosition -win $_nWave3 {("pe" 12)}
wvSetPosition -win $_nWave3 {("pe" 13)}
wvSetPosition -win $_nWave3 {("pe" 14)}
wvSetPosition -win $_nWave3 {("input data" 0)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("input data" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("input data" 6)}
wvScrollUp -win $_nWave3 6
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {pe}
wvScrollDown -win $_nWave3 2
wvScrollUp -win $_nWave3 2
wvScrollDown -win $_nWave3 3
wvSelectGroup -win $_nWave3 {pe} {input data}
wvSetSpacing -win $_nWave3 5
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSelectGroup -win $_nWave3 {input data}
wvSelectGroup -win $_nWave3 {input data}
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSelectGroup -win $_nWave3 {input data}
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSelectSignal -win $_nWave3 {( "input data" 1 2 3 4 5 6 )} 
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "input data" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave3 -format UDec
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvChangeDisplayAttr -win $_nWave3 -c ID_ORANGE5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave3 -c ID_ORANGE5 -lw 2 -ls solid
wvChangeDisplayAttr -win $_nWave3 -c ID_ORANGE5 -lw 2 -ls l_dash
wvSetCursor -win $_nWave3 15915.151515 -snap {("input data" 1)}
wvSetCursor -win $_nWave3 0.000000 -snap {("input data" 1)}
wvSetCursor -win $_nWave3 69781.818182 -snap {("input data" 1)}
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvChangeDisplayAttr -win $_nWave3 -c ID_ORANGE5 -lw 2 -ls solid
wvChangeDisplayAttr -win $_nWave3 -c ID_ORANGE5 -lw 1 -ls solid
wvSetCursor -win $_nWave3 134666.666667 -snap {("input data" 1)}
wvSetCursor -win $_nWave3 132218.181818
wvSetMarker -win $_nWave3 -keepViewRange -name "ff" 132218.182000 ID_RED5 \
           long_dashed
wvSetCursor -win $_nWave3 132218.181818
wvSetCursor -win $_nWave3 138951.515152
wvSetCursor -win $_nWave3 156090.909091
wvSetCursor -win $_nWave3 137115.151515
wvSetCursor -win $_nWave3 130381.818182
wvSetCursor -win $_nWave3 132830.303030 -snap {("pe" 0)}
wvSetCursor -win $_nWave3 130381.818182 -snap {("pe" 0)}
wvSetCursor -win $_nWave3 151806.060606
wvSetCursor -win $_nWave3 130993.939394 -snap {("pe" 0)}
wvSetCursor -win $_nWave3 130993.939394 -snap {("pe" 0)}
wvSetCursor -win $_nWave3 130993.939394 -snap {("pe" 0)}
wvSelectGroup -win $_nWave3 {pe}
wvSelectUserMarker -win $_nWave3 -name "ff"
wvSelectUserMarker -win $_nWave3 -name "ff"
wvSelectUserMarker -win $_nWave3 -name "ff"
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("input data" 6)}
wvUndo -win $_nWave3
wvSetPosition -win $_nWave3 {("input data" 0)}
wvSetPosition -win $_nWave3 {("pe" 0)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("pe" 8)}
wvSetPosition -win $_nWave3 {("input data" 6)}
wvSetCursor -win $_nWave3 140175.757576 -snap {("pe" 4)}
wvSetCursor -win $_nWave3 13000.000000
wvSelectUserMarker -win $_nWave3 -name "ff"
wvSelectUserMarker -win $_nWave3 -name "ff"
wvSelectUserMarker -win $_nWave3 -name "ff"
wvSetCursor -win $_nWave3 131606.060606 -snap {("pe" 0)}
wvSetCursor -win $_nWave3 131606.060606 -snap {("pe" 1)}
srcActiveTrace "pe_mode0_tb.U_PE_0.clk" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 130000 -TraceValue 0
nsMsgSwitchTab -tab trace
wvSetCursor -win $_nWave3 131606.060606 -snap {("pe" 1)}
srcActiveTrace "pe_mode0_tb.U_PE_0.clk" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 130000 -TraceValue 0
wvSetCursor -win $_nWave3 132000.000000
wvSetCursor -win $_nWave3 146296.969697
wvSetCursor -win $_nWave3 135278.787879
wvDeleteMarker -win $_nWave3 "ff"
wvSetCursor -win $_nWave3 135278.787879
wvSetCursor -win $_nWave3 162824.242424
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
wvSelectSignal -win $_nWave3 {( "pe" 4 )} 
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSelectSignal -win $_nWave3 {( "input data" 2 )} 
wvSelectSignal -win $_nWave3 {( "input data" 4 )} 
wvSelectSignal -win $_nWave3 {( "pe" 6 )} 
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSetCursor -win $_nWave3 98551.515152 -snap {("input data" 4)}
wvSetCursor -win $_nWave3 192206.060606 -snap {("input data" 3)}
wvSetCursor -win $_nWave3 222812.121212 -snap {("pe" 7)}
wvSetCursor -win $_nWave3 183636.363636 -snap {("input data" 2)}
wvSetCursor -win $_nWave3 195878.787879 -snap {("input data" 3)}
wvSelectGroup -win $_nWave3 {G3}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_finish" -win $_nTrace1
srcSelect -signal "psum_acc_finish" -win $_nTrace1
srcSelect -signal "psum_out_valid" -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcSelect -toggle -signal "fifo_full_fmap" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "input data" 8 )} 
wvSelectSignal -win $_nWave3 {( "input data" 9 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("input data" 8)}
wvSelectSignal -win $_nWave3 {( "input data" 7 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("input data" 7)}
wvSelectSignal -win $_nWave3 {( "input data" 7 )} 
wvSelectSignal -win $_nWave3 {( "input data" 7 )} 
wvSetPosition -win $_nWave3 {("G3" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G3" 4 )} 
wvSetRadix -win $_nWave3 -format UDec
srcDeselectAll -win $_nTrace1
debReload
srcSignalView -off
verdiDockWidgetHide -dock widgetDock_<Signal_List>
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSetRadix -win $_nWave3 -format UDec
wvSetCursor -win $_nWave3 216214.097001 -snap {("G4" 0)}
wvSetCursor -win $_nWave3 216214.097001 -snap {("G4" 1)}
wvSetCursor -win $_nWave3 97388.219329 -snap {("input data" 4)}
wvSetCursor -win $_nWave3 80850.597179 -snap {("input data" 4)}
wvSetCursor -win $_nWave3 80238.092655 -snap {("input data" 3)}
wvSetCursor -win $_nWave3 74725.551938 -snap {("input data" 2)}
wvSelectSignal -win $_nWave3 {( "input data" 4 )} 
wvSearchNext -win $_nWave3
wvSearchPrev -win $_nWave3
wvSearchUp -win $_nWave3
wvSearchDown -win $_nWave3
wvSetCursor -win $_nWave3 75338.056462 -snap {("input data" 4)}
wvSetCursor -win $_nWave3 72275.533842 -snap {("input data" 2)}
wvSelectSignal -win $_nWave3 {( "input data" 3 )} 
wvSetCursor -win $_nWave3 75338.056462 -snap {("input data" 3)}
wvSetCursor -win $_nWave3 72888.038366 -snap {("input data" 2)}
tfgGenerate -incr -ref {pe_mode0_tb.U_PE_0.weight_in[15:0]#75000} -startWithStmt -schFG
wvSetCursor -win $_nWave3 91875.678612 -snap {("input data" 3)}
wvSelectSignal -win $_nWave3 {( "input data" 4 )} 
wvSetCursor -win $_nWave3 60637.947884 -snap {("input data" 4)}
wvSearchNext -win $_nWave3
wvSearchPrev -win $_nWave3
wvSearchPrev -win $_nWave3
wvSetSearchMode -win $_nWave3 -posedge
wvSearchNext -win $_nWave3
wvSearchPrev -win $_nWave3
wvSearchNext -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcSelect -signal "both_pads_ready" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
tfgNWNodeDisplayFaninRegister -active {pe_mode0_tb.U_PE_0.psum_acc_finish#97000}
wvScrollDown -win $_nWave3 2
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "psum_acc_finish#97000.000_driverRegAct" 2 )} \
           
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 0)}
wvSetPosition -win $_nWave3 {("psum_acc_finish#97000.000_driverRegAct" 2)}
wvSelectGroup -win $_nWave3 {psum_acc_finish#97000.000_driverRegAct}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvScrollUp -win $_nWave3 5
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "pe" 8 )} 
wvSelectSignal -win $_nWave3 {( "pe" 7 )} 
wvSelectSignal -win $_nWave3 {( "pe" 8 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "input data" 6 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 126788.436485 -snap {("input data" 3)}
wvSetCursor -win $_nWave3 99225.732901 -snap {("G3" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "external_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("G4" 2)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 2)}
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcSelect -signal "PinA" -win $_nTrace1
srcSelect -signal "PinB" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcSelect -toggle -signal "accum_out" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {G3}
wvRenameGroup -win $_nWave3 {G3} {MAC control}
wvSelectSignal -win $_nWave3 {( "MAC control" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC control" 3 )} 
wvSelectSignal -win $_nWave3 {( "MAC control" 3 4 5 )} 
wvSetPosition -win $_nWave3 {("MAC control" 4)}
wvSetPosition -win $_nWave3 {("MAC control" 5)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G5" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 3)}
wvSetPosition -win $_nWave3 {("G5" 3)}
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvScrollDown -win $_nWave3 1
wvSelectGroup -win $_nWave3 {G5}
wvSelectSignal -win $_nWave3 {( "G5" 1 )} 
wvSelectSignal -win $_nWave3 {( "G5" 1 2 3 )} 
wvSelectSignal -win $_nWave3 {( "G5" 1 2 3 )} 
wvSetRadix -win $_nWave3 -format UDec
wvSelectGroup -win $_nWave3 {G4}
wvRenameGroup -win $_nWave3 {G4} {Psum pad}
wvSelectGroup -win $_nWave3 {G5}
wvRenameGroup -win $_nWave3 {G5} {MAC}
wvSelectSignal -win $_nWave3 {( "MAC" 1 )} 
wvSelectGroup -win $_nWave3 {MAC}
wvSelectSignal -win $_nWave3 {( "MAC" 1 )} 
wvSelectGroup -win $_nWave3 {MAC}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 14 19 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvSetPosition -win $_nWave3 {("MAC" 3)}
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSetPosition -win $_nWave3 {("MAC" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("MAC" 0)}
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSelectSignal -win $_nWave3 {( "MAC" 1 2 )} 
wvSetRadix -win $_nWave3 -format UDec
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcHBSelect "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_store_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave3 218051.610573 240714.277964
wvScrollDown -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 180116.204003 262104.583602
wvZoom -win $_nWave3 210497.953447 220554.630093
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSetPosition -win $_nWave3 {("MAC" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("MAC" 0)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSelectSignal -win $_nWave3 {( "MAC" 6 )} 
wvSetPosition -win $_nWave3 {("MAC" 6)}
wvSetPosition -win $_nWave3 {("MAC" 5)}
wvSetPosition -win $_nWave3 {("MAC" 4)}
wvSetPosition -win $_nWave3 {("MAC" 3)}
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvZoom -win $_nWave3 42382.182053 329276.952873
wvZoom -win $_nWave3 79424.760596 124061.067741
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 133210.213977 -snap {("MAC" 1)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoom -win $_nWave3 0.000000 503550.677857
srcDeselectAll -win $_nTrace1
debReload
wvZoom -win $_nWave3 0.000000 394323.416553
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoom -win $_nWave3 8655.258982 340864.464018
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave3 214559.645184 -snap {("input data" 6)}
wvSetCursor -win $_nWave3 220135.784196 -snap {("input data" 6)}
wvZoom -win $_nWave3 213272.843873 222923.853703
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 0.000000 370040.526677
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "MAC" 2 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 3 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 3 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 6 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 3 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 6 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 3 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 6 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 5 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 4 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 3 )} 
wvSelectSignal -win $_nWave3 {( "pe" 7 )} 
wvSelectSignal -win $_nWave3 {( "pe" 6 )} 
wvSelectSignal -win $_nWave3 {( "pe" 7 )} 
wvSelectSignal -win $_nWave3 {( "pe" 8 )} 
wvSelectGroup -win $_nWave3 {input data}
wvSelectSignal -win $_nWave3 {( "input data" 1 )} 
wvSelectSignal -win $_nWave3 {( "input data" 2 )} 
wvSelectSignal -win $_nWave3 {( "input data" 3 )} 
wvSelectSignal -win $_nWave3 {( "input data" 4 )} 
wvSelectSignal -win $_nWave3 {( "input data" 5 )} 
wvSelectSignal -win $_nWave3 {( "input data" 6 )} 
wvSelectSignal -win $_nWave3 {( "Psum pad" 1 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 1 )} 
wvSelectSignal -win $_nWave3 {( "MAC" 2 )} 
wvSelectSignal -win $_nWave3 {( "Psum pad" 1 )} 
wvChangeDisplayAttr -win $_nWave3 -h 20
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvChangeDisplayAttr -win $_nWave3 -h 25
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSetCursor -win $_nWave3 229095.458414 -snap {("input data" 1)}
wvSetCursor -win $_nWave3 177256.340087 -snap {("Psum pad" 1)}
wvSetCursor -win $_nWave3 213567.611911 -snap {("pe" 6)}
wvSelectSignal -win $_nWave3 {( "pe" 6 )} 
wvSetCursor -win $_nWave3 213000.000000
wvSetMarker -win $_nWave3 -keepViewRange -name "psum in accumulate" 213000.000000 \
           ID_RED5 short_dashed
wvDeleteMarker -win $_nWave3 "psum in accumulate"
wvSetMarker -win $_nWave3 -keepViewRange -name "psum in" 213000.000000 ID_RED5 \
           short_dashed
wvSetCursor -win $_nWave3 227662.118737 -snap {("pe" 4)}
wvSetCursor -win $_nWave3 241995.515509 -snap {("pe" 3)}
wvSetCursor -win $_nWave3 225750.999167
wvSetCursor -win $_nWave3 229573.238307
wvSetCursor -win $_nWave3 227662.118737
wvSetCursor -win $_nWave3 226467.669006
wvSetCursor -win $_nWave3 226945.448898
wvSetMarker -win $_nWave3 -keepViewRange -name "window reuse" 226945.449000 \
           ID_RED5 short_dashed
wvDeleteMarker -win $_nWave3 "window reuse"
wvSetCursor -win $_nWave3 228617.678522
wvZoom -win $_nWave3 226945.448898 256090.022336
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 252204.706380 -snap {("input data" 1)}
wvSetCursor -win $_nWave3 243173.463482 -snap {("input data" 0)}
wvSetCursor -win $_nWave3 237453.676313
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 0.000000 348837.959974
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 0.000000 368880.941535
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 0.000000 391980.651883
wvSetCursor -win $_nWave3 257102.867859
wvSetCursor -win $_nWave3 267225.028011
wvSetCursor -win $_nWave3 261910.893931
wvSetCursor -win $_nWave3 259633.407897
wvSetCursor -win $_nWave3 257102.867859
wvSetCursor -win $_nWave3 12146.592182
wvSetCursor -win $_nWave3 12399.646186
wvSetCursor -win $_nWave3 12399.646186
wvSetCursor -win $_nWave3 13411.862201
wvSetCursor -win $_nWave3 13158.808197
wvSetCursor -win $_nWave3 12652.700190
wvSetCursor -win $_nWave3 13158.808197
wvSelectSignal -win $_nWave3 {( "MAC" 1 )} 
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "Psum pad" 1 )} 
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave3 189292.386438 -snap {("Psum pad" 1)}
wvSetCursor -win $_nWave3 101537.599405 -snap {("input data" 0)}
wvSetCursor -win $_nWave3 208133.111607
srcHBSelect "pe_mode0_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode0_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSetPosition -win $_nWave3 {("MAC" 0)}
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("MAC" 1)}
wvSetPosition -win $_nWave3 {("MAC" 2)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSetCursor -win $_nWave3 128288.932572
wvSetCursor -win $_nWave3 126265.767453
wvZoom -win $_nWave3 188531.705822 351270.050074
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
