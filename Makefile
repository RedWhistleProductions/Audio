
# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -shared -fPIC

# Output file
TARGET = Audio.so

# Source files
SRCS = ./src/main.cpp ./src/Data_Source.cpp ./src/Plugin.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Link
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean
clean:
	rm -f $(OBJS) $(TARGET)
