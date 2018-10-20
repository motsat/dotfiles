call plug#begin('~/.vim/plugged')

" https://qiita.com/jnchito/items/5141b3b01bced9f7f48fリスペクト
" ファイルオープンを便利に
"Plug 'Shougo/unite.vim'
Plug 'ctrlpvim/ctrlp.vim'

" Unite.vimで最近使ったファイルを表示できるようにする
"Plug 'Shougo/neomru.vim'
" カラースキーマ
Plug 'morhetz/gruvbox'
" ファイルをtree表示してくれる
Plug 'scrooloose/nerdtree'
" Gitを便利に使う
Plug 'tpope/vim-fugitive'
" Rails向けのコマンドを提供する
Plug 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
Plug 'tpope/vim-endwise'
" " コメントON/OFFを手軽に実行
Plug 'tomtom/tcomment_vim'
" ログファイルを色づけしてくれる
Plug 'vim-scripts/AnsiEsc.vim'
" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'

call plug#end()
""""""""""""""""""""""""""""""
" vimの背景をターミナルと揃える
autocmd ColorScheme * highlight Normal ctermbg=none
" 背景はgruvbox
set background=dark
colorscheme gruvbox
syntax enable

set noswapfile
set nu

" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

set ignorecase
