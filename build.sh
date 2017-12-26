#!/bin/sh

rm -f mqtt2modbus

gcc -Wall -pedantic -std=gnu11 -o mqtt2modbus -g -O0 `pkg-config --cflags --libs libmodbus` -lmosquitto main.c
