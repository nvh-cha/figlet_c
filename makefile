CC = gcc
CFLAGS = -std=c99 -Wall -Wextra

SRC = $(wildcard src/*.c)
TESTS = $(wildcard tests/*.c)

all: example test

example:
	$(CC) $(CFLAGS) $(SRC) example/font_loading.c -o bin/example

test:
	@echo "runnig test"
	@for file in $(TESTS); do \
		echo "compiling $$file"; \
		$(CC) $(CFLAGS) $(SRC) $$file -o bin/test; \
		./bin/test || exit 1; \
		rm bin/test; \
	done
	@echo "all tests passed"

clean:
	rm -f bin/*
