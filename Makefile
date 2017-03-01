OBJS = src/main.o \
       src/Actor.o \
       src/Map.o \
       src/Engine.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -Iinclude $(DEBUG)
LDFLAGS = -Llib -ltcod -ltcodxx -Wl,-rpath=lib

brotrrl: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o brotrrl

src/main.o: src/main.cpp src/Actor.hpp src/Map.hpp src/Engine.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o src/main.o

src/Actor.o: src/Actor.cpp src/Actor.hpp
	$(CC) $(CFLAGS) -c src/Actor.cpp -o src/Actor.o

src/Map.o: src/Map.cpp src/Map.hpp
	$(CC) $(CFLAGS) -c src/Map.cpp -o src/Map.o

src/Engine.o: src/Engine.cpp src/Engine.hpp src/Actor.hpp src/Map.hpp
	$(CC) $(CFLAGS) -c src/Engine.cpp -o src/Engine.o

.PHONY: clean
clean:
	rm -f src/*.o brotrrl
