all: zadanie

zadanie: simple.vhd simple_tb.vhd
	ghdl -a simple.vhd
	ghdl -a simple_tb.vhd
	ghdl -e simple_tb
	ghdl -r simple_tb --stop-time=1400ns

clean:
	rm -f *.o
	rm -f work-obj93.cf
	rm -f example.vcd
wave:
	ghdl -a simple.vhd
	ghdl -a simple_tb.vhd
	ghdl -e simple_tb
	ghdl -r simple_tb --vcd=example.vcd --stop-time=1400ns
	gtkwave example.vcd
