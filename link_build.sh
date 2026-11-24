#!/usr/bin/env bash
set -e
TAG="bright-comet-crimson-cedar"
LIB="null-leaflet.a"
URL="https://github.com/sollarisong/rhodiumthemehub/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
