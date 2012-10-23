Need to recompile new versions of:

  - libtool
  - apr
  - apr-util

Also, OS X may use the `llvm` compiler instead of `gcc`. May need to configure 
this way instead:

    CC=gcc CPP="gcc -E" ./configure --prefix=$HOME/apache --enable-mods-shared=all
