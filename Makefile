
CC = gcc

CFLAGS += -Wall -pedantic -O2 -g -D_DEFAULT_SOURCE

SOURCE = *.c Makefile
PROGRAM = sherlock

all:	$(PROGRAM)

$(PROGRAM):	sherlock.c

tarfile:
	tar cf $(PROGRAM).tar $(SOURCE)
	gzip $(PROGRAM).tar

zipfile:
	zip -k $(PROGRAM).zip $(SOURCE)

clean:
	rm -rf *.o sherlock.dSYM core $(PROGRAM)
