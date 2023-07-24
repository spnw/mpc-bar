TARGET = mpc-bar
OBJCFLAGS = -O2 -fobjc-arc -Wall
LDFLAGS = -lmpdclient -framework Cocoa

$(TARGET): mpc-bar.m
	$(CC) $(OBJCFLAGS) $< $(LDFLAGS) -o $@

clean:
	rm -f $(TARGET)
