# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

# install destinations
PREFIX   ?= /usr/local
XSESSION ?= /usr/share/xsessions

.PHONY: all install

all:
	@echo "Run sudo make install to install to /usr/local/bin and /usr/share/xsessions"
	@echo "Set PREFIX to change /usr/local destination"
	@echo "Set XSESSION to change /usr/share/xsessions destination"

install:
	install -D userxinitrc $(DESTDIR)$(PREFIX)/bin/userxinitrc
	install -D -m 664 xinitrc.desktop $(DESTDIR)$(XSESSION)/xinitrc.desktop

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/userxinitrc
	rm $(DESTDIR)$(XSESSION)/xinitrc.desktop
