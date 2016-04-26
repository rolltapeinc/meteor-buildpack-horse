#!/bin/sh

VERSION=1.9.7
# PHANTOM_URL="https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$VERSION-linux-x86_64.tar.bz2"
PHANTOM_TARBALL="$BUILDPACK_DIR/phantomjs-$VERSION-linux-x86_64.tar.bz2"

echo "-----> Installing phantomjs."
# Just extract the one file (the binary) and not all the examples/readme's/etc.
FILE="phantomjs-$VERSION-linux-x86_64/bin/phantomjs"
tar -jxf $PHANTOM_TARBALL -C $COMPILE_DIR $FILE --strip 1
