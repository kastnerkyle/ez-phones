#!/bin/bash
#sudo apt-get install bison libtool autoconf
#git submodule add git@github.com:cmusphinx/pocketsphinx pocketsphinx
#git submodule add git@github.com:cmusphinx/sphinxbase sphinxbase
#http://cmusphinx.sourceforge.net/wiki/phonemerecognition
#sox in.wav -b 16 out.wav rate 16k
git submodule update --init --recursive

pushd .
cd sphinxbase
./autogen.sh
./configure --without-swig-python
make
popd

pushd .
cd pocketsphinx
./autogen.sh
./configure --without-swig-python
make
popd
