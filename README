# README for this repository

The repository is the modification of the GNU GDB-11.2: Source code: https://ftp.gnu.org/gnu/gdb/gdb-11.2.tar.gz

The bug of GDB hang on Mac OS X has been reported a long time ago and it still persists in the latest GDB 11.2 release. There is a solution from domq for GDB 10.2: https://github.com/domq/homebrew-gdb/blob/master/Formula/gdb.rb

In this repository, I simply moved part of the change from the domq to GDB 11.2 and seems like the GDB 11.2 can work most of the time. I have tested it under OS X 12.2 Intel-based macbook pro. It is still possible that the gdb will hang waiting of the new forked process due to the  

	gdb/nat/fork-inferior.c: 488 target_wait()

# How to build GDB from source
- Go to the source directory and run
  
```
mkdir build
cd    build
../configure --prefix=/usr
make
```

- GDB should now build in ```build/gdb```, change directory to folder ```gdb``` and then codesign the gdb executable
```
cd gdb
codesign --entitlements ../../darwin_gdb_xml/gdb-entitlement.xml -fs gdb-cert ./gdb
```

- You should now be able to run the ```build/gdb/gdb``` and debug your code.


# Original README for GNU GDB
The following is the README from the original GNU GDB Repository

		   README for GNU development tools

This directory contains various GNU compilers, assemblers, linkers, 
debuggers, etc., plus their support routines, definitions, and documentation.

If you are receiving this as part of a GDB release, see the file gdb/README.
If with a binutils release, see binutils/README;  if with a libg++ release,
see libg++/README, etc.  That'll give you info about this
package -- supported targets, how to use it, how to report bugs, etc.

It is now possible to automatically configure and build a variety of
tools with one command.  To build all of the tools contained herein,
run the ``configure'' script here, e.g.:

	./configure 
	make

To install them (by default in /usr/local/bin, /usr/local/lib, etc),
then do:
	make install

(If the configure script can't determine your type of computer, give it
the name as an argument, for instance ``./configure sun4''.  You can
use the script ``config.sub'' to test whether a name is recognized; if
it is, config.sub translates it to a triplet specifying CPU, vendor,
and OS.)

If you have more than one compiler on your system, it is often best to
explicitly set CC in the environment before running configure, and to
also set CC when running make.  For example (assuming sh/bash/ksh):

	CC=gcc ./configure
	make

A similar example using csh:

	setenv CC gcc
	./configure
	make

Much of the code and documentation enclosed is copyright by
the Free Software Foundation, Inc.  See the file COPYING or
COPYING.LIB in the various directories, for a description of the
GNU General Public License terms under which you can copy the files.

REPORTING BUGS: Again, see gdb/README, binutils/README, etc., for info
on where and how to report problems.
