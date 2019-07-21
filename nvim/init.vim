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
