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

To prevent excessive resource usage, it's a good idea consolidate
updates at reasonable intervals by putting them in a queue. In the
future a simple queue system will be included in this distribution.

Installation
------------

To install gitsrv, run make install (as root if necessary):

	$ make install

Documentation
-------------

Further documentation can be found in the manpages included with
the distribution.
