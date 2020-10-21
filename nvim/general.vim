let g:mapleader = ","
set encoding=UTF-8


" ========================================
" UI
" ========================================
"
" Theme
" Editor theme
" Or if you have Neovim >= 0.1.5

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
" syntax enable
syntax on
colorscheme gruvbox


let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" Don't dispay mode in command line (airilne already shows it)
set noshowmode


" ========================================
" Editing Options
" ========================================
"
set noshowcmd
" macOS clipboard sharing
set clipboard=unnamed

" === TAB/Space settings === "
"
" Insert spaces when TAB is pressed.
set expandtab
" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2
" Indentation amount for < and > commands.
set shiftwidth=2

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Only one line for command line
set cmdheight=1

filetype plugin indent on

set number relativenumber
set mouse=a
" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

set smartcase
" Save/read file when moving buffers
set autowrite
set autoread
" Automatic indentation is good
set autoindent
" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" " Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>


" ========================================
" MISC.
" ========================================

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread

" Enable line numbers
set number

nnoremap j gj
nnoremap k gk
imap jj <Esc>
nnoremap <leader><space> :nohlsearch<cr>

