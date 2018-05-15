execute pathogen#infect()
syntax on
set background=dark
color apprentice

"let g:solarized_termcolors=256
"color solarized
"color distinguished
"color jellybeans 
"color grb256
"color codeschool

map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
" makes clearing the search bar afterward easy. ,<space>
nnoremap <leader><space> :noh<cr> 
nnoremap <tab> % "
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

" new vim users binding removed
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set pastetoggle=<F4>
au FocusLost * :wa

" split and switch focus
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>a :ack-grep

nnoremap ; :

if has("autocmd")
  filetype plugin indent on
endif

let g:airline_powerline_fonts = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
