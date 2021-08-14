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

# 更新feeds文件
# sed -i 's@#src-git helloworld@src-git helloworld@g' feeds.conf.default #启用helloworld
cat feeds.conf.default

# 添加第三方软件包
git clone https://github.com/281677160/openwrt-package.git -b 18.06 package/dbone-packages

# 更新并安装源
./scripts/feeds clean
./scripts/feeds update -a && ./scripts/feeds install -a

# 去除源码注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加插件源码
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
#git clone https://github.com/john-shine/luci-theme-darkmatter.git package/lean/luci-theme-darkmatter
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom
#git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy
