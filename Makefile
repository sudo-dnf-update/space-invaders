CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -g -fsanitize=address -Iinclude $(shell pkg-config --cflags sdl3 sdl3-ttf)
LDFLAGS = $(shell pkg-config --libs sdl3 sdl3-ttf) -fsanitize=address

SRC = src/main.c
TARGET = space_invaders

all:
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
