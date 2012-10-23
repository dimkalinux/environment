Compiling PHP
=============

Look at the configure command for dependencies. Configure will fail if these
dependencies are not met. No special instructions other than that, just 
`configure`, `make`, then `make install`.

OS X 10.6 and 10.7
------------------

If you encounter an error `___gxx_personality_v0` during `make`:

  * `make clean`
  * Run the same configure command again.
  * Edit `Makefile`. Add `-lstdc++` to `EXTRA_LIBS`
  * `make`

This has to do with the `--enable-intl` flag. If the instructions above don't
work, the following URLs contain more discussion:

  * http://serverfault.com/questions/133785
  * https://bugs.php.net/bug.php?id=48795
  * http://wiki.apache.org/couchdb/Installing_on_OSX

