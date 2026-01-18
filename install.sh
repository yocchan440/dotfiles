#!/bin/bash
# 実行中にエラーが発生したら即座に終了する
set -e

echo "🚀 セットアップを開始します..."

# 1. 必要なパッケージのインストール (Debian 13前提)
sudo apt update
sudo apt install -y fish vim curl git stow eza zoxide fzf uidmap

# 2. モダンツールのインストール
# Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
# uv (Pythonマネージャー)
curl -LsSf https://astral.sh/uv/install.sh | sh

# 3. dotfilesのクローンと配置
DOTFILES_DIR="$HOME/dotfiles"
if [ ! -d "$DOTFILES_DIR" ]; then
    git clone https://github.com/yocchan440/dotfiles.git "$DOTFILES_DIR"
fi

# 4. GNU Stowによるシンボリックリンクの一括作成
cd "$DOTFILES_DIR"
# リポジトリ内のディレクトリ構成に合わせて調整してください
stow -S fish starship vim

# 5. デフォルトシェルをfishに変更
# 非対面でchshを実行
sudo chsh -s $(which fish) $(whoami)

echo "✨ セットアップが完了しました！"
echo "再ログインするか 'exec fish' を実行して環境を反映させてください。"
