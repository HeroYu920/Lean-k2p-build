#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/aa65535/openwrt-chinadns.git package/openwrt-chinadns
git clone https://github.com/shadowsocks/openwrt-shadowsocks.git package/openwrt-shadowsocks
git clone https://github.com/aa65535/openwrt-simple-obfs.git package/openwrt-simple-obfs.git
git clone https://github.com/Iy204/openwrt-feeds.git package/libcares
git clone https://github.com/shadowsocks/luci-app-shadowsocks.git package/luci-app/shadowsocks
