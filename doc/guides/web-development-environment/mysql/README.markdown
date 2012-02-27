Compiling MySQL
===============

You'll need CMake installed. CMake first (see `mysql_cmake` file), then `make`, 
then `make install`. Then run the mysql installer as shown in `mysql_install`.

OS X Lion Issue
---------------

There's a bug where a 64-bit flag is missing. Instead of `make`, you'll need to:

    ./BUILD/compile-pentium64-debug-max --prefix=/usr/local/mysql5

