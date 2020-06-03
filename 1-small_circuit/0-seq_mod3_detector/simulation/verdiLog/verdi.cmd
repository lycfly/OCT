debImport "-sv" "../seq_mod3_detector.v" "../seq_mod3_detector_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/1-small_circuit/0-seq_mod3_detector/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcSelect -signal "seq" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcSelect -signal "next_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetCursor -win $_nWave2 6034.621538 -snap {("G1" 3)}
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "next_state" -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 7965.269247 -snap {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "131" "105" "1534" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1530" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1525" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1522" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1520" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1518" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1519" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1520" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1531" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1541" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1547" "789"
verdiWindowResize -win $_Verdi_1 "131" "105" "1548" "789"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 8)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcHBSelect "seq_mod3_detector_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "seq_mod3_detector_tb" -delim "."
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetCursor -win $_nWave2 5966.699559 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 4100.111729 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 6030.514528 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 3972.481792 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 5950.745817 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 9843.458898 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 5998.607043 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
debReload
wvZoom -win $_nWave2 3796.990629 4403.232830
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcHBSelect "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetCursor -win $_nWave2 20264.321021 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 26968.535011 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 10041.153081 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 19566.597393 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 17625.105559 -snap {("G1" 4)}
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
debExit
