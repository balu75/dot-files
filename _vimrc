set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set guifont=consolas:h11

set guioptions-=T

set guioptions-=m

filetype indent plugin on

syntax on

set belloff=all

set smartindent

set tabstop=3 

set shiftwidth=3

set expandtab

set foldlevel=0

set foldnestmax=1

set foldmethod=indent

set laststatus=2

set encoding=utf-8

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

colorscheme solarized
set background=light

set relativenumber

" Key mappings
map <F12> :wa<RETURN>
inoremap <F11> <ESC>:wa<RETURN>:!start vimrun.bat<RETURN>
