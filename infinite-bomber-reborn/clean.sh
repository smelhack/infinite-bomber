#!/bin/sh

echo "Очиситка кэша компилятора..."
go clean -cache -testcache -modcache
ccache -C
echo 'Готово!'
