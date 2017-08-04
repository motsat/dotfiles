"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('Shougo/neocomplcache.vim')
  call dein#add('Shougo/neocomplcache-rsense.vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-endwise.git')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

filetype plugin indent on
syntax enable
"
"set t_Co=256
"colorscheme molokai
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set nopaste
set nobomb
set backspace=2
set cmdheight=2
set noswapfile
set nobackup
set nowritebackup
set hidden
set ignorecase
set noincsearch
set smartcase
set wrapscan
set number

highlight ZenkakuSpace guibg=white
highlight ZenkakuSpace ctermbg=white
match ZenkakuSpace /!!/
"
"syntax on
autocmd! BufRead,BufNewFile *.t.html set filetype=html
autocmd! BufRead,BufNewFile *.erb set filetype=html

set hlsearch
"set listchars=tab:*-,extends:~,trail:_
"set list
set ruler
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showmatch
set showmode
set showcmd

""検索highlightを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" neocomplcacheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

" Rsense用の設定
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"rsenseのインストールフォルダがデフォルトと異なるので設定
"let g:rsenseHome = expand("*Rsenseのインストールパスをここにペースト*")
let g:rsenseUseOmniFunc = 1
