TARGET = mpc-bar
CFLAGS = -O2 -fobjc-arc -Wall
LDFLAGS = -lmpdclient -framework Cocoa
BINDIR = /usr/local/bin

$(TARGET): mpc-bar.o ini.o
	$(CC) $^ $(LDFLAGS) -o $@

mpc-bar.o ini.o: ini.h

install: $(TARGET)
	install -d $(BINDIR)
	install -m755 $< $(BINDIR)/$<

clean:
	rm -f $(TARGET) mpc-bar.o ini.o
