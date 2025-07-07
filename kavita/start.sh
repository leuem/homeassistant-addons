#!/bin/sh

UUID="8d94cfa4"
SLUG="kavita"

CFG_PATH="/config/addons_config/${UUID}_${SLUG}"

mkdir -p "$CFG_PATH"
rm -rf /kavita/config
ln -s "$CFG_PATH" /kavita/config

mkdir -p /share/kavita/books
mkdir -p /share/kavita/manga
mkdir -p /share/kavita/comics

[ -L /books ] || [ -d /books ] || ln -s /share/kavita/books /books
[ -L /manga ] || [ -d /manga ] || ln -s /share/kavita/manga /manga
[ -L /comics ] || [ -d /comics ] || ln -s /share/kavita/comics /comics

exec /entrypoint.sh
