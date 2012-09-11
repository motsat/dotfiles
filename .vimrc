set rtp+=~/.vim/vundle.git/
noremap [space]i zMzv
call vundle#rc()
Bundle "rails.vim"
Bundle 'sgur/vundle'
"Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/vimproc'
Bundle 'tyru/restart.vim'
Bundle 'tyru/caw.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'molokai'
Bundle 'thinca/vim-quickrun'
Bundle 'LeafCage/foldCC'
Bundle 'Align'
Bundle 'taglist.vim'
Bundle 'fuenor/qfixgrep.git'
Bundle "grep.vim"
Bundle "tpope/vim-fugitive"
Bundle "kien/ctrlp.vim"
Bundle 'surround.vim'
Bundle 'ruby-matchit'
Bundle 'tpope/vim-endwise.git'
set t_Co=256
colorscheme molokai
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set nopaste
set ffs=unix
set nobomb
set ttyfast
"set term=xterm-color
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

highlight ZenkakuSpace guibg=white
highlight ZenkakuSpace ctermbg=white
match ZenkakuSpace /!!/

syntax on
autocmd! BufRead,BufNewFile *.t.html set filetype=html
autocmd! BufRead,BufNewFile *.tpl set filetype=html
autocmd! BufRead,BufNewFile *.erb set filetype=html
autocmd! BufRead,BufNewFile *.ejs set filetype=html
set number
set hlsearch
set listchars=tab:*-,extends:~,trail:_
set list
set ruler
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showmatch
set showmode
set showcmd
set visualbell

nnoremap j gj
nnoremap k gk

"map <kPlus> <C-W>+
"map <kMinus> <C-W>-
"set mouse=a
"let g:netrw_liststyle = 3
nmap <Leader>a :%s/\v {1,}$//g<CR>
"let g:qb_hotkey = ";;"
"let g:neocomplcache_enable_at_startup = 1
au FileType javascript set ts=2 sw=2 expandtab
au BufRead,BufNewFile *.js set filetype=javascript fenc=utf-8
filetype on
filetype indent on
"filetype plugin on
nnoremap <C-i> [<C-i>
nnoremap <Nul> [<C-i>
set tags+=~/.tags

let g:ref_refe_cmd = "/usr/local/src/ruby-refm-1.9.2-dynamic-20110729/refe-1_9_2"
let $PATH = $PATH . ':/usr/local/bin'
""" ref.vim
let g:ref_use_vimproc = 0   " vimprocをインストールしてない場合は0を指定
nmap ,rr :<C-u>Ref refe<Space>
let NERDTreeHighlightCursorline=1
set modifiable
noremap <F3> :Rtree<CR>
noremap F :FufFile<CR>
"set noea
let g:surround_{char2nr("-")} = "<% \r %>"
let g:surround_{char2nr("=")} = "<%= \r %>"
let g:surround_{char2nr("!")} = "<span <%= styles(:red) %>>\r</span>"
vnoremap p "_xP

""" unite.vim
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ;; :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>UniteWithCurrentDir buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>

"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> <ESC>q
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC><ESC>q
au FileType unite nnoremap <silent> <buffer> <ESC>uu <ESC>q
au FileType unite inoremap <silent> <buffer> <ESC>uu <ESC><ESC>q

" unite ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

nnoremap <silent> <Leader>ql :BrowserReload<CR>
"let g:netrw_liststyle=3
let g:quickrun_config = {}
let g:quickrun_config['node.js'] = {'command': 'node'}

" folding
"set foldmethod=syntax
set foldlevel=99  " folding は行わない
set foldcolumn=0 "ウィンドウの端に確保される折畳を示すカラムの幅
" LeafCage/foldCC
" @see http://d.hatena.ne.jp/leafcage/20111223/1324705686
set foldtext=FoldCCtext()
set foldcolumn=5
set fillchars=vert:\|
noremap <silent> <C-g> :echo FoldCCnavi()<CR>

" foldの操作系。z使うのが指に良くないのでいろいろ変える
noremap [space] <nop>
nmap <Space> [space]
noremap [space]j zj
noremap [space]k zk
noremap [space]n ]z
noremap [space]p [z
noremap [space]h zc
noremap [space]l zo
noremap [space]a za
noremap [space]m zM
noremap [space]r zR
noremap [space]f zf
"imap <C-k> <Plug>(neocomplcache_snippets_expand)
"smap <C-k> <Plug>(neocomplcache_snippets_expand)
"let g:neocomplcache_enable_at_startup = 1
" vimでquickfixを自動で開く
" http://webtech-walker.com/archive/2009/09/29213156.html
"set grepprg="grep -rnIH --exclude-dir=.svn"
set grepprg=grep\ -nH\ --exclude\ \"\*svn\*\"
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif
"let mygrepprg = 'grep -inr'
if has('mac')
  if system('which gxargs')
    let Grep_Xargs_Path = 'gxargs'
  else
    let Grep_Find_Use_Xargs = 0
  endif
endif
let Grep_Skip_Dirs = '.svn'
let Grep_Skip_Files = '*.bak *~'

"検索highlightを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>
setlocal cursorline
let g:ctrlp_max_height=30
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$\|\.rsync_cache$'
