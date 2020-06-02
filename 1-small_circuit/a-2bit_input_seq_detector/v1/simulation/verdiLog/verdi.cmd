debImport "-sv" "../2bit_input_seq_detector.v" "../2bit_input_seq_detector_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/1-small_circuit/a-2bit_input_seq_detector/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcSelect -signal "seq" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoom -win $_nWave2 984.196566 100950.447737
wvZoom -win $_nWave2 3470.343934 27464.556911
wvSetCursor -win $_nWave2 3969.934257 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "two_bit_input_seq_detector_tb.U_2BIT_INPUT_SEQ_DETECTOR_0" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "two_bit_input_seq_detector_tb.U_2BIT_INPUT_SEQ_DETECTOR_0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "next_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "two_bit_input_seq_detector_tb.U_2BIT_INPUT_SEQ_DETECTOR_0"
schSelect -win $_nSchema3 -inst "two_bit_input_seq_detector\(@1\):FSM0:39:95:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 28 1285 408 -win $_nState4
fsmResizeWindow 0 28 1285 408 -win $_nState4
fsmResizeWindow 0 28 1285 408 -win $_nState4
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 0 571 1684 439
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetRadix -win $_nWave2 -format Bin
wvResizeWindow -win $_nWave2 -2 25 1920 1004
wvResizeWindow -win $_nWave2 0 571 1684 439
wvResizeWindow -win $_nWave2 27 577 1768 402
wvResizeWindow -win $_nWave2 27 577 1889 417
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 6828.877349 42028.131325
wvZoom -win $_nWave2 10000.541576 28325.712668
wvSetCursor -win $_nWave2 25035.168107 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 21538.492350 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 29805.324539 33409.922387
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvSetCursor -win $_nWave2 32414.306138 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvResizeWindow -win $_nWave2 27 577 1889 417
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvResizeWindow -win $_nWave2 -2 25 1920 1004
wvSetCursor -win $_nWave2 45957.979603 -snap {("G2" 0)}
wvZoom -win $_nWave2 21687.781861 38717.710529
wvSetCursor -win $_nWave2 35904.731240 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 24250.959900 34612.281296
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
verdiWindowResize -win $_Verdi_1 "0" "25" "1440" "824"
wvResizeWindow -win $_nWave2 -2 25 1440 824
wvSetCursor -win $_nWave2 28757.776863 -snap {("G2" 0)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvResizeWindow -win $_nWave2 0 25 1920 1004
wvSetCursor -win $_nWave2 30151.891027 -snap {("G2" 0)}
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
