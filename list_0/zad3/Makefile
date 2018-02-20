all: zadanie

zadanie: adder.vhdl adder_tb.vhdl
	ghdl -a adder.vhdl
	ghdl -a adder_tb.vhdl	
	ghdl -e adder_tb
	ghdl -r adder_tb	

clean:
	rm -f adder.o
	rm -f adder_tb.o
	rm -f adder.vcd
	rm -f e~adder_tb.o
	rm -f work-obj93.cf

wave:
	ghdl -a adder.vhdl
	ghdl -a adder_tb.vhdl	
	ghdl -e adder_tb
	ghdl -r adder_tb --vcd=adder.vcd
	gtkwave adder.vcd
