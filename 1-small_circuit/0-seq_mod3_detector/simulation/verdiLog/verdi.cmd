debImport "-sv" "../seq_mod3_detector.v" "../seq_mod3_detector_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-small_circuit/seq_mod3_detector/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -toggle -signal "rst_n" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "224" "115" "901" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "971" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1032" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1127" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1159" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1184" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1231" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1260" "700"
verdiWindowResize -win $_Verdi_1 "224" "115" "1282" "700"
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 5936.842505 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 4381.955182 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "seq" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 5512.782326 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format Bin
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvZoom -win $_nWave2 2249.592150 39016.363854
wvSetCursor -win $_nWave2 10245.142272 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 9883.641336 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 10053.759423 -snap {("G1" 5)}
verdiWindowResize -win $_Verdi_1 "224" "115" "1282" "700"
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 12216.106896 -snap {("G1" 5)}
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 8068.623392 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 9843.062211 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 11980.940306 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 14033.303277 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 15914.636000 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 17924.241409 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 6037.639202 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 8068.623392 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 6037.639202 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 7961.729487 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 6059.017982 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 7897.593144 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 6016.260421 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 7940.350706 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 10014.092458 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 12151.970553 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 18031.135314 -snap {("G1" 3)}
srcHBSelect "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -win $_nTrace1
srcHBSelect "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -win $_nTrace1
srcHBSelect "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "seq_mod3_detector_tb.U_SEQ_MOD3_DETECTOR_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcSelect -signal "next_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "304" "115" "1285" "700"
verdiWindowResize -win $_Verdi_1 "225" "115" "1364" "700"
verdiWindowResize -win $_Verdi_1 "199" "115" "1390" "700"
verdiWindowResize -win $_Verdi_1 "141" "115" "1448" "700"
verdiWindowResize -win $_Verdi_1 "84" "115" "1505" "700"
verdiWindowResize -win $_Verdi_1 "57" "115" "1532" "700"
verdiWindowResize -win $_Verdi_1 "54" "115" "1535" "700"
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 6075.143070 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 16039.086822 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 14033.496431 -snap {("G1" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
debReload
verdiWindowResize -win $_Verdi_1 "54" "113" "1535" "702"
verdiWindowResize -win $_Verdi_1 "54" "93" "1535" "722"
verdiWindowResize -win $_Verdi_1 "54" "87" "1535" "728"
verdiWindowResize -win $_Verdi_1 "54" "83" "1535" "732"
verdiWindowResize -win $_Verdi_1 "54" "76" "1535" "739"
verdiWindowResize -win $_Verdi_1 "54" "58" "1535" "757"
verdiWindowResize -win $_Verdi_1 "54" "45" "1535" "770"
verdiWindowResize -win $_Verdi_1 "54" "28" "1535" "787"
verdiWindowResize -win $_Verdi_1 "54" "26" "1535" "789"
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvChangeDisplayAttr -win $_nWave2 -h 30
wvSetPosition -win $_nWave2 {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvChangeDisplayAttr -win $_nWave2 -c ID_RED5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_ORANGE5 -lw 1 -ls solid
debExit
