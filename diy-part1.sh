#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

cd package/lean
svn checkout https://github.com/vernesong/OpenClash/branches/dev/luci-app-openclash
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git
cd ../..

sed -i '/^exit 0/i \/data\/shell\/runonce.sh' package/base-files/files/etc/rc.local
