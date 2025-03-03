#!/usr/bin/env bash

# 安装 tmux 的脚本
# ########################################################

# 设置变量以提高可读性和维护性
TMUX_TAR="/root/opt/pkg/tmux-3.5a.tar.gz"
TMUX_DIR="/root/opt/pkg/tmux-3.5a"

# 1. 确认 tar 包存在
if [ ! -f "$TMUX_TAR" ]; then
    echo "Error: $TMUX_TAR not found."
    exit 1
fi

# 2. 解压 tmux tar 包到上级目录
echo "Extracting tmux tarball..."
tar -zxvf "$TMUX_TAR" -C /root/opt/pkg/

# 3. 确认解压后的目录存在
if [ ! -d "$TMUX_DIR" ]; then
    echo "Error: Failed to extract tmux tarball."
    exit 1
fi

# 4. 进入解压后的目录
cd "$TMUX_DIR" || { echo "Error: Failed to enter directory $TMUX_DIR."; exit 1; }

# 5. 安装依赖
echo "Installing dependencies..."
sudo yum install -y gcc kernel-devel make ncurses-devel libevent-devel bison

# 6. 编译安装
echo "Compiling and installing tmux..."
./configure && make && sudo make install

# 7. 验证安装
if command -v tmux >/dev/null 2>&1; then
    echo "tmux installation successful!"
else
    echo "Error: tmux installation failed."
    exit 1
fi
