all : test.o test-prog

test-prog : main.o thumb.o
test.o : main.o thumb.o
	gcc $+ -o $@

main.o : main.c
main.o : CFLAGS=-marm -fPIC

thumb.o : thumb.c
thumb.o : CFLAGS=-mthumb -fPIC

clean :
	rm test *.o
