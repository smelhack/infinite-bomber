#!/bin/sh

export CFLAGS='-w -O2'
export CGO_CFLAGS="$CFLAGS"
export CGO_CPPFLAGS="$CFLAGS"
export CGO_CXXFLAGS="$CFLAGS"
export CGO_FFLAGS="$CFLAGS"
export CGO_LDFLAGS="$CFLAGS"

echo 'Компиляция windows-x86 бинарника без Tor...'
mkdir -p ./builds/windows/Infinite-Bomber-x86-without-tor
GOOS=windows GOARCH=386 go build -tags withoutTor -o ./builds/windows/Infinite-Bomber-x86-without-tor/infinite-bomber.exe -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция windows-x64 бинарника без Tor...'
mkdir -p ./builds/windows/Infinite-Bomber-x64-without-tor
GOOS=windows GOARCH=amd64 go build -tags withoutTor -o ./builds/windows/Infinite-Bomber-x64-without-tor/infinite-bomber.exe -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Готово!'
