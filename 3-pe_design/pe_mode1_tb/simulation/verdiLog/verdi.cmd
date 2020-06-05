debImport "-sv" "../pe_mode1_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/pe_mode1_tb/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {38 38 3 5 3 1} -backward
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
srcSelect -signal "psum_in" -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcSelect -toggle -signal "psum_in_en" -win $_nTrace1
srcSelect -toggle -signal "psum_in" -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_psum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out" -win $_nTrace1
srcSelect -signal "psum_out_en" -win $_nTrace1
srcSelect -signal "psum_to_bus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out_valid" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_acc_finish" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out_valid" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out_valid" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "shift_finish_flg" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clip_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "clip_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 18)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "shift_mac_finish_all" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 18)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Para_clip_num_max" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clip_num_cnt" -win $_nTrace1
srcSelect -signal "Para_clip_num_max" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1336376.789038 -snap {("G1" 19)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "shift_mac_finish" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1329361.687783
wvSetCursor -win $_nWave2 1334038.421953 -snap {("G1" 21)}
wvZoom -win $_nWave2 1322346.586529 1352745.358633
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSetCursor -win $_nWave2 1280513.141427 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 1308322.903630
wvSetCursor -win $_nWave2 1315907.384230
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
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
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoom -win $_nWave2 1291889.862328 1534593.241552
wvZoom -win $_nWave2 1337453.700730 1369348.387611
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 "510" "190" "900" "700"
wvSetCursor -win $_nWave2 1265301.618098 -snap {("G1" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1005632.347887 -snap {("G1" 12)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "Para_clip_num_max" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvZoom -win $_nWave2 1314643.304130 1422090.112641
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoom -win $_nWave2 1341202.433893 1365542.699651
wvSetCursor -win $_nWave2 1352961.310717 -snap {("G1" 14)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
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
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 102966.330741 -snap {("G1" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1283041.301627 1486558.197747
wvZoom -win $_nWave2 1337932.279241 1381488.461014
wvSetCursor -win $_nWave2 1352759.915589 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1217309.136421 1538385.481852
wvZoom -win $_nWave2 1341078.240792 1387491.654931
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 10 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
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
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 2 3 4 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvZoom -win $_nWave2 7435.440563 175662.283303
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
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
wvZoom -win $_nWave2 1305794.743429 1461276.595745
wvZoom -win $_nWave2 1341697.624220 1371762.638216
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1343593.692247 -snap {("G1" 13)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1277273.808434 1339736.791204
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvScrollDown -win $_nWave2 0
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 41050.716909 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 47148.479933 -snap {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 47992.844144 -snap {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSetRadix -win $_nWave2 -format UDec
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mult_result" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
srcDeselectAll -win $_nTrace1
srcSelect -signal "PinA" -win $_nTrace1
srcSelect -signal "PinB" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G2" 7 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ifmap_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 45031.541297 -snap {("G2" 8)}
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
srcDeselectAll -win $_nTrace1
srcSelect -signal "accumulate_mode" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_initial_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_initial_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 55594.626873 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 45030.861381 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ma" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mb" -win $_nTrace1
srcSelect -signal "ma" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "ifmap_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 13 14 15 16 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum_mac" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 17 )} 
wvSetRadix -win $_nWave2 -format UDec
srcSelect -win $_nTrace1 -range {329 329 1 8 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 329 -file \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/macc_control.v
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvZoom -win $_nWave2 1296212.534060 1429686.648501
wvZoom -win $_nWave2 1336400.244265 1364949.884548
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 19264.305177 216035.422343
wvZoom -win $_nWave2 41112.869277 79046.265842
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 17 )} 
wvSetRadix -win $_nWave2 -2Com
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
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
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 589958.470809 -snap {("G2" 18)}
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
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G2" 6)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvSelectSignal -win $_nWave2 {( "G2" 17 )} 
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1343024.249272 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 1343127.610026 -snap {("G1" 13)}
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetRadix -win $_nWave2 -Unsigned
wvSetRadix -win $_nWave2 -2Com
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_tmp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_clip" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_clip" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_clip" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_tmp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_read_address" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvZoom -win $_nWave2 1341344.637027 1360879.819455
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_clip" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 1347013.565988 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 1346947.029263 -snap {("G1" 15)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1343061.284529 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetCursor -win $_nWave2 1359003.483813 -snap {("G1" 18)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1357065.705995 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1343039.764388 -snap {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 1341043.662642 -snap {("G1" 12)}
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
wvSetCursor -win $_nWave2 1357092.320685 -snap {("G1" 13)}
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 1343172.837838 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 1360978.065419 -snap {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
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
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1440" "824"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 13121.588216 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 25071.584007 -snap {("G1" 9)}
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
wvSetCursor -win $_nWave2 612984.242917 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 614740.812454 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 617748.272419 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 619079.006917 -snap {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0.fifo_fmap" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0.fifo_fmap" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_i" -win $_nTrace1
srcSelect -signal "wr_en_i" -win $_nTrace1
srcSelect -signal "mem" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 17 18 19 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 13946.097537
wvSetCursor -win $_nWave2 15196.987965
wvSetCursor -win $_nWave2 17272.933782
wvSetCursor -win $_nWave2 19641.641188
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 19641.641188
wvSetCursor -win $_nWave2 19641.641188
wvSetCursor -win $_nWave2 21291.751965
wvSetCursor -win $_nWave2 24166.138480
wvSetCursor -win $_nWave2 20892.531616
wvSetCursor -win $_nWave2 13094.427459 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 14132.400367
wvSetCursor -win $_nWave2 13121.042149 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 15010.685135 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 13200.886218 -snap {("G1" 17)}
srcDeselectAll -win $_nTrace1
debReload
verdiWindowResize -win $_Verdi_1 "0" "25" "1440" "824"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
debReload
