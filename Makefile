PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
MANDIR := $(PREFIX)/share/man

NAME := lsbat

install:
	install -Dm 755 $(NAME) $(DESTDIR)$(BINDIR)/$(NAME)
	install -Dm 644 $(NAME).1 $(DESTDIR)$(MANDIR)/man1/$(NAME).1

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(NAME)
	rm -f $(DESTDIR)$(MANDIR)/man1/$(NAME).1

.PHONY: install uninstall
