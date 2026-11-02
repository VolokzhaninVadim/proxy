#!/bin/sh
set -e

# Исправляем права на директорию данных (скрипт запускается от root)
chown -R tor:tor /var/lib/tor

# Переключаемся на пользователя tor и запускаем Tor
exec gosu tor /usr/bin/tor -f /etc/tor/torrc
