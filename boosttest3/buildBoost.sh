#!/bin/bash

mkdir -p buildBoost
cd buildBoost
wget http://sourceforge.net/projects/boost/files/boost/1.56.0/boost_1_56_0.tar.gz
tar -xf boost_1_56_0.tar.gz
cd boost_1_56_0
./bootstrap.sh
cat ../../project-config.jam.append >> ./project-config.jam
./b2 -q -j8 link=static toolset=clang-emscripten variant=release threading=single --with-filesystem --with-system --with-regex stage
