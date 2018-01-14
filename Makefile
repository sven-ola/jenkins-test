.PHONY: clean

CFLAGS=-Wall -Werror

hello: hello.c

clean:
	rm -f *~
	rm hello
