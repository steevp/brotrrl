OBJS = src/main.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -Iinclude $(DEBUG)
LDFLAGS = -Llib -ltcod -ltcodxx -Wl,-rpath=lib

brotrrl: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o brotrrl

src/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o src/main.o

.PHONY: clean
clean:
	rm -f src/*.o brotrrl
