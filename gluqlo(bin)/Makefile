CC=g++
FONTDIR=$(DESTDIR)/usr/share/gluqlo
CFLAGS=-Wall -o gluqlo gluqlo.c `sdl-config --libs --cflags` -DFONT='"$(FONTDIR)/gluqlo.ttf"'
LDFLAGS=-lX11 -lSDL_ttf -lSDL_gfx

all: gluqlo

gluqlo: gluqlo.c
	$(CC) $(CFLAGS) $(LDFLAGS)

install:
	strip gluqlo
	install -o root -m 0755 -D gluqlo $(DESTDIR)/usr/bin/gluqlo
	install -o root -m 0644 -D gluqlo.ttf $(FONTDIR)/gluqlo.ttf
uninstall:
	rm -f $(DESTDIR)/usr/bin/gluqlo $(FONTDIR)/gluqlo.ttf

clean:
	rm -f gluqlo
