debImport "-sv" "../clk_div.v" "../clk_div_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-Find_job/0-small-circuits/1-clk_div/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_in" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "clk_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "clk_div_tb.U_CLK_DIV_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "clk_div_tb.U_CLK_DIV_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_div1" -win $_nTrace1
srcSelect -signal "clk_div2" -win $_nTrace1
srcSelect -signal "cnt" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 9001.747573 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 9531.262136 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 11649.320388 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 2059.223301 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 6903.300971 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 9962.718447 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_BLUE5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvSetCursor -win $_nWave2 4451.844660 -snap {("G2" 0)}
wvChangeDisplayAttr -win $_nWave2 -default
wvChangeDisplayAttr -win $_nWave2 -default
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 2 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 2 -ls solid
wvChangeDisplayAttr -win $_nWave2 -default
wvSetCursor -win $_nWave2 3667.378641 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 6922.912621 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 10668.737864 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 6001.165049 -snap {("G1" 6)}
debExit
