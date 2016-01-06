onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clock /Pipeline_TestBench/CPU/clk
add wave -noupdate -label Reset /Pipeline_TestBench/CPU/rst
add wave -noupdate -label Start /Pipeline_TestBench/CPU/start
add wave -noupdate -divider <NULL>
add wave -noupdate -expand -group ID -label Op -radix binary -radixshowbase 0 /Pipeline_TestBench/CPU/instr_op
add wave -noupdate -expand -group ID -label Func -radix binary -radixshowbase 0 /Pipeline_TestBench/CPU/instr_func
add wave -noupdate -expand -group ID -label {Rs Address} -radix unsigned /Pipeline_TestBench/CPU/instr_rs
add wave -noupdate -expand -group ID -label {Rt Address} -radix unsigned /Pipeline_TestBench/CPU/instr_rt
add wave -noupdate -expand -group ID -label {Rd Address} -radix unsigned /Pipeline_TestBench/CPU/instr_rd
add wave -noupdate -expand -group ID -label Immediate -radix decimal -radixshowbase 0 /Pipeline_TestBench/CPU/instr_imm
add wave -noupdate -expand -group EX -label {ALU Op} -radix binary -radixshowbase 0 /Pipeline_TestBench/CPU/ALU/ALUop_i
add wave -noupdate -expand -group EX -label {Data 1} -radix decimal -radixshowbase 0 /Pipeline_TestBench/CPU/ALU/data_1
add wave -noupdate -expand -group EX -label {Data 2} -radix decimal -radixshowbase 0 /Pipeline_TestBench/CPU/ALU/data_2
add wave -noupdate -expand -group EX -label {Data Out} -radix decimal -radixshowbase 0 /Pipeline_TestBench/CPU/ALU/data_o
add wave -noupdate -expand -group EX -label {Is Zero} -radix binary -radixshowbase 0 /Pipeline_TestBench/CPU/ALU/is_zero
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {150 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {422 ps}