restart -f
force -freeze sim:/elev_cnt/clk 0 0, 1 {50 ns} -r 100
force -freeze sim:/elev_cnt/rst 0 0
run
run
force -freeze sim:/elev_cnt/rst 1 0
force -freeze sim:/elev_cnt/elevator_buttons 10'b1000 0
run
force -freeze sim:/elev_cnt/rst 1 0
run