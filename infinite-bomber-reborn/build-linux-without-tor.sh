#!/bin/sh

export CFLAGS='-w -O2'
export CGO_CFLAGS="$CFLAGS"
export CGO_CPPFLAGS="$CFLAGS"
export CGO_CXXFLAGS="$CFLAGS"
export CGO_FFLAGS="$CFLAGS"
export CGO_LDFLAGS="$CFLAGS"

echo 'Компиляция linux-x86 бинарника без Tor...'
mkdir -p ./builds/linux/Infinite-Bomber-x86-without-tor
GOOS=linux GOARCH=386 go build -tags withoutTor -o ./builds/linux/Infinite-Bomber-x86-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция linux-x64 бинарника без Tor...'
mkdir -p ./builds/linux/Infinite-Bomber-x64-without-tor
GOOS=linux GOARCH=amd64 go build -tags withoutTor -o ./builds/linux/Infinite-Bomber-x64-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция linux-arm бинарника без Tor...'
mkdir -p ./builds/linux/Infinite-Bomber-arm-without-tor
CC=arm-linux-gnueabi-gcc CXX=arm-linux-gnueabi-g++ GOOS=linux GOARCH=arm go build -tags withoutTor -o ./builds/linux/Infinite-Bomber-arm-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция linux-arm64 бинарника без Tor...'
mkdir -p ./builds/linux/Infinite-Bomber-arm64-without-tor
CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ GOOS=linux GOARCH=arm64 go build -tags withoutTor -o ./builds/linux/Infinite-Bomber-arm64-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Готово!'
