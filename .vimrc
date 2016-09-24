" Turn off settings for vundle
set nocompatible
filetype off

" Start vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle start Plugin 'VundleVim/Vundle.vim'

" Own plugins
Plugin 'PotatoesMaster/i3-vim-syntax'

" Vundle end
call vundle#end()
filetype plugin indent on

" Set colorscheme
"colorscheme jellybeans
colorscheme smyck

" Turn line numbers on
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
syntax enable

" Space tab vibes
set shiftwidth=4
set softtabstop=4
set expandtab

" Indents
set smartindent
set autoindent
set wrap

" Searches
set hlsearch
set incsearch
set ignorecase
set smartcase

" Folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Ruler
set ruler
set visualbell
set noswapfile
set cmdheight=2
set so=7
set encoding=utf8

" File movement
map j gj
map k gk

" No autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
