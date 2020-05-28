debImport "-sv" "../int_div.v" "../int_div_tb.v"
debLoadSimResult \
           /home/IC/Desktop/1-Find_job/0-small-circuits/0-int_divider/0-RTL/simulation/novas.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -all -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 44 1 1 1 1}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 0.000000
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {3 14 1 1 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
debExit
