#!/usr/bin/env bash
set -e
TAG="crimson-anchor-clever-garden"
LIB="royal-film.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/talialocrest/cyclicclocklab/releases/download/${TAG}/${LIB}"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
