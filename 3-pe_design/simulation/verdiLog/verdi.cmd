verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
debImport "-sv" "../True_dual_ports_ram.v" "../fifo.v" "../load_fmap.v" \
          "../load_weight.v" "../macc.v" "../macc_2stage.v" \
          "../macc_control.v" "../pe.v" "../pe_mode0_tb.v" "../pe_mode1_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/simulation/novas.fsdb
wvCreateWindow
srcHBSelect "pe_mode1_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb" -delim "."
debExit
