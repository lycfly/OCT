debImport "-sv" "../div_fsm.v" "../div_fsm_tb.v"
debLoadSimResult /home/IC/Desktop/1-small_circuit/3-div/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "707" "41" "903" "702"
verdiWindowResize -win $_Verdi_1 "707" "41" "910" "705"
verdiWindowResize -win $_Verdi_1 "707" "41" "966" "729"
verdiWindowResize -win $_Verdi_1 "707" "41" "1010" "745"
verdiWindowResize -win $_Verdi_1 "707" "41" "1055" "760"
verdiWindowResize -win $_Verdi_1 "707" "41" "1084" "767"
verdiWindowResize -win $_Verdi_1 "707" "41" "1105" "772"
verdiWindowResize -win $_Verdi_1 "707" "41" "1127" "777"
verdiWindowResize -win $_Verdi_1 "707" "41" "1140" "782"
verdiWindowResize -win $_Verdi_1 "707" "41" "1150" "790"
verdiWindowResize -win $_Verdi_1 "707" "41" "1155" "794"
verdiWindowResize -win $_Verdi_1 "707" "41" "1143" "782"
verdiWindowResize -win $_Verdi_1 "707" "41" "685" "625"
verdiWindowResize -win $_Verdi_1 "476" "27" "686" "625"
verdiWindowResize -win $_Verdi_1 "476" "27" "724" "634"
verdiWindowResize -win $_Verdi_1 "476" "27" "843" "660"
verdiWindowResize -win $_Verdi_1 "476" "27" "984" "685"
verdiWindowResize -win $_Verdi_1 "476" "27" "1098" "699"
verdiWindowResize -win $_Verdi_1 "476" "27" "1159" "703"
verdiWindowResize -win $_Verdi_1 "476" "27" "1209" "712"
verdiWindowResize -win $_Verdi_1 "476" "27" "1253" "724"
verdiWindowResize -win $_Verdi_1 "476" "27" "1293" "731"
verdiWindowResize -win $_Verdi_1 "476" "27" "1316" "737"
verdiWindowResize -win $_Verdi_1 "476" "27" "1329" "740"
verdiWindowResize -win $_Verdi_1 "476" "27" "1329" "741"
verdiWindowResize -win $_Verdi_1 "476" "27" "1330" "741"
verdiWindowResize -win $_Verdi_1 "476" "27" "1332" "745"
verdiWindowResize -win $_Verdi_1 "476" "27" "1334" "756"
verdiWindowResize -win $_Verdi_1 "476" "27" "1338" "763"
verdiWindowResize -win $_Verdi_1 "476" "27" "1338" "764"
verdiWindowResize -win $_Verdi_1 "476" "27" "1344" "788"
verdiWindowResize -win $_Verdi_1 "476" "27" "1355" "826"
verdiWindowResize -win $_Verdi_1 "476" "27" "1373" "865"
verdiWindowResize -win $_Verdi_1 "476" "27" "1399" "900"
verdiWindowResize -win $_Verdi_1 "476" "27" "1421" "921"
verdiWindowResize -win $_Verdi_1 "476" "27" "1433" "930"
verdiWindowResize -win $_Verdi_1 "476" "27" "1437" "932"
verdiWindowResize -win $_Verdi_1 "476" "27" "1437" "933"
verdiWindowResize -win $_Verdi_1 "476" "27" "1437" "934"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rstn" -win $_nTrace1
srcSelect -signal "en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {24 33 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
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
wvSetCursor -win $_nWave2 5517.656501 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3912.520064 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 6019.261637 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 8627.608347 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 4012.841091 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "quotient_ref" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "quotient_ref" -win $_nTrace1
srcSelect -signal "remainder_ref" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCopy -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 11 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 42937.399679 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 61697.431782 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 14345.906902 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 4012.841091 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "div_fsm_tb.U_DIV_FSM_0" -win $_nTrace1
srcHBSelect "div_fsm_tb.U_DIV_FSM_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "div_fsm_tb.U_DIV_FSM_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 3212.658899 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 27207.205054 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 5822.944255 -snap {("G1" 3)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 3714.636852 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 33532.127262 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 78509.351854 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 75698.275317 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 60940.123498
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 10 11 )} 
wvSetRadix -win $_nWave2 -Unsigned
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 75899.066498 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 78208.165082 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 76903.022404 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 76200.253270 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 77706.187129 -snap {("G1" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 74292.737048 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 145774.397560 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 76300.648860 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 153002.880083 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 148183.891734 -snap {("G1" 9)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 182619.579312 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 155311.978667 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 147882.704962 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 147882.704962
wvSetCursor -win $_nWave2 156115.143392 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 32126.588994 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 73690.363505 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 75899.066498 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 76300.648860 -snap {("G1" 10)}
wvSetMarker -win $_nWave2 76000.000000
wvSetCursor -win $_nWave2 148786.265278 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 78308.560673 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 77906.978310 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 122281.829358 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 147983.100553 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 149790.221184 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 148183.891734 -snap {("G1" 9)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
debExit
