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

cmake
-----
cmake -DCMAKE_INSTALL_PREFIX=/Users/artem/mysql
