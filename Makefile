PLUGIN = incdec
DOCDIR = "/usr/share/doc/$(PLUGIN)"

all:	incdec.so README.md

incdec.o:	incdec-plugin.c
	gcc -Wall -c incdec-plugin.c -o incdec.o -fPIC `pkg-config --cflags geany` -DPLUGIN="\"$(PLUGIN)\"" -DDOCDIR="\"$(DOCDIR)\""

incdec.so:	incdec.o
	gcc -Wall incdec.o -o incdec.so --shared

install:
	mkdir -p -m755 ~/.config/geany/plugins/"$(PLUGIN)"
	install -m755 incdec.so ~/.config/geany/plugins/
	install -m644 README.md ~/.config/geany/plugins/"$(PLUGIN)"/README

uninstall:
	rm -f ~/.config/geany/plugins/incdec.so
	rm -f ~/.config/geany/plugins/"$(PLUGIN)"/README

clean:
	rm -f incdec.o incdec.so
