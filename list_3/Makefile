all: zadanie

zadanie: ${ex}.vhd ${ex}_tb.vhd pack.vhd rom.vhd
	ghdl -a rom.vhd
	ghdl -a pack.vhd
	ghdl -a ${ex}.vhd
	ghdl -a ${ex}_tb.vhd
	ghdl -e ${ex}_tb
	ghdl -r ${ex}_tb --stop-time=164ns

clean:
	rm -f *.o
	rm -f work-obj93.cf
	rm -f example.vcd
wave:
	ghdl -a rom.vhd
	ghdl -a pack.vhd
	ghdl -a ${ex}.vhd
	ghdl -a ${ex}_tb.vhd
	ghdl -e ${ex}_tb
	ghdl -r ${ex}_tb --vcd=example.vcd --stop-time=164ns
	gtkwave example.vcd
