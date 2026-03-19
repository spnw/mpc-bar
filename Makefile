TARGET = mpc-bar
CFLAGS = -I/usr/local/opt/lua@5.4/include -O2 -fobjc-arc -Wall
LDFLAGS = -L/usr/local/opt/lua@5.4/lib -lmpdclient -llua5.4 -framework Cocoa
OUTPUT_OPTION=-MMD -MP -o $@
BINDIR = /usr/local/bin

OBJ = mpc-bar.o ini.o
MPC_SRC = $(wildcard mpc/*.c)
OBJ += $(MPC_SRC:.c=.o)
DEP = $(OBJ:.o=.d)

$(TARGET): $(OBJ)
	$(CC) $^ $(LDFLAGS) -o $@

install: $(TARGET)
	install -d $(BINDIR)
	install -m755 $< $(BINDIR)/$<

-include $(DEP)

clean:
	rm -f $(TARGET) $(OBJ) $(DEP)
