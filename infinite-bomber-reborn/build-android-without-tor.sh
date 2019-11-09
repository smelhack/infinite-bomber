#!/bin/sh

export CGO_ENABLED=1
export CFLAGS='-w -O2'
export CGO_CFLAGS="$CFLAGS"
export CGO_CPPFLAGS="$CFLAGS"
export CGO_CXXFLAGS="$CFLAGS"
export CGO_FFLAGS="$CFLAGS"
export CGO_LDFLAGS="$CFLAGS"

export llvm_bin=$ANDROID_HOME/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/bin/

echo 'Компиляция android-arm бинарника без Tor...'
export CC=$llvm_bin/armv7a-linux-androideabi16-clang
export CXX=$llvm_bin/armv7a-linux-androideabi16-clang++

mkdir -p ./builds/android/Infinite-Bomber-arm-without-tor
GOOS=android GOARCH=arm go build -tags withoutTor -o ./builds/android/Infinite-Bomber-arm-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция android-arm64 бинарника без Tor...'
export CC=$llvm_bin/aarch64-linux-android21-clang
export CXX=$llvm_bin/aarch64-linux-android21-clang++

mkdir -p ./builds/android/Infinite-Bomber-arm64-without-tor
GOOS=android GOARCH=arm64 go build -tags withoutTor -o ./builds/android/Infinite-Bomber-arm64-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция android-x86 бинарника без Tor...'
export CC=$llvm_bin/i686-linux-android16-clang
export CXX=$llvm_bin/i686-linux-android16-clang++

mkdir -p ./builds/android/Infinite-Bomber-x86-without-tor
GOOS=android GOARCH=386 go build -tags withoutTor -o ./builds/android/Infinite-Bomber-x86-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Компиляция android-x64 бинарника без Tor...'
export CC=$llvm_bin/x86_64-linux-android21-clang
export CXX=$llvm_bin/x86_64-linux-android21-clang++

mkdir -p ./builds/android/Infinite-Bomber-x64-without-tor
GOOS=android GOARCH=amd64 go build -tags withoutTor -o ./builds/android/Infinite-Bomber-x64-without-tor/infinite-bomber -gcflags="all=-trimpath=$HOME" -asmflags="all=-trimpath=$HOME" -ldflags="-s -w"

echo 'Готово!'
