#!/bin/sh

mkdir -p /config/kavita

mkdir -p /share/kavita/books
mkdir -p /share/kavita/manga
mkdir -p /share/kavita/comics

[ -L /books ] || [ -d /books ] || ln -s /share/kavita/books /books
[ -L /manga ] || [ -d /manga ] || ln -s /share/kavita/manga /manga
[ -L /comics ] || [ -d /comics ] || ln -s /share/kavita/comics /comics

rm -rf /kavita/config && ln -s /config/kavita /kavita/config

exec /entrypoint.sh
