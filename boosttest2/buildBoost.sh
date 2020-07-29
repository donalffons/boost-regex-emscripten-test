#!/bin/bash

mkdir -p buildBoost
cd buildBoost
wget https://dl.bintray.com/boostorg/release/1.73.0/source/boost_1_73_0.tar.gz
tar -xf boost_1_73_0.tar.gz
cd boost_1_73_0
./bootstrap.sh --without-icu
emconfigure ./b2 toolset=emscripten --disable-icu threading=single variant=release regex

cd bin.v2/libs/regex/build/emscripten-1.39.20/release/visibility-hidden
emar q libboost_regex.a cpp_regex_traits.bc cregex.bc c_regex_traits.bc fileiter.bc icu.bc instances.bc posix_api.bc regex.bc regex_debug.bc regex_raw_buffer.bc regex_traits_defaults.bc static_mutex.bc usinstances.bc w32_regex_traits.bc wc_regex_traits.bc wide_posix_api.bc winstances.bc 
