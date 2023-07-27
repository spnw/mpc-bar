TARGET = mpc-bar
OBJCFLAGS = -O2 -fobjc-arc -Wall
LDFLAGS = -lmpdclient -framework Cocoa
BINDIR = /usr/local/bin

$(TARGET): mpc-bar.m
	$(CC) $(OBJCFLAGS) $< $(LDFLAGS) -o $@

install: $(TARGET)
	install -d $(BINDIR)
	install -m755 $< $(BINDIR)/$<

clean:
	rm -f $(TARGET)
