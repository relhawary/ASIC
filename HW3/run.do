restart -f
force -freeze sim:/controlunit/clk 0 0, 1 {50 ns} -r 100
force -freeze sim:/controlunit/rst 1 0
force -freeze sim:/controlunit/request 4'h0 0
run
force -freeze sim:/controlunit/rst 0 0
run
force -freeze sim:/controlunit/request 4'h3 0
run
run 
run