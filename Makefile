# Variables
CXX = g++
CXXFLAGS = -std=c++17 -I/opt/homebrew/Cellar/sfml/2.6.2/include
LDFLAGS = -L/opt/homebrew/Cellar/sfml/2.6.2/lib
LIBS = -lsfml-graphics -lsfml-window -lsfml-system
SRC = src/main.cpp
OUT = bin/SFMLGame

# Default target to build the game
all: $(OUT)

$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(SRC) -o $(OUT) $(LIBS)

# Clean target to remove the generated files
clean:
	rm -f $(OUT)

run: $(OUT)
	./$(OUT)

# Default target to build the game
all: $(OUT)

$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(SRC) -o $(OUT) $(LIBS)

# Clean target to remove the generated files
clean:
	rm -f $(OUT)

