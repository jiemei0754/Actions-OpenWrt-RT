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

# 去除源码注释
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加插件源码
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git onliner https://github.com/rufengsuixing/luci-app-onliner' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git poweroff https://github.com/esirplayground/luci-app-poweroff' >>feeds.conf.default
#echo 'src-git theme-argon https://github.com/jerrykuku/luci-theme-argon' >>feeds.conf.default
#echo 'src-git theme-darkmatter https://github.com/jianping0754/luci-theme-darkmatter' >>feeds.conf.default
#echo 'src-git theme-edge https://github.com/kiddin9/luci-theme-edge' >>feeds.conf.default
#echo 'src-git theme-infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom' >>feeds.conf.default
#echo 'src-git theme-rosy https://github.com/rosywrt/luci-theme-rosy' >>feeds.conf.default
