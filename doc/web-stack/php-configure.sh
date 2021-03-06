CC=gcc \
./configure \
--prefix=$HOME/php \
--enable-mbstring \
--enable-shared=all \
--with-iconv-dir=/usr \
--enable-intl \
--enable-pcntl \
--enable-soap \
--enable-bcmath \
--with-zlib \
--with-bz2 \
--with-curl \
--with-gd \
--with-openssl=/usr \
--with-libedit \
--with-pdo-mysql=mysqlnd \
--with-apxs2=$HOME/apache/bin/apxs \
--with-config-file-path=$HOME/etc \
--with-freetype-dir=$HOME \
--with-jpeg-dir=$HOME \
--with-png-dir=$HOME \
--with-mcrypt=$HOME \
"$@"
