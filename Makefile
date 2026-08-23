PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
NAME := lsbat

install:
	install -Dm 755 $(NAME) $(DESTDIR)$(BINDIR)/$(NAME)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(NAME)

.PHONY: install uninstall
