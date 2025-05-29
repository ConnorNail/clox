# Name of the final executable
TARGET = clox

# Source files
SRCS = $(wildcard *.c)

# Object files (replace .c with .o)
OBJS = $(SRCS:.c=.o)

# Compiler and flags
CC = gcc
CFLAGS = -std=c99 -Wall -Wextra

# Default target
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)

