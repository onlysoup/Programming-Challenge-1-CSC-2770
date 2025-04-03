CC = gcc
CFLAGS = -Wall -Wextra -pedantic -pthread

SRC = ThreadedMatrixMultiply.c
OBJ = $(SRC:.c=.o)
TARGET = ThreadedMatrixMultiply

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
