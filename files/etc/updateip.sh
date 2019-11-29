#!/bin/sh

NAME=shadowsocks

for server in $(uci -n export $NAME | awk '$2=/servers/{print substr($3,2,9)}'); do
    host=$(uci get $NAME.$server.host 2>/dev/null)
    if [ -n "$host" ]; then
        for ip in $(resolveip $host 2>/dev/null); do
            uci set $NAME.$server.server="$ip"
            break
        done
    fi
done

uci commit $NAME

/etc/init.d/$NAME restart
