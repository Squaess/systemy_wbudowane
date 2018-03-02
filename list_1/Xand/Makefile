all: zadanie

zadanie: Xand.vhd Xand_tb.vhd
	ghdl -a Xand.vhd
	ghdl -a Xand_tb.vhd
	ghdl -e Xand_tb
	ghdl -r Xand_tb

clean:
	rm -f *.o
	rm -f work-obj93.cf

wave:
	ghdl -a Xand.vhd
	ghdl -a Xand_tb.vhd
	ghdl -e Xand_tb
	ghdl -r Xand_tb --vcd=example.vcd
	gtkwave example.vcd
