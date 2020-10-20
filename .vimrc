set nocompatible
filetype indent plugin on
call plug#begin()
Plug 'junegunn/seoul256.vim'
call plug#end()
set t_Co=256
syntax enable
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set laststatus=2
set confirm
set mouse=a
set number relativenumber
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
colorscheme seoul256
set background=dark

set notitle
set incsearch
set wildignore+=*/.git/*,*/node_modules/*,*/_site/*

let g:ctrlp_regexp = 1
let g:ctrlp_by_filename = 1

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l -no-color - g ""'
endif

au BufRead,BufNewFile,BufReadPost *.volt set syntax=html
au BufRead,BufNewFile,BufReadPost *.volt set filetype=html
