prefix = /usr/local
manprefix = ${prefix}/man

install:
	install -o root -g bin -m 0755 gitman ${prefix}/bin/gitman
	cp gitman.1 ${manprefix}/man1/gitman.1
	makewhatis -d ${manprefix} man1/gitman.1

uninstall:
	makewhatis -u ${manprefix} man1/gitman.1
	rm -f ${prefix}/bin/gitman ${manprefix}/man1/gitman.1

.PHONY: install uninstall
