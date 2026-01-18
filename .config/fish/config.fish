if status is-interactive
    # --- 1. プラグイン・ツール初期化 ---
    starship init fish | source
    zoxide init fish | source
    fzf --fish | source

    # --- 2. エイリアス設定（モダンツールへの置き換え） ---
    alias ls='eza --git'
    alias ll='eza -ahl --git'
    alias cat='batcat' # もし bat をインストールしていれば
    alias cd='z'   # zoxideによる高速移動

    # --- 3. uv (Python) 連携 ---
    # uvのパスが通っていない場合は追加
    fish_add_path $HOME/.local/bin

    # uvシェル補完の有効化
    uv generate-shell-completion fish | source

    # --- 4. 便利関数（おじさん世代にも優しい効率化） ---

    # 直前のコマンドをsudoで実行し直す (!! の代わり)
    function last_history_item; echo $history[1]; end
    abbr -a !! --position anywhere --function last_history_item

    # --- 5. fish独自の挙動設定 ---
    set -g fish_greeting "" # 起動時の挨拶を消す
    set -g fish_cursor_default block
    set -g fish_cursor_insert line
end
