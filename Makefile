.PHONY: clean

CFLAGS=-Wall -Werror -static --sysroot=/opt/sysroot

hello: hello.c
	arm-linux-gnueabihf-gcc $(CFLAGS) -lusb-1.0 -o $@ $<

clean:
	rm -f *~
	rm -f hello
