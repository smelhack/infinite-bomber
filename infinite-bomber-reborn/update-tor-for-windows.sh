#!/bin/sh

echo 'Копирование Tor в windows/Infinite-Bomber-x64/tor...'
rm -r ./tor-files/Data/data*
mkdir -p ./builds/windows/Infinite-Bomber-x64/tor
cp -r ./tor-files/* ./builds/windows/Infinite-Bomber-x64/tor

echo 'Копирование Tor в windows/Infinite-Bomber-x86...'
rm -r ./tor-files/Data/data*
mkdir -p ./builds/windows/Infinite-Bomber-x86/tor
cp -r ./tor-files/* ./builds/windows/Infinite-Bomber-x86/tor
