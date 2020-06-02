debImport "-sv" "../two_bit_input_seq_detector_v2.v" \
          "../two_bit_input_seq_detector_v2_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/1-small_circuit/a-2bit_input_seq_detector/v2/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "data" -win $_nTrace1
srcSelect -signal "success" -win $_nTrace1
srcSelect -signal "seq" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 7170.574979 59332.992960
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoom -win $_nWave2 22828.351111 36736.317964
srcDeselectAll -win $_nTrace1
srcHBSelect "two_bit_input_seq_detector_v2_tb.U_TWO_BIT_INPUT_SEQ_DETECTOR_V2_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "two_bit_input_seq_detector_v2_tb.U_TWO_BIT_INPUT_SEQ_DETECTOR_V2_0" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 19691.557465 43276.380376
verdiWindowResize -win $_Verdi_1 -2 "25" "1440" "824"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
debExit
