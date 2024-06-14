CC := gcc

SRC := kite.c

BIN := kite

PREFIX := /usr/local
BINDIR := $(PREFIX)/bin

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
    # macOS
    PREFIX := /usr/local
    BINDIR := $(PREFIX)/bin
endif
ifeq ($(OS),Windows_NT)
    # Windows
    PREFIX := C:/Program Files
    BINDIR := $(PREFIX)/kite
endif

.PHONY: all
all: $(BIN)

# Compile
$(BIN): $(SRC)
	$(CC) $(SRC) -o $(BIN) -Wall -Wextra -pedantic -Wno-implicit-function-declaration -Wno-unused-parameter -std=c99

.PHONY: install
install: $(BIN)
ifeq ($(OS),Windows_NT)
	@echo "Installing $(BIN) to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@cp $(BIN).exe $(BINDIR)
	@echo "$(BIN) installed successfully."
else
	@echo "Installing $(BIN) to $(BINDIR)..."
	@install -d $(BINDIR)
	@install $(BIN) $(BINDIR)
	@echo "$(BIN) installed successfully."
endif

.PHONY: uninstall
uninstall:
ifeq ($(OS),Windows_NT)
	@echo "Uninstalling $(BIN) from $(BINDIR)..."
	@rm -f $(BINDIR)/$(BIN).exe
	@echo "$(BIN) uninstalled successfully."
else
	@echo "Uninstalling $(BIN) from $(BINDIR)..."
	@rm -f $(BINDIR)/$(BIN)
	@echo "$(BIN) uninstalled successfully."
endif

.PHONY: clean
clean:
	@echo "Cleaning up..."
	@rm -f $(BIN)
	@rm -f $(BIN).exe
	@echo "Cleaned."

.PHONY: help
help:
	@echo "Makefile for building, installing, and uninstalling $(BIN)"
	@echo ""
	@echo "Usage:"
	@echo "  make          - Build the binary"
	@echo "  make install  - Install the binary globally"
	@echo "  make uninstall- Uninstall the binary"
	@echo "  make clean    - Clean the build"
	@echo "  make help     - Display this help message"

