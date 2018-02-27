all: zadanie

zadanie: example.vhd example_tb.vhd lab2-gates.vhd
	ghdl -a lab2-gates.vhd
	ghdl -a example.vhd
	ghdl -a example_tb.vhd
	ghdl -e example_tb
	ghdl -r example_tb	

clean:
	rm -f *.o
	rm -f work-obj93.cf

wave:
	ghdl -a lab2-gates.vhd
	ghdl -a example.vhd
	ghdl -a example_tb.vhd
	ghdl -e example_tb
	ghdl -r example_tb --vcd=example.vcd
	gtkwave example.vcd
