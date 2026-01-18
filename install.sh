#!/bin/bash
# 1. 必要なパッケージをインストール
sudo apt update && sudo apt install -y fish vim curl git starship eza zoxide fzf

# 2. モダンツール (uv, starship) のインストール
curl -LsSf https://astral.sh/uv/install.sh | sh

# 3. 設定ファイルの配置 (シンボリックリンク)
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.config/fish
ln -sf ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml

# 4. デフォルトシェルをfishに変更
chsh -s $(which fish)
