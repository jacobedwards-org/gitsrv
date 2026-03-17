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

Installation
------------

To install gitsrv, run make install (as root if necessary):

	$ make install

Documentation
-------------

Further documentation can be found in the manpages included with
the distribution.
