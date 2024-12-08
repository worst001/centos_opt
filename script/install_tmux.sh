#!/usr/bin/env bash

# 安装tmux的脚本
# ########################################################

## 1.解压tmux tar包 到当上级目录
tar -zxvf /root/opt/pkg/tmux-3.5a.tar.gz -C /root/opt/tmux-3.5a
cd /root/opt/tmux-3.5a

## 2.安装依赖
sudo apt-get install -y libevent-dev libncurses5-dev

## 3.编译安装
./configure && make && sudo make install

