#!/bin/sh

echo 'Начало выполнения скриптов...'

./update-libs.sh

./build-android-without-tor.sh
./build-android.sh

./build-linux-without-tor.sh
./build-linux.sh

./build-windows-without-tor.sh
./build-windows.sh

./cp-services-yaml.sh

echo 'Работа заверщена!'
