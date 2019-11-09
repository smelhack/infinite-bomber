#!/bin/sh

echo 'Обновление библиотеки fatih/color'
go get -u -d github.com/fatih/color
echo 'Обновление библиотеки yaml.v2'
go get -u -d gopkg.in/yaml.v2
echo 'Обновление библиотеки bine'
go get -u -d github.com/cretz/bine
echo 'Обновление библиотеки fasthttp'
go get -u -d github.com/valyala/fasthttp
echo 'Обновление библиотеки go-libtor'
go get -u -d github.com/ipsn/go-libtor
