" --- 基本設定 ---
" encodingの設定は最上部で行う
set encoding=utf-8
scriptencoding utf-8

" ファイル読み込み時の文字コード自動判別（整理）
set fileencodings=ucs-bom,utf-8,euc-jp,cp932,iso-2022-jp,latin1
set fileformats=unix,dos,mac

" ファイルタイプ判定を有効化（Python開発等で重要）
filetype plugin indent on
syntax on

" --- 表示・UI ---
set title          " ターミナルのタイトルを書き換え
set ruler          " カーソル位置を表示
set showcmd        " 入力中のコマンドを表示
set laststatus=2   " ステータスラインを常に表示
set showmatch      " 括弧の対応をハイライト
set matchtime=2    " 括弧ハイライトの表示時間
set pumheight=10   " 補完メニューの高さ
set display=lastline " 長い行もできる限り表示
set wildmenu       " コマンドライン補完を強化
set bg=dark        " 背景色を暗色向けに調整

" ステータスライン（少し見やすく調整）
set statusline=%F%m%r%h%w\ %=[%Y][%{&ff}][%l/%L]

" --- 検索 ---
set hlsearch       " 検索結果をハイライト
set ignorecase     " 大文字小文字を区別しない
set smartcase      " 大文字が含まれる場合は区別する
set wrapscan       " 最後まで検索したら先頭に戻る
set incsearch      " インクリメンタルサーチ
" ESC 2回でハイライト消去
nnoremap <ESC><ESC> :nohlsearch<CR>

" --- 編集・動作 ---
set backspace=indent,eol,start " バックスペースの挙動を自由に
set nobackup       " バックアップを作らない
set writebackup    " 保存時の一時ファイルは作る
set history=200    " 履歴を少し増量
set hidden         " 保存せずに別バッファを開けるようにする
set textwidth=0    " 自動改行オフ
set wrap           " 行を折り返す

" インデント設定（デフォルトはタブ維持）
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Pythonの場合はスペース4つに自動切替（uv環境等で推奨）
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4

" --- 色設定 ---
highlight Comment ctermfg=DarkCyan
highlight StatusLine ctermfg=white
