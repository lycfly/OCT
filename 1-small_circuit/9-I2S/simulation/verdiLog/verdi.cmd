debImport "-sv" "../I2S_master.v" "../I2S_master_tb.v" "../I2S_slave.v"
debLoadSimResult /home/IC/Desktop/1-small_circuit/9-I2S/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_in" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 33 2 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 850115.830116 -snap {("G1" 6)}
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "send_over" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "recv_over" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sen_over" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 725328.185328 -snap {("G1" 11)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 768223.938224 -snap {("G1" 11)}
debExit
