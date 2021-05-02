#!/bin/bash
cd /home/runner/immortalwrt

# Enter your commands here, e.g.
# echo "Start build!"
make defconfig

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

# 更改默认主题为Argon
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom/g' package/feeds/luci/luci/Makefile

# 复杂的AdGuardHome的openwrt的luci界面
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/mine/luci-app-adguardhome

# luci-app-bypass
# git clone https://github.com/garypang13/luci-app-bypass.git package/mine/luci-app-bypass
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman.git package/mine/luci-app-diskman
# mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# luci-app-dnsfilter
# git clone https://github.com/garypang13/luci-app-dnsfilter.git package/mine/luci-app-dnsfilter

# KPR
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/mine/luci-app-koolproxyR

# 锐捷
# git clone https://github.com/BoringCat/luci-app-mentohust.git package/mine/luci-app-mentohust

# Server酱
# git clone https://github.com/tty228/luci-app-serverchan.git package/mine/luci-app-serverchan

# luci-app-vssr
# git clone https://github.com/Leo-Jo-My/luci-app-vssr.git package/mine/luci-app-vssr

# FileBrowser
# git clone https://github.com/project-openwrt/FileBrowser.git package/mine/FileBrowser

# OpenClash
# git clone https://github.com/vernesong/OpenClash.git package/mine/OpenClash

# tencent DDNS
# git clone https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns.git package/mine/tencentcloud-openwrt-plugin-ddns

# 网易云音乐
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/mine/luci-app-unblockneteasemusic

# 网易云音乐GoLang版本
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-go.git package/mine/luci-app-unblockneteasemusic-go

# 网易云音乐mini
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini.git package/mine/luci-app-unblockneteasemusic-mini

# 管控上网行为
# git clone https://github.com/destan19/OpenAppFilter.git package/mine/OpenAppFilter

# Rclone-OpenWrt
# git clone https://github.com/ElonH/Rclone-OpenWrt.git package/mine/Rclone-OpenWrt
