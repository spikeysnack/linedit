#! /usr/bin/env make

# install linedit
SHELL=/bin/sh

ifneq (,$(wildcard ~/bin))
prefix = ~
else
prefix = /usr/local	
endif


help:	README.md
	@view README.md
	@./linedit -i
	@echo "To Install:    make install"


test:	linedit
	linedit words.txt 4

install:	linedit
	install  -m 755 linedit $(prefix)/bin
	install  -m 755 colorline $(prefix)/bin
	@linedit -h


uninstall:	
	rm -f $(prefix)/bin/linedit
	rm -f $(prefix)/bin/colorline
	@echo "linedit uninstalled"


update:	uninstall install
	@echo "linedit updated"
	@linedit -v

dist:	clean
	rm -f *.tgz 
	cd .. ; tar czvf linedit.tgz --exclude linedit/.git linedit/
	cd .. ; mv linedit.tgz linedit/


clean:
	rm -f *~ *.le 

.PHONY:	help test install uninstall update dist clean

