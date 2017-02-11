"" vundle required
set nocompatible
filetype off

"" vundle required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" --- PLUGIN LIST

" vundle
Plugin 'VundleVim/Vundle.vim'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" Git fugative
Plugin 'tpope/vim-fugitive'

" Tagbar
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'

" Airline
Plugin 'bling/vim-airline'

" Phpvim
Plugin 'stanangeloff/php.vim'

" Php-cs-fixer
Plugin 'stephpy/vim-php-cs-fixer'

" Php QA
"Plugin 'joonty/vim-phpqa.git'

" Syntastic
Plugin 'scrooloose/syntastic'

" Colorschemes
Plugin 'zanglg/nova.vim'
Plugin 'fneu/breezy'

"" finish vundle
call vundle#end()
filetype plugin indent on

""" --- GENERAL SETTINGS

"" colors
set termguicolors
set background=dark
colorscheme breezy
syntax enable

"" spaces + tabs
set tabstop=4
set softtabstop=4
set expandtab

"" ui
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

"" searching
set incsearch
set hlsearch

nnoremap <leader><space> :nohlsearch<CR> " don't highlight

"" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10

nnoremap <space> za " fold code
set foldmethod=indent

"" moving around
nnoremap j gj
nnoremap k gk

nnoremap gV `[v`] " highlight last insert

""" --- PLUGIN SETTINGS

"" ctrlp
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR> " toggle nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close on last window

"" smart tab line
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='breezy'
set laststatus=2

" disable auto comment on lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" git-gutter
set updatetime=250

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_phpctags_bin="phpctags"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']

" php complete
set omnifunc=phpcomplete#CompletePHP
