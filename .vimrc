" .vimrc from Alejandro Macedo
"
"
" Disabling features from the distro
set nocompatible

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
set number

" Set tab spacing
set shiftwidth=3
set tabstop=3

" Set *.pl extension to Prolog instead of Perl
let g:filetype_pl="prolog"
