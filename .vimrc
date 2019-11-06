" **************** Vundle Plugins

set rtp+=$HOME/.vim/bundle/Vundle.vim
 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'easymotion/vim-easymotion'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
call vundle#end()


" **************** General Settings

filetype indent plugin on
syntax on
colorscheme solarized

set nocompatible
set background=dark
set ff=unix
set belloff=all
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set encoding=utf-8
set number relativenumber
set colorcolumn=100
set backspace=2
set scrolloff=5
set fileformat=unix
set hlsearch
set cursorline
set ignorecase
set smartcase
set incsearch
set nolist
set listchars=trail:·,tab:»\ ,eol:$
set directory=C:/Users/tgies/.vim/swapfiles//
set cm=blowfish2
set showcmd
set path+=**
set wrap lbr
if has('win32')
    let $TMP="c:/temp"
endif

if has("gui_running")
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI:qDRAFT
    set guioptions-=T  "remove icons
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set guioptions-=m  "remove menubar
endif

" **************** Autocommands

au BufNewFile,BufRead *.gsp set filetype=html

au FileType * setl foldmethod=manual

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
            \| exe "normal! g`\"" | endif

" **************** Key Mappings

let mapleader=","

noremap <Leader>t :NERDTreeFocus<CR>
noremap <Leader>v "*p
noremap <Leader>w :w<RETURN>
noremap <Leader>s :wa<RETURN>
noremap <Leader>p "*p
vnoremap <Leader>c "*y
inoremap <Leader><Leader> <ESC>

noremap <F4> :cn<CR>zz
noremap <silent> <S-F4> :cp<CR> <bar> zz
inoremap <C-s> <ESC>:wa<RETURN>
inoremap <F11> <ESC>:wa<RETURN>:!start vimrun.bat<RETURN>

" **************** Plugin Configurations

" NerdTree
let g:NERDTreeAutoCenter=0
let g:NERDTreeWinSize=40

" Powerline
let g:powerline_pycmd="py3"
let g:powerline_loaded=1

" Airline
let g:airline_powerline_fonts=1
"let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long' ]
let g:airline_theme='solarized'

" Control-P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|^build$\|target'

" Deoplete
let g:deoplete#enable_at_startup = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_java_checkers = []

" **************** Own Functions

function! SearchGroovyFunction()
    execute "normal! /" . expand("<cword>") . ".*\\_.[ \\t]*{\<enter>"
endfunction
command! -nargs=0 GroovyFunction call SearchGroovyFunction()
map <Leader>f :call SearchGroovyFunction()<CR>
