Other Builds
============

apr
---
./configure --prefix=$HOME --with-installbuilddir=$HOME/lib/apr-1/build

apr-utils
---------
./configure --prefix=$HOME --with-apr=$HOME

vim
---
./configure --prefix=$HOME \
            --with-features=big \
            --enable-pythoninterp \
            --enable-rubyinterp \
            --enable-multibyte

Building VIM this way will use compile with the Python that ships with OS X. If
you built your own Python, you'll need to specify --with-python-config-dir to 
point to your Python config (eg: $HOME/lib/python2.7/config/).

On OS X, that's not enough. See: 
http://bugs.python.org/issue3588
http://stackoverflow.com/questions/6490513/vim-failing-to-compile-with-python-on-os-x

Building VIM with the following config dir:
--with-python-config-dir=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config

cmake
-----
cmake -DCMAKE_INSTALL_PREFIX=/Users/artem/mysql
