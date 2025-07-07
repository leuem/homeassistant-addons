#!/bin/sh

CFG_PATH="/config/addons_config/$HOSTNAME"

# Создаём папку для конфига (если нет)
mkdir -p "$CFG_PATH"
rm -rf /kavita/config
ln -s "$CFG_PATH" /kavita/config

# Создаём папки для контента (в /share)
mkdir -p /share/kavita/books
mkdir -p /share/kavita/manga
mkdir -p /share/kavita/comics

[ -L /books ] || [ -d /books ] || ln -s /share/kavita/books /books
[ -L /manga ] || [ -d /manga ] || ln -s /share/kavita/manga /manga
[ -L /comics ] || [ -d /comics ] || ln -s /share/kavita/comics /comics

exec /entrypoint.sh
