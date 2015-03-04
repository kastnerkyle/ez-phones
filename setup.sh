#!/bin/bash
#git submodule add git@github.com:cmusphinx/pocketsphinx pocketsphinx
#git submodule add git@github.com:cmusphinx/sphinxbase sphinxbase
git submodule update --init --recursive

pushd .
cd sphinxbase
./autogen.sh
./configure --without-swig-pytho
make
popd

pushd .
cd pocketsphinx
./autogen.sh
./configure --without-swig-python
make
popd
