#!/usr/bin/env bash

# 安装自己的配置文件
# ########################################################

# 1.将config目录下的配置文件拷贝到用户的.config目录下
# 如果没有.config目录，就创建一个
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi
cp -rp /root/opt/config/* ~/.config/

# 2.将config/tmux/下的配置文件拷贝到用户的家目录下
cp -rp /root/opt/config/tmux/.tmux.conf ~/.tmux.conf
cp -rp /root/opt/config/tmux/.tmux.conf.local ~/.tmux.conf.local

# 3.将.bashrc文件拷贝到用户的家目录下
cp -rp /root/opt/config/bashrc ~/.bashrc
