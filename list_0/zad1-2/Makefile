all: zadanie

zadanie: hello.vhdl
	ghdl -a hello.vhdl	
	ghdl -e hello_world
	ghdl -r hello_world

clean:
	rm -f e~hello_world.o
	rm -f hello.o
	rm -f work-obj93.cf
