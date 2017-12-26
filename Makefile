TARGET = mqtt2modbus
CC = gcc
CFLAGS = -Wall -pedantic -std=gnu11 -O2 `pkg-config --cflags libmodbus`
LIBS = -lmosquitto `pkg-config --libs libmodbus`

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
