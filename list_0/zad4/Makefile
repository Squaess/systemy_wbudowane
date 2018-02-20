all: zadanie

zadanie: zad4.vhdl zad4_tb.vhdl
	ghdl -a zad4.vhdl
	ghdl -a zad4_tb.vhdl	
	ghdl -e zad4_tb
	ghdl -r zad4_tb	

clean:
	rm -f zad4.o
	rm -f zad4_tb.o
	rm -f zad4.vcd
	rm -f e~zad4_tb.o
	rm -f work-obj93.cf

wave:
	ghdl -a zad4.vhdl
	ghdl -a zad4_tb.vhdl	
	ghdl -e zad4_tb
	ghdl -r zad4_tb --vcd=zad4.vcd
	gtkwave zad4.vcd
