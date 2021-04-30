CC=g++
OBJ=loader_demo

.PHONY: all clean

all: $(OBJ)

loader.o: loader.cc
	$(CC) -std=c++11 -c loader.cc

loader_demo: loader.o app_loader.cc
	$(CC) -o app_loader app_loader.cc loader.o -lbfd

clean:
	rm -f $(OBJ) *.o