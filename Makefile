CFLAGS = -g -Wall
LDLIBS = -lcrypt
BUILD_DIR=dht

dht-example: dht-example.o dht.o

all: dht-example

install: $(BUILD_DIR)/lib/libdht.a
	cp -rv $(BUILD_DIR)/lib --target-directory=$(PREFIX)
	cp dht.h --target-directory=$(PREFIX)/include

clean:
	-rm -f dht-example dht-example.o dht-example.id dht.o *~ core
