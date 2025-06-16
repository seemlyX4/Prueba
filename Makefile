CC = gcc
CFLAGS = -Wall -g -Iinclude

all: main

main: main.c src/stack.c
	$(CC) $(CFLAGS) -o main main.c src/stack.c

clean:
	rm -f main

run: main
	./main

valgrind: main
	valgrind --leak-check=full --show-leak-kinds=all ./main
