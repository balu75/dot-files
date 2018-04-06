set nocompatible

" set the runtime path to include Vundle and initialize
" call :PluginInstall for installing the plugins
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'

" All of your Plugins must be added before the following line
call vundle#end()            " required

if has("gui_running")
   set guifont=consolas:h11
   set guioptions-=T
   set guioptions-=m
endif

filetype indent plugin on
syntax on
filetype on

set belloff=all
set smartindent
set tabstop=3
set shiftwidth=3
set expandtab
set laststatus=2
set encoding=utf-8
set relativenumber
colorscheme solarized
set background=dark

au BufNewFile,BufRead *.js
         \ set foldmethod=indent |
         \ set foldnestmax=1 |
         \ set foldlevel=1

au BufNewFile,BufRead *.py
         \ set foldlevel=0 |
         \ set foldnestmax=1 |
         \ set foldmethod=indent |
         \ set tabstop=4 |
         \ set softtabstop=4 |
         \ set shiftwidth=4 |
         \ set textwidth=79 |
         \ set expandtab |
         \ set autoindent |
         \ set fileformat=unix

set relativenumber

" Key mappings
map <F12> :wa<RETURN>
imap <F12> <ESC>:wa<RETURN>
inoremap <F11> <ESC>:wa<RETURN>:!start vimrun.bat<RETURN>
map <C-n> :NERDTreeFocus<CR>
map <C-S-n> :NERDTreeToggle<CR>
imap jk <ESC>

let g:powerline_pycmd="py3"
let g:powerline_loaded=1
let g:airline_powerline_fonts=1

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set timeoutlen=1000 ttimeoutlen=0

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
