CXX = g++
CXXFLAGS = -Wall -Werror -std=c++0x -pedantic
OBJ = rshell.o

all: $(OBJ)
	@mkdir -p bin
	$(CXX) $(OBJ) -o bin/rshell
	-@rm *.o 2>/dev/null || true

rshell: rshell.o
	$(CXX) rshell.o -o bin/rshell

rshell.o: src/rshell.cpp
	$(CXX) $(CXXFLAGS) -c src/rshell.cpp

clean:
	rm -r bin

