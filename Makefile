# ---------------------------------------------------
# Copyright (c) 2013 Pablo Caro. All Rights Reserved.
# Pablo Caro <me@pcaro.es> - http://pcaro.es/
# Makefile
# ---------------------------------------------------

PROJECT=Hermit
PACKAGE=otf-hermit
INSTALL_FOLDER=/usr/share/fonts/opentype/$(PROJECT)

all: pack

install:
	mkdir -p $(INSTALL_FOLDER)
	cp $(PROJECT)*.otf $(INSTALL_FOLDER)/
	fc-cache -frv

uninstall:
	rm -rf $(INSTALL_FOLDER)

pack:
	tar -czf $(PACKAGE)-${VERSION}.tar.gz $(PROJECT)*.otf LICENSE
	@md5sum $(PACKAGE)-${VERSION}.tar.gz

clean:
	rm -f *.tar.gz

.PHONY: install uninstall pack clean
