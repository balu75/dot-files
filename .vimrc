" **************** Vundle Plugins

set rtp+=$HOME/.vim/bundle/Vundle.vim
 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
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
Plugin 'evidens/vim-twig'
Plugin 'morhetz/gruvbox'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mileszs/ack.vim'

call vundle#end()


" **************** General Settings

filetype indent plugin on

syntax on

set background=dark
colorscheme gruvbox

set autoread
set nocompatible
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
"set hlsearch
set cursorline
set ignorecase
set smartcase
set incsearch
set nolist
set listchars=trail:·,tab:»\ ,eol:$
set directory=~/.vim/swapfiles//
set cm=blowfish2
set showcmd
set path+=**
set nowrap
set splitright
set splitbelow

highlight SpellBad cterm=underline

"set t_ut= "helps With background color problems
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

au FileType text setl tw=80
            \ colorcolumn=80
            \ shiftwidth=4
            \ tabstop=4
            \ noexpandtab

au FileType gitcommit setl spell spelllang=de

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
            \| exe "normal! g`\"" | endif

" **************** Key Mappings

let mapleader=" "

" Insert Mode
inoremap jj <ESC>
inoremap <C-s> <ESC>:wa<RETURN>
inoremap <F11> <ESC>:wa<RETURN>:!start vimrun.bat<RETURN>

" Normal Mode
nmap <Leader>t :NERDTreeFocus<CR>
nmap <Leader>T :NERDTreeToggle<CR>
nmap <Leader>v "+p
nmap <Leader>s :w<RETURN>
nmap <Leader>S :wa<RETURN>
nmap <Leader>h :set hls!<RETURN>
nmap <Leader>p "+p
nmap <Leader>rp :CtrlPClearCache<RETURN>
nmap <Leader>l :set list<RETURN>
nmap <Leader>L :set nolist<RETURN>
nmap <Leader>hs :set hls<RETURN>
nmap <Leader>Hs :set nohls<RETURN>
nmap <Leader>mru :CtrlPMRUFiles<RETURN>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <F4> :cn<CR>zz
nmap <silent> <S-F4> :cp<CR> <bar> zz

" Visual Mode
vnoremap <Leader>c "+y

" Command Mode

function! Todo()
    e ~/dev/docs/todo_win.txt
endfunction

command! Todo call Todo()

" **************** Plugin Configurations

" Ultisnips

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" NerdTree
let g:NERDTreeAutoCenter=0
let g:NERDTreeWinSize=40
let g:NERDTreeQuitOnOpen=1

" Powerline
let g:powerline_pycmd="py3"
let g:powerline_loaded=1

" Airline
let g:airline_powerline_fonts=1
"let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long' ]

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

" Control-P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|^build$\|target\|\^target$\|tags$'

" Deoplete
let g:deoplete#enable_at_startup = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_java_checkers = []
" Emmet
let g:user_emmet_settings = {
\    'html': {
\        'empty_element_suffix': ' />',
\    },
\}

" ack Plugin
let g:ackprg = 'ag --nogroup --nocolor --column'


" **************** Own Functions

function! SearchGroovyFunction()
    execute "normal! /" . expand("<cword>") . ".*\\_.[ \\t]*{\<enter>"
endfunction
command! -nargs=0 GroovyFunction call SearchGroovyFunction()
map <Leader>f :call SearchGroovyFunction()<CR>
