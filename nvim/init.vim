if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/motsat/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/motsat/.cache/dein')
  call dein#begin('/Users/motsat/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/motsat/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('altercation/vim-colors-solarized')
  call dein#add('morhetz/gruvbox')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"colorscheme molokai
"let g:solarized_termcolors=256
" vimの背景をターミナルと揃える
autocmd ColorScheme * highlight Normal ctermbg=none
set background=dark
colorscheme gruvbox
syntax enable

noswap
set nu
