debImport "-sv" "../spi_master.v" "../spi_master_tb.v"
debLoadSimResult /home/IC/Desktop/1-small_circuit/1-SPI/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "682" "28" "902" "701"
verdiWindowResize -win $_Verdi_1 "682" "28" "928" "716"
verdiWindowResize -win $_Verdi_1 "682" "28" "1027" "761"
verdiWindowResize -win $_Verdi_1 "682" "28" "1100" "790"
verdiWindowResize -win $_Verdi_1 "682" "28" "1112" "797"
verdiWindowResize -win $_Verdi_1 "682" "28" "1125" "802"
verdiWindowResize -win $_Verdi_1 "682" "28" "1134" "807"
verdiWindowResize -win $_Verdi_1 "682" "28" "1145" "811"
verdiWindowResize -win $_Verdi_1 "682" "28" "1165" "818"
verdiWindowResize -win $_Verdi_1 "682" "28" "1152" "805"
verdiWindowResize -win $_Verdi_1 "682" "28" "1153" "806"
verdiWindowResize -win $_Verdi_1 "682" "28" "1228" "818"
verdiWindowResize -win $_Verdi_1 "682" "28" "1215" "805"
verdiWindowResize -win $_Verdi_1 "682" "28" "1216" "806"
verdiWindowResize -win $_Verdi_1 "682" "28" "1219" "822"
verdiWindowResize -win $_Verdi_1 "682" "28" "1206" "809"
verdiWindowResize -win $_Verdi_1 "682" "28" "1207" "810"
verdiWindowResize -win $_Verdi_1 "682" "28" "696" "533"
verdiWindowResize -win $_Verdi_1 "682" "28" "697" "533"
verdiWindowResize -win $_Verdi_1 "682" "28" "700" "536"
verdiWindowResize -win $_Verdi_1 "682" "28" "739" "559"
verdiWindowResize -win $_Verdi_1 "682" "28" "826" "601"
verdiWindowResize -win $_Verdi_1 "682" "28" "942" "652"
verdiWindowResize -win $_Verdi_1 "682" "28" "1015" "683"
verdiWindowResize -win $_Verdi_1 "682" "28" "1058" "706"
verdiWindowResize -win $_Verdi_1 "682" "28" "1068" "714"
verdiWindowResize -win $_Verdi_1 "682" "28" "1074" "723"
verdiWindowResize -win $_Verdi_1 "682" "28" "1087" "743"
verdiWindowResize -win $_Verdi_1 "682" "28" "1101" "763"
verdiWindowResize -win $_Verdi_1 "682" "28" "1131" "787"
verdiWindowResize -win $_Verdi_1 "682" "28" "1146" "799"
verdiWindowResize -win $_Verdi_1 "682" "28" "1163" "808"
verdiWindowResize -win $_Verdi_1 "682" "28" "1177" "817"
verdiWindowResize -win $_Verdi_1 "682" "28" "1182" "819"
verdiWindowResize -win $_Verdi_1 "682" "28" "1170" "807"
verdiWindowResize -win $_Verdi_1 "682" "28" "1201" "813"
verdiWindowResize -win $_Verdi_1 "682" "28" "1201" "810"
verdiWindowResize -win $_Verdi_1 "682" "28" "1201" "809"
verdiWindowResize -win $_Verdi_1 "682" "28" "1200" "809"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_clk" -win $_nTrace1
srcSelect -signal "I_rst_n" -win $_nTrace1
srcSelect -signal "I_en" -win $_nTrace1
srcSelect -signal "I_data_in" -win $_nTrace1
srcSelect -signal "O_data_out" -win $_nTrace1
srcSelect -signal "O_tx_done" -win $_nTrace1
srcSelect -signal "O_rx_done" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {22 22 1 5 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 22 -file \
           /home/IC/Desktop/1-small_circuit/1-SPI/spi_master_tb.v
srcSelect -win $_nTrace1 -range {22 34 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 57598.407437 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
verdiWindowResize -win $_Verdi_1 "681" "28" "1201" "809"
verdiWindowResize -win $_Verdi_1 "666" "28" "1216" "809"
verdiWindowResize -win $_Verdi_1 "615" "28" "1267" "809"
verdiWindowResize -win $_Verdi_1 "581" "28" "1301" "809"
verdiWindowResize -win $_Verdi_1 "575" "28" "1307" "809"
verdiWindowResize -win $_Verdi_1 "567" "28" "1315" "809"
verdiWindowResize -win $_Verdi_1 "558" "28" "1324" "809"
verdiWindowResize -win $_Verdi_1 "553" "28" "1329" "809"
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 21765.564847 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 24733.596417 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 58088.617871 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 59360.631401 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 90454.295468 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 116883.909925 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetCursor -win $_nWave2 28690.971844 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 54272.577281 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 86355.585205 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 113350.539008 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 146422.890789 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 154057.469205 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 154000.000000
wvSetCursor -win $_nWave2 90003.522332 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 87459.495272 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 54979.251464 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 56109.930158 -snap {("G1" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 57664.613361 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 59784.635911 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 58088.617871 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 55403.255974 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 56109.930158 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 57805.948198 -snap {("G1" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 89747.621285 -snap {("G1" 4)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 122113.298882 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 90030.290958 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 121830.629209 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 153977.237809 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 185494.906386 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 58287.235813 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 90511.578573 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 57580.561630 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_ORANGE6 -lw 1 -ls solid
wvSetCursor -win $_nWave2 32281.625866 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 40620.381229 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 54753.864896 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvSetCursor -win $_nWave2 33270.969722 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 63375.289933 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 27334.906582 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN6 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_ORANGE5 -lw 1 -ls solid
wvSetCursor -win $_nWave2 31150.947172 -snap {("G1" 7)}
wvBusWaveform -win $_nWave2 -digital
wvChangeDisplayAttr -win $_nWave2 -h 15
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 45991.105023 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvChangeDisplayAttr -win $_nWave2 -h 20
wvSetPosition -win $_nWave2 {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "551" "28" "1331" "809"
verdiWindowResize -win $_Verdi_1 "543" "28" "1339" "815"
verdiWindowResize -win $_Verdi_1 "522" "28" "1360" "824"
verdiWindowResize -win $_Verdi_1 "500" "28" "1382" "836"
verdiWindowResize -win $_Verdi_1 "474" "28" "1408" "851"
verdiWindowResize -win $_Verdi_1 "458" "28" "1424" "863"
verdiWindowResize -win $_Verdi_1 "440" "28" "1442" "882"
verdiWindowResize -win $_Verdi_1 "430" "28" "1452" "896"
verdiWindowResize -win $_Verdi_1 "420" "28" "1462" "909"
verdiWindowResize -win $_Verdi_1 "408" "28" "1474" "921"
verdiWindowResize -win $_Verdi_1 "393" "28" "1489" "935"
verdiWindowResize -win $_Verdi_1 "386" "28" "1496" "941"
verdiWindowResize -win $_Verdi_1 "372" "28" "1510" "951"
verdiWindowResize -win $_Verdi_1 "366" "28" "1516" "956"
verdiWindowResize -win $_Verdi_1 "356" "28" "1526" "963"
verdiWindowResize -win $_Verdi_1 "348" "28" "1534" "968"
verdiWindowResize -win $_Verdi_1 "334" "28" "1548" "978"
verdiWindowResize -win $_Verdi_1 "331" "28" "1551" "979"
verdiWindowResize -win $_Verdi_1 "328" "28" "1554" "980"
verdiWindowResize -win $_Verdi_1 "323" "28" "1559" "980"
verdiWindowResize -win $_Verdi_1 "318" "28" "1564" "979"
wvSetCursor -win $_nWave2 85266.838483 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 88509.349323 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 56084.240919 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 55379.347259 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 56225.219652
wvSetMarker -win $_nWave2 56225.219652
wvSetCursor -win $_nWave2 56225.219652
wvSetCursor -win $_nWave2 97672.966916
wvSetCursor -win $_nWave2 110079.095349
wvSetCursor -win $_nWave2 122203.266317
wvSetCursor -win $_nWave2 121357.393924
wvSetCursor -win $_nWave2 120370.542798
wvSetCursor -win $_nWave2 119806.627870
wvSetMarker -win $_nWave2 119806.627870
wvSetCursor -win $_nWave2 121921.308853 -snap {("G1" 6)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
