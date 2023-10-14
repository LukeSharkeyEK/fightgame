CC = gcc
CFLAGS = -O3
LDLIBS = -lm

SRC = src
OBJ = obj
BIN = bin
MKDIR = mkdir -p
SRCs := $(wildcard $(SRC)/*.c)
OBJs := $(subst $(SRC), $(OBJ), $(SRCs:.c=.o))

all: $(BIN)

$(BIN): $(OBJs)
	$(CC) $(CFLAGS) $(OBJs) -o $@ $(LDLIBS)

$(OBJs): $(SRCs)
	$(MKDIR) $(dir $@)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $(subst $(OBJ), $(SRC), $(@:.o=.c)) -o $@

clean:
	$(RM) -R $(BIN)
	$(RM) -R $(OBJ)
