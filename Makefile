OBJS = src/main.o
CC = g++
DEBUG = -g
LIBS = -Iinclude -Llib -ltcod -ltcodxx -Wl,-rpath=lib
CFLAGS = -Wall -c $(LIBS) $(DEBUG)
LFLAGS = -Wall $(LIBS) $(DEBUG)

brotrrl: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o brotrrl

src/main.o: src/main.cpp
	$(CC) $(CFLAGS) src/main.cpp -o src/main.o

clean:
	\rm -f src/*.o brotrrl
