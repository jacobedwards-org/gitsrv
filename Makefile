SCRIPTS =\
	gitdist\
	github-mirror\
	gitsrv\

MANUALS =\
	gitdist.1\
	github-mirror.1\
	gitsrv.1\
	gitsrv.5\

PREFIX = /usr/local/
MANPREFIX = ${PREFIX}/man

install:
.for s in ${SCRIPTS}
	install -o root -g bin -m 755 $s ${PREFIX}/bin/$s
.endfor
.for m in ${MANUALS}
	install -o root -g bin -m 644 $m ${MANPREFIX}/man${m:E}/$m
.endfor

uninstall:
.for s in ${SCRIPTS}
	rm -f /usr/local/bin/$s
.endfor
.for m in ${MANUALS}
	rm -f ${MANPREFIX}/man${m:E}/$m
.endfor

.PHONY: install uninstall
