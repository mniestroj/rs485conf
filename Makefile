PROG = rs485conf
PREFIX ?= /usr/local

all: $(PROG)

$(PROG): main.o
	$(CC) $(LDFLAGS) main.o -o $@

install:
	echo $(PREFIX)
	install -m 0755 $(PROG) $(PREFIX)/sbin/$(PROG)

clean:
	rm -f *.o $(PROG)
