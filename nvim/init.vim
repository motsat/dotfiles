call plug#begin('~/.vim/plugged')

" https://qiita.com/jnchito/items/5141b3b01bced9f7f48fリスペクト
" ファイルオープンを便利に
Plug 'ctrlpvim/ctrlp.vim'

" カラースキーマ
Plug 'morhetz/gruvbox'
" ファイルをtree表示してくれる
"Plug 'scrooloose/nerdtree'
" Gitを便利に使う
Plug 'tpope/vim-fugitive'
" Rails向けのコマンドを提供する
Plug 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
Plug 'tpope/vim-endwise'
" ログファイルを色づけしてくれる
Plug 'vim-scripts/AnsiEsc.vim'
" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'
"" Rubyのコードジャンプ
"" :TagsGenerate! でタグ生成、
"" Ctrl+]で飛ぶ
"" Ctrl+oで戻る
Plug 'szw/vim-tags'

call plug#end()

" vim-tags
" ファイル更新時にtagsを勝手に更新してほしいが、nvimが激重になるから切る。:TagsGenerate!を適度にやってく
let g:vim_tags_auto_generate = 0
" ctagsの生成設定。fishだと、``がエラーになるので()にする
let g:vim_tags_project_tags_command = "ctags -f .tags -R . 2>/dev/null"
if $SHELL =~ '/fish$'
  let g:vim_tags_gems_tags_command = "ctags -R -f .Gemfile.lock.tags (bundle show --paths) 2>/dev/null"
elseif
  let g:vim_tags_gems_tags_command = "ctags -R -f .Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
endif

set tags+=.tags;
set tags+=.Gemfile.lock.tags;
" tagsジャンプの時に複数ある時は一覧表示  
"nnoremap <C-]> g<C-]> 
"""""""""""""""""""""""""""""""
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

" jjで挿入モードから抜ける設定
inoremap <silent> jj <ESC>

"https://blog.mamansoft.net/2018/03/31/investigate-why-vim-moves-slow/
