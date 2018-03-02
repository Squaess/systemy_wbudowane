all: zadanie

zadanie: zad5.vhdl zad5_tb.vhdl lab2-gates.vhd
	ghdl -a lab2-gates.vhd
	ghdl -a zad5.vhdl
	ghdl -a zad5_tb.vhdl
	ghdl -e zad5_tb
	ghdl -r zad5_tb

clean:
	rm -f *.o
	rm -f work-obj93.cf

wave:
	ghdl -a lab2-gates.vhd
	ghdl -a zad5.vhdl
	ghdl -a zad5_tb.vhdl
	ghdl -e zad5_tb
	ghdl -r zad5_tb --vcd=zad5.vcd
	gtkwave zad5.vcd
