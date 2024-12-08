#!/usr/bin/env bash

# 安装基本依赖
# ########################################################

yum install -y gcc gcc-c++ make cmake autoconf automake
yum install -y zlib zlib-devel openssl openssl-devel pcre pcre-devel
yum install -y ncurses ncurses-devel libtool libtool-ltdl libtool-ltdl-devel
yum install -y libxml2 libxml2-devel libxslt libxslt-devel
yum install -y gd gd-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel
yum install -y neofetch htop iftop iotop net-tools wget curl git unzip zip
