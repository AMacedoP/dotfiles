" .vimrc from Alejandro Macedo
"
"
" Color scheme elflord
colorscheme elflord
" Disabling features from the distro
set nocompatible

" Encoding UTF-8
set encoding=utf-8

" Attempt to determine the type of a file based on its filename
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Another options
set hidden
set wildmenu
set showcmd
set autoindent
set ruler
set laststatus=2
set incsearch
set confirm
set visualbell
set t_vb=
set cmdheight=2
set number " Show lines' number
set relativenumber " Relative numbers

" Set tab spacing
set shiftwidth=3
set tabstop=3

" Set *.pl extension to Prolog instead of Perl
let g:filetype_pl="prolog"

" Options for airline
let g:airline_powerline_fonts = 1

"PLUGINS SECTION
call plug#begin('~/.vim/plugged')

" Airline Powerline
Plug 'vim-airline/vim-airline'

call plug#end()
