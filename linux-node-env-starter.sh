#!/bin/bash

# 安装 nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# 安装 node & npm
nvm install node

# 安装 pnpm
npm i -g pnpm
pnpm setup
source /root/.bashrc

# 安装 pm2
pnpm add -g pm2