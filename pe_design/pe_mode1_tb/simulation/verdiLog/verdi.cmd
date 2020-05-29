debImport "-sv" "../pe_mode1_tb.v"
debLoadSimResult \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode1_tb/simulation/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcHBSelect "pe_mode1_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -win $_nTrace1 -range {35 36 3 3 3 3}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "start_config" -win $_nTrace1
srcSelect -signal "start_weight_load" -win $_nTrace1
srcSelect -signal "start_feature_load" -win $_nTrace1
srcSelect -signal "start_psum_in_load" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectGroup -win $_nWave2 {G1}
wvRenameGroup -win $_nWave2 {G1} {TB}
wvSelectSignal -win $_nWave2 {( "TB" 6 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "TB" 6 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 8439.723134 -snap {("TB" 6)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "load_full_cloumn" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 14628.853433 -snap {("TB" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
wvSelectSignal -win $_nWave2 {( "TB" 8 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvRenameGroup -win $_nWave2 {G2} {Fmap}
wvSelectGroup -win $_nWave2 {Fmap}
wvSelectGroup -win $_nWave2 {Fmap}
wvSelectSignal -win $_nWave2 {( "TB" 3 )} 
wvSelectSignal -win $_nWave2 {( "TB" 4 )} 
wvSelectSignal -win $_nWave2 {( "TB" 5 )} 
wvSelectSignal -win $_nWave2 {( "TB" 4 )} 
wvSelectSignal -win $_nWave2 {( "TB" 5 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_in" -win $_nTrace1
srcSelect -signal "feature_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("TB" 9)}
wvSetPosition -win $_nWave2 {("TB" 10)}
wvSetPosition -win $_nWave2 {("Fmap" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSelectGroup -win $_nWave2 {G3}
wvRenameGroup -win $_nWave2 {G3} {Weight}
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -win $_nTrace1 -range {52 53 12 3 6 6}
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "weight_in_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSetPosition -win $_nWave2 {("Fmap" 4)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvRenameGroup -win $_nWave2 {G4} {Psum_in}
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcSelect -signal "psum_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 4)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_in_en" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "psum_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Weight" 1 )} {( "Psum_in" 3 )} 
wvSelectSignal -win $_nWave2 {( "Fmap" 1 )} {( "Weight" 1 )} {( "Psum_in" 3 )} \
           
wvSelectSignal -win $_nWave2 {( "Fmap" 1 )} {( "Weight" 1 )} {( "Psum_in" 3 )} \
           
wvSetRadix -win $_nWave2 -format UDec
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 495506.367495 -snap {("Psum_in" 3)}
wvSetCursor -win $_nWave2 340099.851285 -snap {("Psum_in" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvScrollUp -win $_nWave2 1
wvUndo -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSelectGroup -win $_nWave2 {Weight}
wvSelectGroup -win $_nWave2 {Psum_in}
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "Psum_in" 3 )} 
wvSetPosition -win $_nWave2 {("Psum_in" 3)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvRenameGroup -win $_nWave2 {G5} {Result}
wvSelectGroup -win $_nWave2 {Result}
wvSelectSignal -win $_nWave2 {( "Result" 1 )} 
wvSelectGroup -win $_nWave2 {Result}
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "accum_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 404964.145454 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "Result" 2 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Result" 2 )} 
wvSelectGroup -win $_nWave2 {G6}
wvRenameGroup -win $_nWave2 {G6} {MAC_control}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -toggle -signal "mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -toggle -signal "acc_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -toggle -signal "interrupt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "mac_begin" -win $_nTrace1
srcSelect -signal "acc_begin" -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -toggle -signal "interrupt" -win $_nTrace1
srcSelect -signal "interrupt" -win $_nTrace1
srcSelect -signal "restore" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Result" 4)}
wvSetPosition -win $_nWave2 {("Result" 5)}
wvSetPosition -win $_nWave2 {("Result" 6)}
wvSetPosition -win $_nWave2 {("Result" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ifmap_in" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcSelect -signal "external_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "external_psum" -win $_nTrace1
srcSelect -signal "internal_psum" -win $_nTrace1
srcSelect -signal "ifmap_in" -win $_nTrace1
srcSelect -signal "weight_in" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "MAC_control" 6 7 8 9 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_finish_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcSelect -win $_nTrace1 -range {54 61 6 12 8 10}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_finish_flag" -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "acc_finish_flag" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "first_clip_flag" -win $_nTrace1
srcSelect -signal "mac_finish_flag" -win $_nTrace1
srcSelect -signal "acc_finish_flag" -win $_nTrace1
srcSelect -signal "mul_enable_flag" -win $_nTrace1
srcSelect -signal "acc_enable_flag" -win $_nTrace1
srcSelect -signal "psum_initial_flag" -win $_nTrace1
srcSelect -toggle -signal "acc_enable_flag" -win $_nTrace1
srcSelect -signal "acc_enable_flag" -win $_nTrace1
srcSelect -signal "psum_store_flag" -win $_nTrace1
srcSelect -signal "accumulate_mode" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 56364.147325 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 86996.836088 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 118854.832402 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 140910.368312 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 164803.865548 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 179507.556154 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 199112.476963 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 210140.244918 -snap {("Result" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 6
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {Weight}
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" -win \
           $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" -win \
           $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0.weight_scratch_pad" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ram_block" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("MAC_control" 17)}
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvSetPosition -win $_nWave2 {("MAC_control" 14)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 8)}
wvSetPosition -win $_nWave2 {("MAC_control" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 4)}
wvSetPosition -win $_nWave2 {("MAC_control" 3)}
wvSetPosition -win $_nWave2 {("MAC_control" 2)}
wvSetPosition -win $_nWave2 {("MAC_control" 1)}
wvSetPosition -win $_nWave2 {("MAC_control" 0)}
wvSetPosition -win $_nWave2 {("Result" 2)}
wvSetPosition -win $_nWave2 {("Result" 1)}
wvSetPosition -win $_nWave2 {("Result" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Fmap" 1)}
wvSetPosition -win $_nWave2 {("Fmap" 0)}
wvSetPosition -win $_nWave2 {("TB" 8)}
wvSetPosition -win $_nWave2 {("TB" 7)}
wvSetPosition -win $_nWave2 {("TB" 6)}
wvSetPosition -win $_nWave2 {("TB" 5)}
wvSetPosition -win $_nWave2 {("TB" 4)}
wvSetPosition -win $_nWave2 {("TB" 3)}
wvSetPosition -win $_nWave2 {("TB" 2)}
wvSetPosition -win $_nWave2 {("TB" 1)}
wvSetPosition -win $_nWave2 {("TB" 2)}
wvSetPosition -win $_nWave2 {("TB" 3)}
wvSetPosition -win $_nWave2 {("TB" 4)}
wvSetPosition -win $_nWave2 {("TB" 5)}
wvSetPosition -win $_nWave2 {("TB" 6)}
wvSetPosition -win $_nWave2 {("TB" 7)}
wvSetPosition -win $_nWave2 {("TB" 8)}
wvSetPosition -win $_nWave2 {("Fmap" 0)}
wvSetPosition -win $_nWave2 {("Fmap" 1)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "Weight" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 216308.003656 -snap {("Weight" 3)}
wvSetCursor -win $_nWave2 202052.748401 -snap {("Weight" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_FMAP_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "feature_pad" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvScrollUp -win $_nWave2 3
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSelectSignal -win $_nWave2 {( "Fmap" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 215087.412046 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 235922.090136 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 260433.476124 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 284332.077463 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 308843.463451 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 2 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 3 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 4 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 4 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 3 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 3 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 2 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "MAC_control" 13 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 14 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 13 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 14 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "MAC_control" 9 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 8 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 7 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 6 )} 
wvZoom -win $_nWave2 28832.435823 71774.361517
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ram_fmap_in" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.U_MACC_0" -delim \
           "."
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcSelect -signal "cnt_clip" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcSelect -toggle -signal "cnt_a" -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcSelect -signal "cnt_b" -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcSelect -signal "cnt_clip" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 12
wvSetPosition -win $_nWave2 {("Fmap" 6)}
wvSetPosition -win $_nWave2 {("Fmap" 7)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvSetPosition -win $_nWave2 {("Result" 0)}
wvSetPosition -win $_nWave2 {("Result" 1)}
wvSetPosition -win $_nWave2 {("Result" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Result" 6)}
wvScrollDown -win $_nWave2 5
wvSetPosition -win $_nWave2 {("Result" 4)}
wvSetPosition -win $_nWave2 {("Result" 5)}
wvSetPosition -win $_nWave2 {("Result" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 0)}
wvSetPosition -win $_nWave2 {("MAC_control" 1)}
wvSetPosition -win $_nWave2 {("MAC_control" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvScrollDown -win $_nWave2 4
wvSetPosition -win $_nWave2 {("MAC_control" 4)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 8)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvScrollDown -win $_nWave2 4
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvSetPosition -win $_nWave2 {("MAC_control" 14)}
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvSetPosition -win $_nWave2 {("MAC_control" 17)}
wvSetPosition -win $_nWave2 {("MAC_control" 18)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 18)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 15 16 17 18 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "MAC_control" 17 )} 
wvSetCursor -win $_nWave2 227374.735356 -snap {("MAC_control" 16)}
wvSetCursor -win $_nWave2 225236.414961 -snap {("MAC_control" 17)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 260162.314749 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 228800.282287 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 257311.220889 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 16 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 286534.932957 -snap {("MAC_control" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSetCursor -win $_nWave2 252321.806634 -snap {("MAC_control" 15)}
wvSetCursor -win $_nWave2 256598.447424 -snap {("MAC_control" 15)}
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 220959.774171 -snap {("MAC_control" 17)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 17 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 15 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 16 )} 
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "MAC_control" 18 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 16 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 17 )} 
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 263013.408610 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 287247.706422 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 339280.169372 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 447621.736062 -snap {("Result" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 262300.635145 -snap {("Result" 2)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectGroup -win $_nWave2 {Weight}
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_addr_true" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_addr" -win $_nTrace1
srcSelect -signal "weight_addr_true" -win $_nTrace1
srcSelect -signal "weight_out_from_pad" -win $_nTrace1
srcSelect -signal "weight_out" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("MAC_control" 20)}
wvSetPosition -win $_nWave2 {("MAC_control" 19)}
wvSetPosition -win $_nWave2 {("MAC_control" 18)}
wvSetPosition -win $_nWave2 {("MAC_control" 17)}
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvSetPosition -win $_nWave2 {("MAC_control" 14)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvScrollUp -win $_nWave2 4
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 8)}
wvSetPosition -win $_nWave2 {("MAC_control" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("MAC_control" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 4)}
wvSetPosition -win $_nWave2 {("MAC_control" 3)}
wvSetPosition -win $_nWave2 {("MAC_control" 2)}
wvSetPosition -win $_nWave2 {("MAC_control" 1)}
wvSetPosition -win $_nWave2 {("MAC_control" 0)}
wvSetPosition -win $_nWave2 {("Result" 2)}
wvSetPosition -win $_nWave2 {("Result" 1)}
wvSetPosition -win $_nWave2 {("Result" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Fmap" 1)}
wvSetPosition -win $_nWave2 {("Fmap" 0)}
wvSetPosition -win $_nWave2 {("TB" 8)}
wvSetPosition -win $_nWave2 {("TB" 7)}
wvSetPosition -win $_nWave2 {("TB" 6)}
wvSetPosition -win $_nWave2 {("TB" 5)}
wvSetPosition -win $_nWave2 {("TB" 4)}
wvSetPosition -win $_nWave2 {("TB" 3)}
wvSetPosition -win $_nWave2 {("TB" 2)}
wvSetPosition -win $_nWave2 {("TB" 1)}
wvSetPosition -win $_nWave2 {("TB" 2)}
wvSetPosition -win $_nWave2 {("TB" 3)}
wvSetPosition -win $_nWave2 {("TB" 4)}
wvSetPosition -win $_nWave2 {("TB" 5)}
wvSetPosition -win $_nWave2 {("TB" 6)}
wvSetPosition -win $_nWave2 {("TB" 7)}
wvSetPosition -win $_nWave2 {("TB" 8)}
wvSetPosition -win $_nWave2 {("Fmap" 0)}
wvSetPosition -win $_nWave2 {("Fmap" 1)}
wvSetPosition -win $_nWave2 {("Fmap" 2)}
wvSetPosition -win $_nWave2 {("Fmap" 3)}
wvSetPosition -win $_nWave2 {("Weight" 0)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 1)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 2)}
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Weight" 3)}
wvSetPosition -win $_nWave2 {("Weight" 7)}
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 6 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 5 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSetRadix -win $_nWave2 -2Com
wvZoom -win $_nWave2 712.773465 324311.926606
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 196425.175894 -snap {("MAC_control" 17)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 190944.315149 216064.926896
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 209000.308843 -snap {("Weight" 4)}
wvSelectSignal -win $_nWave2 {( "Weight" 6 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 7 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 6 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 5 )} 
wvSetCursor -win $_nWave2 206943.857916 -snap {("Weight" 7)}
wvSetCursor -win $_nWave2 222757.256419 -snap {("Weight" 7)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 454036.697248 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 245194.071983 -snap {("Result" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 -2 "25" "1440" "824"
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSetCursor -win $_nWave2 222940.454495 -snap {("Weight" 4)}
wvSetCursor -win $_nWave2 241578.563231 -snap {("Weight" 4)}
wvSetCursor -win $_nWave2 245162.814911
wvSetCursor -win $_nWave2 252331.318271
wvSetCursor -win $_nWave2 255915.569951
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 3 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvZoom -win $_nWave2 18324.439701 490448.239061
wvZoom -win $_nWave2 283358.717677 409325.579833
wvSelectSignal -win $_nWave2 {( "Weight" 7 )} 
wvZoom -win $_nWave2 261140.350405 287893.184523
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "Weight" 6 7 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 4 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 4 5 6 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSetRadix -win $_nWave2 -2Com
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 187524.429967 255515.743757
wvSetCursor -win $_nWave2 260781.063066 -snap {("Weight" 4)}
wvSetCursor -win $_nWave2 261143.876907 -snap {("Weight" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_shift_num" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_num" -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_shift_num" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_one_cloumn_num" -win $_nTrace1
srcSelect -signal "cnt_shift" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Weight" 9 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_shift_num" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Weight" 11 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcSelect -signal "weight_shift_num" -win $_nTrace1
wvSetCursor -win $_nWave2 129382.817258 -snap {("Weight" 11)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "Para_1Dconv_len" -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 131995.076913 -snap {("Weight" 6)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "base_weight_address" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 12 )} 
wvSetRadix -win $_nWave2 -format UDec
debSaveSession \
           /home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode1_tb/simulation/verdiLog/5_29.ses \
           -keynote \
           {invoke directory: /home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode1_tb/simulation
command line: -sv ../pe_mode1_tb.v -ba 
current trace scope: pe_mode1_tb.U_PE_0
memo:}
wvSaveSignal -win $_nWave2 \
           "/home/IC/Desktop/0-onchiptrain/OCT/OCT/pe_design/pe_mode1_tb/simulation/verdiLog/5_29.rc"
wvSetCursor -win $_nWave2 131051.760926 -snap {("Weight" 12)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_LOAD_WEIGHT_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_data_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "base_address" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "waddra_filter" -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 14 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Weight" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 4 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 118861.215871 -snap {("MAC_control" 5)}
wvSetCursor -win $_nWave2 120965.536149 -snap {("MAC_control" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pad_full" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 0.000000 135837.502042
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 129603.763954 -snap {("Weight" 14)}
wvSetCursor -win $_nWave2 130473.587873 -snap {("Weight" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.000000 218815.368196
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 132410.153434 -snap {("Weight" 6)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 131008.987789 -snap {("Weight" 5)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 135446.012331 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 143853.006200 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 131000.000000
wvSetCursor -win $_nWave2 144086.533807
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 256705.222508 -snap {("Result" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 213736.142734
wvSetCursor -win $_nWave2 214203.197949
wvSetCursor -win $_nWave2 214903.780771
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 261375.774657 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 294221.432647
wvSetCursor -win $_nWave2 316873.610572
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 404469.816132 -snap {("Result" 0)}
wvSetCursor -win $_nWave2 544586.380613 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 481066.871382 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 545520.491042
wvSetCursor -win $_nWave2 429690.797739
wvSetCursor -win $_nWave2 394194.601404
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 5 )} 
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 214845.398869
wvSetCursor -win $_nWave2 299849.447987
wvSetCursor -win $_nWave2 318531.656585
wvSelectSignal -win $_nWave2 {( "Weight" 4 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 16 )} 
wvSetCursor -win $_nWave2 134511.901901 -snap {("MAC_control" 16)}
wvSetCursor -win $_nWave2 141050.674910
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 28957.423326 197097.300702
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 130164.350583 -snap {("MAC_control" 11)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvSetCursor -win $_nWave2 129626.015864 -snap {("MAC_control" 11)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 13 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 131061.575116 -snap {("Result" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_begin_" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 17
wvSetPosition -win $_nWave2 {("Psum_in" 0)}
wvSetPosition -win $_nWave2 {("Psum_in" 1)}
wvSetPosition -win $_nWave2 {("Psum_in" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Psum_in" 3)}
wvScrollDown -win $_nWave2 5
wvSetPosition -win $_nWave2 {("Result" 0)}
wvSetPosition -win $_nWave2 {("Result" 1)}
wvSetPosition -win $_nWave2 {("Result" 2)}
wvSetPosition -win $_nWave2 {("MAC_control" 0)}
wvSetPosition -win $_nWave2 {("MAC_control" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 2)}
wvSetPosition -win $_nWave2 {("MAC_control" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 78304.772609 -snap {("MAC_control" 4)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 5 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 4 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 3 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 2 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 3 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 4 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 5 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvSetCursor -win $_nWave2 129805.460770 -snap {("MAC_control" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 108989.851618 -snap {("MAC_control" 12)}
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 117244.317316 -snap {("MAC_control" 13)}
wvSetCursor -win $_nWave2 128549.346425 -snap {("MAC_control" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 129626.015864 -snap {("Weight" 13)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 128369.901518 -snap {("MAC_control" 13)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_curr_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("MAC_control" 3)}
wvSetPosition -win $_nWave2 {("MAC_control" 4)}
wvSetPosition -win $_nWave2 {("MAC_control" 5)}
wvSetPosition -win $_nWave2 {("MAC_control" 6)}
wvSetPosition -win $_nWave2 {("MAC_control" 7)}
wvSetPosition -win $_nWave2 {("MAC_control" 8)}
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 10 )} 
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvSetPosition -win $_nWave2 {("MAC_control" 14)}
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvSetPosition -win $_nWave2 {("MAC_control" 17)}
wvSetPosition -win $_nWave2 {("MAC_control" 18)}
wvSetPosition -win $_nWave2 {("MAC_control" 19)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvUndo -win $_nWave2
wvSetPosition -win $_nWave2 {("G8" 0)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "MAC_control" 9 )} 
wvSetPosition -win $_nWave2 {("MAC_control" 9)}
wvSetPosition -win $_nWave2 {("MAC_control" 10)}
wvSetPosition -win $_nWave2 {("MAC_control" 11)}
wvSetPosition -win $_nWave2 {("MAC_control" 12)}
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 13)}
wvScrollDown -win $_nWave2 7
wvSetPosition -win $_nWave2 {("MAC_control" 14)}
wvSetPosition -win $_nWave2 {("MAC_control" 15)}
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 16)}
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("MAC_control" 17)}
wvSetPosition -win $_nWave2 {("MAC_control" 18)}
wvSetPosition -win $_nWave2 {("MAC_control" 19)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("MAC_control" 19)}
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0"
schSelect -win $_nSchema3 -instpin "macc_control\(@1\):Always1:129:150:Reg" \
          "clear_delay1"
schSelect -win $_nSchema3 -inst "macc_control\(@1\):FSM0:165:273:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 28 963 318 -win $_nState4
fsmResizeWindow 0 28 963 318 -win $_nState4
fsmResizeWindow 0 28 963 318 -win $_nState4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiDockWidgetSetCurTab -dock windowDock_nState_4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 12 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 540032.017076 -snap {("MAC_control" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "pe_mode1_tb.U_PE_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "both_pads_ready" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "MAC_control" 20 )} 
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 397748.132337 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 119647.812166
wvSetCursor -win $_nWave2 142283.884739
wvSetCursor -win $_nWave2 163842.049093
wvSetCursor -win $_nWave2 219893.276414
wvSetCursor -win $_nWave2 281334.044824
wvSetCursor -win $_nWave2 354631.803629
wvSetCursor -win $_nWave2 395592.315902
wvSetCursor -win $_nWave2 434397.011740
wvSetCursor -win $_nWave2 413916.755603
wvSetCursor -win $_nWave2 424695.837780
wvSetCursor -win $_nWave2 438708.644610
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 427929.562433
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 400981.856990 -snap {("MAC_control" 17)}
wvSetCursor -win $_nWave2 131504.802561 -snap {("MAC_control" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 165997.865528
wvSetCursor -win $_nWave2 143361.792956
wvSetCursor -win $_nWave2 140128.068303
wvSetCursor -win $_nWave2 139050.160085
wvSetCursor -win $_nWave2 134738.527215
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 206958.377801 -snap {("MAC_control" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 349242.262540 -snap {("MAC_control" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 211270.010672 -snap {("MAC_control" 20)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 23713.980790 354631.803629
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 7 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 6 )} 
wvSetCursor -win $_nWave2 205595.174773 -snap {("Weight" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 9 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 8 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 7 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 8 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 8 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 7 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 6 )} 
wvSelectSignal -win $_nWave2 {( "MAC_control" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 137080.705583 -snap {("MAC_control" 7)}
wvSelectSignal -win $_nWave2 {( "MAC_control" 8 )} 
wvZoom -win $_nWave2 131430.027712 140965.546620
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 133796.098305 -snap {("MAC_control" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 127201.630586 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 128585.654676 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 127852.936040
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 128748.481039 -snap {("MAC_control" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 13 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 11
wvScrollDown -win $_nWave2 13
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "Weight" 12 )} 
wvSetCursor -win $_nWave2 131109.463309 -snap {("Weight" 12)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 128911.307402 -snap {("MAC_control" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 130946.636945 -snap {("Weight" 4)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 113137.827735 -snap {("Weight" 4)}
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 118918.163637 -snap {("Weight" 2)}
wvSetCursor -win $_nWave2 131292.967257 -snap {("Weight" 2)}
wvSetCursor -win $_nWave2 118918.163637 -snap {("Weight" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 120627.840453 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 120220.774544
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSetCursor -win $_nWave2 118918.163637
wvSetCursor -win $_nWave2 120465.014089
wvSetCursor -win $_nWave2 121034.906361
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvSetCursor -win $_nWave2 128850.571806 -snap {("MAC_control" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 131217.606288 -snap {("Weight" 12)}
wvSetCursor -win $_nWave2 129507.929472 -snap {("Weight" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 130891.953561 -snap {("MAC_control" 20)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 142859.691273 -snap {("MAC_control" 15)}
wvSetCursor -win $_nWave2 130891.953561 -snap {("MAC_control" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 212258.201150 -snap {("MAC_control" 20)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 131309.090751 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 126668.539394 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 125284.515305 -snap {("MAC_control" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 131064.851206 -snap {("MAC_control" 19)}
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 213302.536082 -snap {("MAC_control" 20)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 242529.348986 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 261931.696905 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 294268.943436 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 312593.383138
wvSetCursor -win $_nWave2 360021.344717
wvSetCursor -win $_nWave2 418228.388474
wvSetCursor -win $_nWave2 407449.306297
wvSetCursor -win $_nWave2 395592.315902
wvSetCursor -win $_nWave2 384813.233725
wvSetCursor -win $_nWave2 360021.344717
wvSetCursor -win $_nWave2 340618.996798
tfgGenerate -incr -ref {pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.mac_finish_flag#340618.997} -startWithStmt -schFG
tfgNodeTraceActiveValue -win $_tFlowView5 -folder {group_0} {pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0.mac_finish_flag} -stopLevel 10
tfgCloseViewer -win $_tFlowView5
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "MAC_control" 16 )} 
wvSetCursor -win $_nWave2 270554.962647
wvSetCursor -win $_nWave2 261931.696905
wvSetCursor -win $_nWave2 270554.962647
wvZoom -win $_nWave2 244685.165422 322294.557097
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 256156.777745 -snap {("MAC_control" 18)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
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
wvZoom -win $_nWave2 0.000000 161686.232657
wvSetCursor -win $_nWave2 131316.139864 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 127002.206228 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 124931.518083 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 126139.419501 -snap {("MAC_control" 19)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 533564.567769 -snap {("MAC_control" 12)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 420384.204909 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 379423.692636 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 329839.914621 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 141205.976521 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 204802.561366 -snap {("MAC_control" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 181088.580576 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 182166.488794
wvSetCursor -win $_nWave2 159530.416222
wvSetCursor -win $_nWave2 142283.884739
wvSetCursor -win $_nWave2 113180.362860
wvSetCursor -win $_nWave2 86232.657417
wvSetCursor -win $_nWave2 64674.493063
wvSetCursor -win $_nWave2 109946.638207
wvSetCursor -win $_nWave2 135816.435432
wvSetCursor -win $_nWave2 132582.710779
wvSetCursor -win $_nWave2 125037.353255
wvSetCursor -win $_nWave2 144439.701174
wvSetCursor -win $_nWave2 144439.701174
wvSetCursor -win $_nWave2 155218.783351
wvSetCursor -win $_nWave2 185400.213447
wvSetCursor -win $_nWave2 214503.735326
wvSetCursor -win $_nWave2 256542.155816
wvSetCursor -win $_nWave2 279178.228388
wvSetCursor -win $_nWave2 308281.750267
wvSetCursor -win $_nWave2 347086.446105
wvSetCursor -win $_nWave2 374034.151547
wvSetCursor -win $_nWave2 410683.030950
wvSetCursor -win $_nWave2 473201.707577
wvSetCursor -win $_nWave2 396670.224120
wvSetCursor -win $_nWave2 342774.813234
wvSetCursor -win $_nWave2 297502.668090
wvSetCursor -win $_nWave2 269477.054429
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvSetCursor -win $_nWave2 149829.242263 -snap {("MAC_control" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 183244.397012 -snap {("MAC_control" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 160608.324440 -snap {("MAC_control" 16)}
wvSetCursor -win $_nWave2 131504.802561 -snap {("MAC_control" 16)}
wvSetCursor -win $_nWave2 163842.049093 -snap {("MAC_control" 16)}
wvSetCursor -win $_nWave2 183244.397012 -snap {("MAC_control" 16)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 30181.430096 282411.953042
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 130050.719331 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 131935.045543 -snap {("MAC_control" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 108784.752081 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 93171.763468 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 82673.374572 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 81596.616737 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 115245.299094 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 135972.887426 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 163699.401687 -snap {("MAC_control" 18)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 385891.141942 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 398826.040555 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 440864.461046 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 394514.407684 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 368644.610459 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 449487.726788 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 499071.504803 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 339541.088581 -snap {("Result" 1)}
wvSetCursor -win $_nWave2 280256.136606 -snap {("Result" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
schCreateWindow -delim "." -win $_nSchema1 -scope "pe_mode1_tb.U_PE_0"
wvSetCursor -win $_nWave2 183244.397012 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 174621.131270 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 172465.314835
schSelect -win $_nSchema6 -signal "feature_in_en"
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_6
schCloseWindow -win $_nSchema6
fsmCloseWindow -win $_nState4
schCloseWindow -win $_nSchema3
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 190789.754536 -snap {("MAC_control" 15)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "pe_mode1_tb.U_PE_0"
schSelect -win $_nSchema7 -inst "U_LOAD_FMAP_0"
schSelect -win $_nSchema7 -inst "U_LOAD_FMAP_0"
schPushViewIn -win $_nSchema7
schSelect -win $_nSchema7 -inst "load_fmap\(@1\):FSM0:143:237:FSM"
schPushViewIn -win $_nSchema7
fsmSetCurrentWindow -win $_nState8
fsmResizeWindow 0 28 963 318 -win $_nState8
fsmResizeWindow 0 28 963 318 -win $_nState8
fsmResizeWindow 0 28 963 318 -win $_nState8
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 82998.932764 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 87310.565635 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 92700.106724 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 103479.188901 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 128271.077908 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 174621.131270 -snap {("MAC_control" 19)}
wvSetCursor -win $_nWave2 178932.764141
fsmCloseWindow -win $_nState8
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 131504.802561 -snap {("MAC_control" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 261931.696905 -snap {("MAC_control" 11)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 284567.769477
wvSetCursor -win $_nWave2 272710.779082
wvSetCursor -win $_nWave2 261931.696905
wvSetCursor -win $_nWave2 248996.798292
wvSetCursor -win $_nWave2 261931.696905
wvSetCursor -win $_nWave2 272710.779082
wvSetCursor -win $_nWave2 267321.237994
wvSetCursor -win $_nWave2 294268.943436
wvSetCursor -win $_nWave2 360021.344717
wvSetCursor -win $_nWave2 372956.243330
wvSetCursor -win $_nWave2 402059.765208
wvSetCursor -win $_nWave2 421462.113127
wvSetCursor -win $_nWave2 447331.910352
wvSetCursor -win $_nWave2 478591.248666
wvSetCursor -win $_nWave2 436552.828175
wvSetCursor -win $_nWave2 410683.030950
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
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
wvSetCursor -win $_nWave2 621953.041622
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 177977.614551
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "MAC_control" 19 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("MAC_control" 19)}
srcHBSelect "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "pe_mode1_tb.U_PE_0.U_MACC_CONTROL_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_curr_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "MUL_END" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "MUL_NOP" -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 127280.960709 -snap {("MAC_control" 19)}
wvZoom -win $_nWave2 0.000000 140224.787222
wvSetCursor -win $_nWave2 60017.873933 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 63445.590954 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 116983.212361 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 120099.318744 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 123215.425127 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 126019.920871 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 127422.168743 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 129759.248531 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 128512.805977 -snap {("MAC_control" 20)}
wvSetCursor -win $_nWave2 130382.469807 -snap {("MAC_control" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 237911.111111 -snap {("Result" 1)}
