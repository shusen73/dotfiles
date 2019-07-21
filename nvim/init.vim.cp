"========================================
" Plug
" ========================================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'

" Plug 'pangloss/vim-javascript', {'for': 'javascript'}
" Plug 'mxw/vim-jsx'
" Plug 'sheerun/vim-polyglot'
" Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css']}
" Plug 'w0rp/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'jiangmiao/auto-pairs'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'



" Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" ========================================
" UX
" ========================================
set ttimeoutlen=100

imap jj <Esc>

set mouse=a

let mapleader=","

set number relativenumber
set nu rnu

set termguicolors
syntax on
colorscheme gruvbox

filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" ========================================
" NERDTree
" ========================================
run on nvim start
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1


" ========================================
" ALE
" ========================================

" ========================================
" EMMET
" ========================================

" ========================================
" FZF
" ========================================
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
" 
" ========================================
" Coc 
" ========================================
"
