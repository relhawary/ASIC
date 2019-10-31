restart -f
force -freeze sim:/requestresolver/clk 0 0, 1 {25 ns} -r 50
force -freeze sim:/requestresolver/rst 1 0
force -freeze sim:/requestresolver/up_indicator 0 0
force -freeze sim:/requestresolver/down_indicator 0 0
force -freeze sim:/requestresolver/current_floor 4'h0 0
force -freeze sim:/requestresolver/up_buttons 9'h0 0
force -freeze sim:/requestresolver/down_buttons 9'h0 0
force -freeze sim:/requestresolver/elevator_buttons 10'h0 0
run
run
force -freeze sim:/requestresolver/rst 0 0
run
force -freeze sim:/requestresolver/up_buttons 9'b000100010 0
force -freeze sim:/requestresolver/down_buttons 9'b001000010 0
force -freeze sim:/requestresolver/elevator_buttons 10'b0000010000 0
run
