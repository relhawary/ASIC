restart -f
force -freeze sim:/elev_cnt/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/elev_cnt/rst 0 0
force -freeze sim:/elev_cnt/rst 1 0
force -freeze sim:/elev_cnt/down_buttons 9'b010000000 0
force -freeze sim:/elev_cnt/up_buttons 9'b000000100 0
force -freeze sim:/elev_cnt/elevator_buttons 10'b0000001000 0
run
force -freeze sim:/elev_cnt/rst 0 0
run