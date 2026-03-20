gitsrv
======

The gitsrv project provides a single interface to perform a variety
of operations related to hosting git repositories, and is suitable
for use with a git post-update hook. The major functions are as
follows:

- Stagit/stagit-index page generation
- Archive creation for tags
- Manpage exporting
- GitHub mirroring

Each of these operations may be enabled or disabled as desired, and
most have a utility to perform the function independently as needed.

Usage
-----

To automatically call gitsrv, the simplest method is to create a
post-update hook in a central location, then use it as the git hooks
directory globally:

	$ mkdir ~/hooks
	$ echo '#!/bin/sh
	gitsrv' > ~/hooks/post-update
	$ chmod 755 ~/hooks/post-update
	$ git config --global core.hooksPath '~/hooks'

Once that's done, all repositories owned by the user will use the
same hooks. (Reference githooks(5) for more information on git
hooks.)

To throttle updates and conserve resources, consider using
[conque](https://jacobedwards.org/projects/conque) or some other
consolidating/deduplicating job queue.

Installation
------------

To install gitsrv, run make install (as root if necessary):

	$ make install

Documentation
-------------

Further documentation can be found in the manpages included with
the distribution.

gitman
------

The gitman utility was specifically designed for hosting manpages
on a website using OpenBSD's man.cgi, but it would be easy to use
for other applications as well.

It should work on Linux too, although using `makewhatis(8)` might
not make sense in that environment since it appears to be a central
database.

To configure `man.cgi` on OpenBSD, download the source tree to
`/usr/src` and go to `/usr/src/usr.bin/mandoc/`. Then follow the
instructions in the Makefile:

        # To configure, run:    cp cgi.h.example cgi.h; vi cgi.h
        # To build, run:        make man.cgi
        # To install, run:      sudo make installcgi
        # After that, read:     man man.cgi.8
