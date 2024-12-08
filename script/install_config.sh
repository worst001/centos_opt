#!/usr/bin/env bash

# 安装自己的配置文件
# ########################################################

# 1.将config目录下的配置文件拷贝到用户的.config目录下
cp -rp /root/opt/config/* ~/.config/

# 2.将config/tmux/下的配置文件拷贝到用户的家目录下
cp -rp /root/opt/config/tmux/* ~/
