debImport "-sv" "../divide_by_three.v" "../divide_by_three_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-small_circuit/10-divide_by_three/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "88" "53" "901" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "954" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1008" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1075" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1171" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1273" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1403" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1421" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1428" "700"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "vld_in" -win $_nTrace1
srcSelect -signal "data_in" -win $_nTrace1
srcSelect -signal "quotient" -win $_nTrace1
srcSelect -signal "reminder" -win $_nTrace1
srcSelect -signal "vld_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "88" "53" "1429" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1488" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1560" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1633" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1635" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1634" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1627" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1610" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1585" "700"
verdiWindowResize -win $_Verdi_1 "88" "53" "1584" "700"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "divide_by_three_tb.U_DIVIDE_BY_THREE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "divide_by_three_tb.U_DIVIDE_BY_THREE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcSelect -signal "next_state" -win $_nTrace1
srcSelect -signal "cnt" -win $_nTrace1
srcSelect -signal "data_reg" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 11 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 11 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 4229.587763 -snap {("G1" 9)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 7049.312938 -snap {("G1" 3)}
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "vld_in" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
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
wvSetCursor -win $_nWave2 8882.134301 -snap {("G1" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 6485.367903 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 3947.615245 -snap {("G1" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvSetCursor -win $_nWave2 11419.886959 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 13957.639616 -snap {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 42718.836401 -snap {("G1" 5)}
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 8177.203008 -snap {("G1" 10)}
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 8882.134301 -snap {("G1" 11)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 40604.042520 -snap {("G1" 10)}
debReload
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
debReload
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 10)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "vld_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 39194.179933 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
debReload
wvSetCursor -win $_nWave2 41590.946331 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 43141.795178 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 41731.932590 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 42718.836401 -snap {("G1" 5)}
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
wvZoom -win $_nWave2 2114.793881 45961.520353
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 41539.004026 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 42593.962859 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 6593.492703 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 8571.540513 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 7120.972119 -snap {("G1" 3)}
wvSetMarker -win $_nWave2 7000.000000
wvSetCursor -win $_nWave2 42857.702567 -snap {("G1" 5)}
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
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoom -win $_nWave2 22286.005335 129100.587116
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 41039.286684 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 41199.910116 -snap {("G1" 11)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 42966.767859 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 79107.039891 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 6 )} 
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "divide_by_three_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "divide_by_three_tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "quotient_ref" -win $_nTrace1
srcSelect -signal "reminder_ref" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 8 9 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetCursor -win $_nWave2 41039.286684 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 42725.832712 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 41681.780409 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 41842.403841 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 41762.092125
wvSetCursor -win $_nWave2 42645.520997 -snap {("G1" 11)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
debReload
wvSetCursor -win $_nWave2 41601.468694 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 41601.468694
wvSetCursor -win $_nWave2 77741.740725
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 43207.703006 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 77741.740725
wvSetCursor -win $_nWave2 113801.701040
wvSetCursor -win $_nWave2 149098.700057
wvSetCursor -win $_nWave2 150945.869517
wvSetCursor -win $_nWave2 150303.375792
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
debExit
