debImport "-sv" "../booth_fsm.v" "../booth_fsm_tb.v"
debLoadSimResult /home/IC/Desktop/1-small_circuit/2-booth/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "541" "100" "901" "700"
verdiWindowResize -win $_Verdi_1 "541" "100" "911" "705"
verdiWindowResize -win $_Verdi_1 "541" "100" "987" "740"
verdiWindowResize -win $_Verdi_1 "541" "100" "1082" "782"
verdiWindowResize -win $_Verdi_1 "541" "100" "1156" "816"
verdiWindowResize -win $_Verdi_1 "541" "100" "1179" "829"
verdiWindowResize -win $_Verdi_1 "541" "100" "1190" "836"
verdiWindowResize -win $_Verdi_1 "541" "100" "1205" "844"
verdiWindowResize -win $_Verdi_1 "541" "100" "1235" "861"
verdiWindowResize -win $_Verdi_1 "541" "100" "1261" "872"
verdiWindowResize -win $_Verdi_1 "541" "100" "1296" "887"
verdiWindowResize -win $_Verdi_1 "541" "100" "1331" "898"
verdiWindowResize -win $_Verdi_1 "541" "100" "1342" "903"
verdiWindowResize -win $_Verdi_1 "541" "100" "1346" "905"
verdiWindowResize -win $_Verdi_1 "541" "100" "1351" "906"
verdiWindowResize -win $_Verdi_1 "541" "100" "1360" "910"
verdiWindowResize -win $_Verdi_1 "541" "100" "1366" "911"
verdiWindowResize -win $_Verdi_1 "541" "100" "1366" "912"
verdiWindowResize -win $_Verdi_1 "541" "100" "1367" "912"
verdiWindowResize -win $_Verdi_1 "541" "100" "1366" "912"
verdiWindowResize -win $_Verdi_1 "541" "100" "1366" "911"
srcDeselectAll -win $_nTrace1
srcTBAddBrkPnt -win $_nTrace1 -line 20 -file \
           /home/IC/Desktop/1-small_circuit/2-booth/booth_fsm_tb.v
srcSelect -win $_nTrace1 -range {20 29 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "product" -win $_nTrace1
srcSelect -signal "m1_in" -win $_nTrace1
srcSelect -signal "m2_in" -win $_nTrace1
srcSelect -signal "product_ref" -win $_nTrace1
srcSelect -signal "product_ref_u" -win $_nTrace1
srcSelect -signal "multiplier" -win $_nTrace1
srcSelect -signal "multiplicand" -win $_nTrace1
srcSelect -toggle -signal "multiplier" -win $_nTrace1
srcSelect -toggle -signal "multiplicand" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 65763.228700 -snap {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 21468.161435 -snap {("G1" 3)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 6 7 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 8 9 10 11 12 13 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetRadix -win $_nWave2 -2Com
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 66125.560538 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 22283.408072 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 24910.313901 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 22102.242152 -snap {("G1" 1)}
wvSetMarker -win $_nWave2 22000.000000
wvSetCursor -win $_nWave2 66578.475336 -snap {("G1" 9)}
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvDeselectAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 68480.717489 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 65129.147982 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 65000.000000
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetRadix -win $_nWave2 -Unsigned
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetCursor -win $_nWave2 53717.233116 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 56072.390066 -snap {("G1" 5)}
wvSetMarker -win $_nWave2 56253.555986
wvSetMarker -win $_nWave2 56000.000000
wvSetCursor -win $_nWave2 100186.291412 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 98555.798138 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 99914.542533 -snap {("G1" 4)}
wvSetMarker -win $_nWave2 54000.000000
wvSetCursor -win $_nWave2 98465.215179 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 56162.973026 -snap {("G1" 4)}
wvSetMarker -win $_nWave2 98000.000000
debExit
