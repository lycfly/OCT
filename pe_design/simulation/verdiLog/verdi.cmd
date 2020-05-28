debImport "-sv" "../True_dual_ports_ram.v" "../fifo.v" "../load_fmap.v" \
          "../load_weight.v" "../macc.v" "../macc_2stage.v" \
          "../macc_control.v" "../pe.v" "../pe_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/pe_design/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "140" "77" "901" "700"
verdiWindowResize -win $_Verdi_1 "140" "77" "920" "702"
verdiWindowResize -win $_Verdi_1 "140" "77" "1125" "733"
verdiWindowResize -win $_Verdi_1 "140" "77" "1459" "778"
verdiWindowResize -win $_Verdi_1 "140" "77" "1564" "795"
verdiWindowResize -win $_Verdi_1 "140" "77" "1661" "812"
verdiWindowResize -win $_Verdi_1 "140" "77" "1684" "818"
verdiWindowResize -win $_Verdi_1 "140" "77" "1685" "819"
verdiWindowResize -win $_Verdi_1 "140" "77" "1687" "821"
verdiWindowResize -win $_Verdi_1 "140" "77" "1687" "823"
verdiWindowResize -win $_Verdi_1 "140" "77" "1687" "826"
verdiWindowResize -win $_Verdi_1 "140" "77" "1687" "828"
verdiWindowResize -win $_Verdi_1 "140" "77" "1686" "831"
verdiWindowResize -win $_Verdi_1 "140" "77" "1683" "840"
verdiWindowResize -win $_Verdi_1 "140" "77" "1683" "843"
verdiWindowResize -win $_Verdi_1 "140" "77" "1684" "847"
verdiWindowResize -win $_Verdi_1 "140" "77" "1687" "849"
verdiWindowResize -win $_Verdi_1 "140" "77" "1691" "852"
verdiWindowResize -win $_Verdi_1 "140" "77" "1705" "864"
verdiWindowResize -win $_Verdi_1 "140" "77" "1713" "870"
verdiWindowResize -win $_Verdi_1 "140" "77" "1718" "873"
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb" -win $_nTrace1
srcHBSelect "pe_tb" -win $_nTrace1
srcHBSelect "pe_tb.transform_fmap_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.transform_fmap_data" -delim "."
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcHBSelect "pe_tb.transform_fmap_data" -win $_nTrace1
srcHBSelect "pe_tb.transform_fmap_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.transform_fmap_data" -delim "."
srcHBSelect "pe_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_pe_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_bus_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "150" "113" "1719" "873"
verdiWindowResize -win $_Verdi_1 "143" "113" "1726" "873"
verdiWindowResize -win $_Verdi_1 "133" "113" "1736" "873"
verdiWindowResize -win $_Verdi_1 "111" "113" "1758" "873"
verdiWindowResize -win $_Verdi_1 "89" "113" "1780" "873"
verdiWindowResize -win $_Verdi_1 "74" "113" "1795" "873"
verdiWindowResize -win $_Verdi_1 "71" "113" "1798" "873"
verdiWindowResize -win $_Verdi_1 "70" "113" "1799" "873"
verdiWindowResize -win $_Verdi_1 "68" "113" "1801" "873"
verdiWindowResize -win $_Verdi_1 "66" "113" "1803" "873"
verdiWindowResize -win $_Verdi_1 "64" "113" "1805" "873"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 113426.979030 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 89080.989734 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_load_start" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0.fifo_fmap" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_num" -win $_nTrace1
srcSelect -signal "pixel_num" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 226009.588488 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_full_cloumn" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pixel_num" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_num" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb.transform_fmap_data" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
wvSetCursor -win $_nWave2 10413.891375 -snap {("G1" 4)}
srcHBSelect "pe_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb" -delim "."
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_config" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 27301.282794 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 9288.065280 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 12384.087040 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 10132.434851 -snap {("G1" 4)}
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_full_fmap" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 11000.000000
wvSetCursor -win $_nWave2 23079.434939 -snap {("G1" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 21672.152321 -snap {("G1" 7)}
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 8 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvRenameGroup -win $_nWave2 {G2} {ifmap}
wvSelectGroup -win $_nWave2 {ifmap}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("ifmap" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 5)}
wvSetPosition -win $_nWave2 {("ifmap" 5)}
wvSelectGroup -win $_nWave2 {ifmap}
wvSetCursor -win $_nWave2 36870.804598 -snap {("ifmap" 1)}
wvSetCursor -win $_nWave2 23923.804510 -snap {("ifmap" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 844.369571 -snap {("ifmap" 5)}
wvSelectSignal -win $_nWave2 {( "ifmap" 5 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interupt_cnt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("ifmap" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_feature_load" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("ifmap" 5)}
wvSetPosition -win $_nWave2 {("ifmap" 3)}
wvSetPosition -win $_nWave2 {("ifmap" 2)}
wvSetPosition -win $_nWave2 {("ifmap" 1)}
wvSetPosition -win $_nWave2 {("ifmap" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 0)}
wvSetPosition -win $_nWave2 {("ifmap" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 119 -pos 1 -win $_nTrace1
srcAction -pos 119 1 15 -win $_nTrace1 -name "transform_fmap_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_bus_ready" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 35463.521979 -snap {("ifmap" 3)}
wvSetCursor -win $_nWave2 10132.434851 -snap {("ifmap" 0)}
wvSetCursor -win $_nWave2 9006.608757 -snap {("ifmap" 1)}
wvSelectSignal -win $_nWave2 {( "ifmap" 1 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 2)}
wvSetPosition -win $_nWave2 {("ifmap" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "n" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "0" "25" "1436" "820"
wvSetCursor -win $_nWave2 114342.179035 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 94861.659644 -snap {("ifmap" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 111518.915355 -snap {("ifmap" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "ifmap" 5 )} 
debReload
wvSetCursor -win $_nWave2 91473.743228 -snap {("ifmap" 2)}
wvSetCursor -win $_nWave2 20609.824863 -snap {("ifmap" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "ifmap" 6 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_feature_load" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 120 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 3)}
wvSetPosition -win $_nWave2 {("ifmap" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 4)}
wvSetPosition -win $_nWave2 {("ifmap" 3)}
wvSelectSignal -win $_nWave2 {( "ifmap" 3 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 3)}
wvSetPosition -win $_nWave2 {("ifmap" 2)}
wvSelectSignal -win $_nWave2 {( "ifmap" 2 )} 
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 31055.900479 -snap {("ifmap" 0)}
wvSelectSignal -win $_nWave2 {( "ifmap" 2 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 3 )} 
wvSetCursor -win $_nWave2 13269.339295 -snap {("ifmap" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 141445.510362 -snap {("ifmap" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "ifmap" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 4)}
wvSetPosition -win $_nWave2 {("ifmap" 3)}
wvSetCursor -win $_nWave2 30491.247743 -snap {("ifmap" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "idx" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "idx" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_idx" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "end_idx" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "ifmap" 5 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 6)}
wvSetPosition -win $_nWave2 {("ifmap" 4)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "ifmap" 4 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvZoom -win $_nWave2 0.000000 35290.795998
wvSelectSignal -win $_nWave2 {( "ifmap" 7 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 4 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 7 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "ifmap" 2 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0.fifo_fmap" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_FMAP_0.fifo_fmap" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "ifmap" 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 14198.458240 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 13377.059830 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 10443.494078 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 11499.577748
wvSetCursor -win $_nWave2 14081.115610 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 14198.458240
wvSetCursor -win $_nWave2 15841.255062
wvSetCursor -win $_nWave2 18188.107663
wvSetCursor -win $_nWave2 20886.988155
wvSetCursor -win $_nWave2 20300.275005
wvSetCursor -win $_nWave2 23242.710309
wvSetCursor -win $_nWave2 22773.160606
wvSetCursor -win $_nWave2 22655.773180
wvSetCursor -win $_nWave2 22068.836051
wvSetCursor -win $_nWave2 21129.736645
wvSetCursor -win $_nWave2 20660.186942
srcDeselectAll -win $_nTrace1
srcSelect -signal "din_r" -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 20660.186942
wvSetCursor -win $_nWave2 13734.328819
wvSetCursor -win $_nWave2 15847.302484 -snap {("ifmap" 8)}
wvSetCursor -win $_nWave2 17842.888722 -snap {("ifmap" 8)}
wvSetCursor -win $_nWave2 19838.474961 -snap {("ifmap" 8)}
wvSetCursor -win $_nWave2 21247.124071 -snap {("ifmap" 8)}
wvSetCursor -win $_nWave2 13616.941393 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 11973.517432 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 10682.255748 -snap {("ifmap" 1)}
wvSetCursor -win $_nWave2 13264.779116 -snap {("ifmap" 1)}
wvSetCursor -win $_nWave2 23712.260012 -snap {("ifmap" 7)}
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcHBSelect "pe_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "ifmap" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("ifmap" 7)}
wvSetPosition -win $_nWave2 {("ifmap" 8)}
wvSetPosition -win $_nWave2 {("ifmap" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 9)}
wvSetCursor -win $_nWave2 20073.249813 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 24181.809716 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 27703.432490 -snap {("ifmap" 9)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_pad\[waddra_ifmap_delay1\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "raddra_ifmap" -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 20073.249813 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 23242.710309 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 28055.594767 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 31694.604967 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 22890.548032 -snap {("ifmap" 3)}
wvSetCursor -win $_nWave2 25120.909122 -snap {("ifmap" 6)}
wvSetCursor -win $_nWave2 22655.773180 -snap {("ifmap" 6)}
wvSetCursor -win $_nWave2 22773.160606 -snap {("ifmap" 4)}
wvSetCursor -win $_nWave2 24768.746845 -snap {("ifmap" 7)}
wvSelectSignal -win $_nWave2 {( "ifmap" 7 )} 
wvSetCursor -win $_nWave2 23125.322883 -snap {("ifmap" 7)}
wvSetCursor -win $_nWave2 21481.898922 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 22890.548032 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 25003.521696 -snap {("ifmap" 6)}
wvSetCursor -win $_nWave2 51415.692502 -snap {("ifmap" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 20308.024664 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 24299.197141 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 27233.882787 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 31811.992393 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 14203.878522 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 15495.140206 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 16551.627038 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 19368.925258 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 20425.412090 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 22890.548032 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 25003.521696 -snap {("ifmap" 3)}
wvSetCursor -win $_nWave2 28759.919322 -snap {("ifmap" 3)}
wvSetCursor -win $_nWave2 24651.359419 -snap {("ifmap" 3)}
wvSelectSignal -win $_nWave2 {( "ifmap" 3 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wea_ifmap" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wea_ifmap" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
srcSearchString "wea_ifmap" -win $_nTrace1 -next -case
wvSetCursor -win $_nWave2 26764.333083 -snap {("ifmap" 7)}
wvSetCursor -win $_nWave2 24768.746845 -snap {("ifmap" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_full_cloumn" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 23242.710309 -snap {("ifmap" 5)}
wvSetCursor -win $_nWave2 28994.694174 -snap {("ifmap" 10)}
wvSetCursor -win $_nWave2 30990.280412 -snap {("ifmap" 9)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "empty" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_finish" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "empty" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_finish" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "FSM" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
schCreateWindow -delim "." -win $_nSchema1 -scope "pe_tb.U_PE_0.U_LOAD_FMAP_0"
schSelect -win $_nSchema3 -inst "load_fmap\(@1\):FSM0:143:237:FSM"
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schSelect -win $_nSchema3 -instpin "load_fmap\(@1\):SigOp8:239:239:Combo" "O0"
schSelect -win $_nSchema3 -inst "load_fmap\(@1\):SigOp8:239:239:Combo"
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "load_fmap\(@1\):FSM0:143:237:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 28 960 297 -win $_nState4
fsmResizeWindow 0 28 960 297 -win $_nState4
fsmResizeWindow 0 28 960 297 -win $_nState4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 14203.878522 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 13734.328819 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 27938.207341 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 29112.081599 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 27351.270212 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 25238.296548 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 26529.558232 -snap {("ifmap" 13)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "INITIAL" -win $_nTrace1
wvSetCursor -win $_nWave2 46485.420618 -snap {("ifmap" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 41555.148735 -snap {("ifmap" 9)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 29239.153921 -snap {("ifmap" 12)}
wvSetCursor -win $_nWave2 30883.122414 -snap {("ifmap" 12)}
wvSetCursor -win $_nWave2 28769.448637 -snap {("ifmap" 12)}
wvSetCursor -win $_nWave2 30765.696093 -snap {("ifmap" 12)}
wvSetCursor -win $_nWave2 33701.354118 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 36402.159500 -snap {("ifmap" 13)}
wvSetCursor -win $_nWave2 39102.964882 -snap {("ifmap" 13)}
srcDeselectAll -win $_nTrace1
debReload
wvUnknownSaveResult -win $_nWave2 -clear
wvUnknownSaveResult -win $_nWave2 -clear
wvSetCursor -win $_nWave2 39102.964882 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 36284.733179 -snap {("ifmap" 9)}
wvSetCursor -win $_nWave2 34875.617327 -snap {("ifmap" 9)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 97283.085013 -snap {("ifmap" 8)}
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "ifmap" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "ifmap" 11 )} 
wvSelectSignal -win $_nWave2 {( "ifmap" 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "ifmap" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvSelectGroup -win $_nWave2 {G3}
wvRenameGroup -win $_nWave2 {G3} {weight_in}
wvSelectGroup -win $_nWave2 {weight_in}
srcHBSelect "pe_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb" -delim "."
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "weight_in" 1 )} 
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "pe_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcHBSelect "pe_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "ram_block" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "weight_in" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 256570.013579 -snap {("weight_in" 3)}
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
wvScrollDown -win $_nWave2 0
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
wvSelectGroup -win $_nWave2 {G4}
wvRenameGroup -win $_nWave2 {G4} {Psum}
wvSelectGroup -win $_nWave2 {Psum}
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad\[c\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "weight_in" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 95594.590472 -snap {("weight_in" 4)}
wvSetCursor -win $_nWave2 68407.138136 -snap {("weight_in" 4)}
wvSetCursor -win $_nWave2 757740.607047 -snap {("weight_in" 4)}
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 126250.000000 -snap {("weight_in" 4)}
wvSetCursor -win $_nWave2 79834.558824 -snap {("weight_in" 4)}
wvSetCursor -win $_nWave2 101185.661765 -snap {("weight_in" 4)}
wvSetCursor -win $_nWave2 156884.191176 -snap {("weight_in" 4)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 86332.720588 -snap {("weight_in" 3)}
wvSetCursor -win $_nWave2 97472.426471 -snap {("weight_in" 2)}
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "weight_in" 5 )} 
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSelectSignal -win $_nWave2 {( "weight_in" 4 )} 
wvSetPosition -win $_nWave2 {("weight_in" 4)}
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSelectSignal -win $_nWave2 {( "Psum" 2 )} 
wvSetPosition -win $_nWave2 {("Psum" 2)}
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvSetPosition -win $_nWave2 {("weight_in" 4)}
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvSelectSignal -win $_nWave2 {( "weight_in" 3 )} 
wvSetPosition -win $_nWave2 {("weight_in" 4)}
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {G5}
wvRenameGroup -win $_nWave2 {G5} {Mac control}
wvSelectGroup -win $_nWave2 {Mac control}
wvSelectSignal -win $_nWave2 {( "Mac control" 1 )} 
wvSetPosition -win $_nWave2 {("Mac control" 0)}
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvSetPosition -win $_nWave2 {("weight_in" 2)}
wvSetPosition -win $_nWave2 {("weight_in" 1)}
wvSetPosition -win $_nWave2 {("weight_in" 0)}
wvSetPosition -win $_nWave2 {("ifmap" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("ifmap" 9)}
wvSetPosition -win $_nWave2 {("ifmap" 10)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvSetPosition -win $_nWave2 {("weight_in" 0)}
wvSetPosition -win $_nWave2 {("weight_in" 1)}
wvSetPosition -win $_nWave2 {("weight_in" 2)}
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvSetPosition -win $_nWave2 {("weight_in" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("weight_in" 3)}
wvSelectSignal -win $_nWave2 {( "weight_in" 4 )} 
wvSetPosition -win $_nWave2 {("weight_in" 4)}
wvSetPosition -win $_nWave2 {("Psum" 0)}
wvSetPosition -win $_nWave2 {("Psum" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum" 2)}
wvScrollDown -win $_nWave2 2
wvSetPosition -win $_nWave2 {("Mac control" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Mac control" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ifmap_in" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accumulate_mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_store_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "acc_finish_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 143110.760941 -snap {("Mac control" 7)}
wvZoom -win $_nWave2 0.000000 157050.120773
wvSelectSignal -win $_nWave2 {( "Mac control" 4 )} 
wvSelectSignal -win $_nWave2 {( "Mac control" 4 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "Mac control" 4 5 6 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "Mac control" 5 )} 
wvSetCursor -win $_nWave2 47393.823429 -snap {("Mac control" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcSelect -signal "cnt_b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Mac control" 7)}
srcHBSelect "pe_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 28498.246767 -snap {("Mac control" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ifmap_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fmap_out" -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvSetCursor -win $_nWave2 837682.445759 -snap {("Psum" 1)}
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
wvSetCursor -win $_nWave2 785000.000000
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
wvSetCursor -win $_nWave2 680305.719921 -snap {("Mac control" 4)}
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
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
wvSetCursor -win $_nWave2 172317.554241 -snap {("Mac control" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 537869.822485 -snap {("Mac control" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 521932.938856 -snap {("Mac control" 7)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_acc_finish" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectGroup -win $_nWave2 {G6}
wvMoveSelected -win $_nWave2
wvSelectSignal -win $_nWave2 {( "Mac control" 8 )} 
wvSelectSignal -win $_nWave2 {( "Mac control" 9 )} 
wvSetPosition -win $_nWave2 {("Mac control" 9)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSelectGroup -win $_nWave2 {G6}
wvSelectGroup -win $_nWave2 {G6}
wvRenameGroup -win $_nWave2 {G6} {ACC}
wvSelectSignal -win $_nWave2 {( "ACC" 1 )} 
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_finish" -win $_nTrace1
srcSelect -win $_nTrace1 -range {129 130 3 4 16 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -win $_nTrace1 -range {211 211 3 3 4 5}
srcDeselectAll -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "acc_finish_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 510976.331361 557790.927022
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
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
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "external_psum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 512825.721805 -snap {("ACC" 2)}
srcHBSelect "pe_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("ACC" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("ACC" 2)}
wvSetPosition -win $_nWave2 {("ACC" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "ACC" 6 )} 
wvSetCursor -win $_nWave2 515272.638541 -snap {("ACC" 6)}
wvSetCursor -win $_nWave2 517073.199913 -snap {("ACC" 6)}
wvSetCursor -win $_nWave2 518827.593044 -snap {("ACC" 6)}
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "PinA" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "PinB" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "ACC" 4 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 4 5 )} 
wvSetPosition -win $_nWave2 {("ACC" 7)}
wvSetPosition -win $_nWave2 {("ACC" 8)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvRenameGroup -win $_nWave2 {G7} {mac_unit}
wvSelectSignal -win $_nWave2 {( "Mac control" 8 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "mac_unit" 1 )} 
wvSelectSignal -win $_nWave2 {( "mac_unit" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 6 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "ACC" 5 6 )} {( "mac_unit" 1 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 5 6 )} {( "mac_unit" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 5 6 )} {( "mac_unit" 1 2 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 521505.350981 -snap {("mac_unit" 1)}
wvSetCursor -win $_nWave2 523028.902911 -snap {("mac_unit" 1)}
wvSetCursor -win $_nWave2 525106.473724 -snap {("mac_unit" 1)}
srcHBSelect "pe_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcHBSelect "pe_tb.transform_weight_data" -win $_nTrace1
srcHBSelect "pe_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Mac control" 8 )} 
wvSelectSignal -win $_nWave2 {( "Mac control" 7 )} 
wvScrollUp -win $_nWave2 1
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
wvSetCursor -win $_nWave2 513010.394767 -snap {("ACC" 2)}
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 523121.239391 -snap {("ACC" 4)}
wvSelectSignal -win $_nWave2 {( "ACC" 5 )} 
wvSelectSignal -win $_nWave2 {( "ACC" 4 )} 
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 524229.277159 -snap {("ACC" 3)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvZoom -win $_nWave2 506992.110454 624526.627219
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "ACC" 1 )} 
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 485078.895464 583688.362919
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 653412.228797 742061.143984
wvZoom -win $_nWave2 674743.920420 713210.905314
wvSetCursor -win $_nWave2 679827.328680 -snap {("ifmap" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
debSaveSession \
           /home/IC/Desktop/0-onchiptrain/OCT/pe_design/simulation/verdiLog/5_28.ses \
           -keynote \
           {invoke directory: /home/IC/Desktop/0-onchiptrain/OCT/pe_design/simulation
command line: -sv ../True_dual_ports_ram.v ../fifo.v ../load_fmap.v ../load_weight.v ../macc.v ../macc_2stage.v ../macc_control.v ../pe.v ../pe_tb.v -ba 
current trace scope: pe_tb.U_PE_0
memo:}
wvSaveSignal -win $_nWave2 \
           "/home/IC/Desktop/0-onchiptrain/OCT/pe_design/simulation/verdiLog/5_28.rc"
debExit
