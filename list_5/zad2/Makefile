all: zadanie

zadanie: ${ex}.vhd ${ex}_tb.vhd
	ghdl -a vhdl_txt.vhd
	ghdl -a ${ex}.vhd
	ghdl -a ${ex}_tb.vhd
	ghdl -e ${ex}_tb
	ghdl -r ${ex}_tb --stop-time=564ns

clean:
	rm -f *.o
	rm -f work-obj93.cf
	rm -f example.vcd

wave:
	ghdl -a vhdl_txt.vhd
	ghdl -a ${ex}.vhd
	ghdl -a ${ex}_tb.vhd
	ghdl -e ${ex}_tb
	ghdl -r ${ex}_tb --vcd=example.vcd --stop-time=40001200ns
	gtkwave example.vcd
