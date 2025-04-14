TARGET = mpc-bar
CFLAGS = -O2 -fobjc-arc -Wall
LDFLAGS = -lmpdclient -framework Cocoa
OUTPUT_OPTION=-MMD -MP -o $@
BINDIR = /usr/local/bin

OBJ=mpc-bar.o ini.o
DEP=$(OBJ:.o=.d)

$(TARGET): $(OBJ)
	$(CC) $^ $(LDFLAGS) -o $@

install: $(TARGET)
	install -d $(BINDIR)
	install -m755 $< $(BINDIR)/$<

-include $(DEP)

clean:
	rm -f $(TARGET) $(OBJ) $(DEP)
