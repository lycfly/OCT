debImport "-sv" "../zuse.v"
debLoadSimResult \
           /home/IC/Desktop/1-Find_job/0-small-circuits/2-zuse_and_feizuse/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "186" "25" "901" "700"
verdiWindowResize -win $_Verdi_1 "186" "25" "926" "704"
verdiWindowResize -win $_Verdi_1 "186" "25" "1004" "704"
verdiWindowResize -win $_Verdi_1 "186" "25" "1027" "704"
verdiWindowResize -win $_Verdi_1 "186" "25" "1094" "721"
verdiWindowResize -win $_Verdi_1 "186" "25" "1157" "729"
verdiWindowResize -win $_Verdi_1 "186" "25" "1201" "736"
verdiWindowResize -win $_Verdi_1 "186" "25" "1242" "739"
verdiWindowResize -win $_Verdi_1 "186" "25" "1307" "745"
verdiWindowResize -win $_Verdi_1 "186" "25" "1348" "748"
verdiWindowResize -win $_Verdi_1 "186" "25" "1359" "749"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 0.000000
wvSetCursor -win $_nWave2 1001.770194
wvSetCursor -win $_nWave2 2003.540387
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 988.530940 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3000.897497 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1584.297355 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 997.357109 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 1999.127303 -snap {("G1" 1)}
srcSelect -win $_nTrace1 -range {27 27 1 3 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 27 -file \
           /home/IC/Desktop/1-Find_job/0-small-circuits/2-zuse_and_feizuse/zuse.v
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 1169.467407 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 3009.723666
wvSetWindowTimeUnit -win $_nWave2 1.000000 ns
wvSetCursor -win $_nWave2 1.015009 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2.992071 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 0.997357 -snap {("G1" 2)}
wvSetMarker -win $_nWave2 1.000000
wvSetCursor -win $_nWave2 3.014137 -snap {("G1" 2)}
wvSetMarker -win $_nWave2 3.000000
wvSetCursor -win $_nWave2 0.997357 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 0.829660 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 2.007954 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1.006183 -snap {("G1" 2)}
wvSetMarker -win $_nWave2 2.000000
wvSetCursor -win $_nWave2 0.864965 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 2.987658 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 1.010596 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 2.224195 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debExit
