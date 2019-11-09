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
" Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-syntastic/syntastic'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafgarland/typescript-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

if has("gui_running")
   set guifont=consolas:h11
   set guioptions-=T
   set guioptions-=m
endif

filetype indent plugin on
syntax on

set belloff=all
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set encoding=utf-8
set number relativenumber
set cursorline
colorscheme solarized
set background=dark
set showcmd
set mouse=a
set cm=blowfish2
set splitright
set colorcolumn=85
set hlsearch
set incsearch

au FileType cpp
         \ set foldmethod=syntax |
         \ set foldlevel=2

au FileType javascript
         \ set foldmethod=indent |
         \ set foldlevel=2 |
         \ set foldnestmax=2

au FileType python
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

" Key mappings
let mapleader=","
map <Leader>nf :NERDTreeFocus<CR>
map <Leader>t :NERDTreeToggle<CR>
map <Leader>s :wa<RETURN>
imap <C-s> <ESC>:wa<RETURN>
inoremap <F11> <ESC>:wa<RETURN>:!start vimrun.bat<RETURN>
imap jk <ESC>

let g:powerline_pycmd="py3"
let g:powerline_loaded=1
let g:airline_powerline_fonts=1

let g:ctrlp_custom_ignore = '\.o$'

set timeoutlen=1000 ttimeoutlen=0

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

let g:deoplete#enable_at_startup = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_asm_checkers = []
let g:syntastic_cpp_include_dirs = [ '/usr/include/gdk-pixbuf-2.0', '/usr/include/glib-2.0', '/usr/lib/glib-2.0/include', '/usr/lib/libffi-3.2.1/include', '/usr/include/libmount', '/usr/include/blkid', '/usr/include/uuid']

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
