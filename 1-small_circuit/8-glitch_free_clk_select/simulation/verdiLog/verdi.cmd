debImport "-sv" "../clk_select1.v" "../clk_select2.v" "../clk_select_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-Find_job/0-small-circuits/3-clk_select/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk1" -win $_nTrace1
srcSelect -win $_nTrace1 -range {16 17 3 3 3 4}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk1" -win $_nTrace1
srcSelect -win $_nTrace1 -range {16 16 1 5 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 16 -file \
           /home/IC/Desktop/1-Find_job/0-small-circuits/3-clk_select/clk_select_tb.v
srcSelect -win $_nTrace1 -range {16 23 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 7108.462623 -snap {("G1" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 33847.108604 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
verdiWindowResize -win $_Verdi_1 "731" "64" "901" "700"
verdiWindowResize -win $_Verdi_1 "731" "64" "934" "712"
verdiWindowResize -win $_Verdi_1 "731" "64" "980" "723"
verdiWindowResize -win $_Verdi_1 "731" "64" "1019" "733"
verdiWindowResize -win $_Verdi_1 "731" "64" "1082" "750"
verdiWindowResize -win $_Verdi_1 "731" "64" "1109" "758"
verdiWindowResize -win $_Verdi_1 "731" "64" "1135" "761"
verdiWindowResize -win $_Verdi_1 "731" "64" "1145" "761"
verdiWindowResize -win $_Verdi_1 "731" "64" "1145" "760"
verdiWindowResize -win $_Verdi_1 "731" "64" "1143" "759"
verdiWindowResize -win $_Verdi_1 "731" "64" "1136" "755"
verdiWindowResize -win $_Verdi_1 "731" "64" "1129" "752"
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 52491.642593 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1133.493126 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 20119.502978 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 20006.153665 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_reg2" -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 30604.314389 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 51556.089436 -snap {("G1" 3)}
debExit
