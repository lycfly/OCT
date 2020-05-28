debImport "-sv" "../booth_radix4.v" "../booth_radix4_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-small_circuit/2-booth/1-booth_radix_4/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {22 27 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mul_out" -win $_nTrace1
srcSelect -signal "done" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "product_ref" -win $_nTrace1
srcSelect -signal "product_ref_u" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 81322.554568 -snap {("G1" 7)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetMarker -win $_nWave2 81000.000000
wvSetCursor -win $_nWave2 104531.325788 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 104837.510105 -snap {("G1" 7)}
debExit
