" ========================================
" Plug
" ========================================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes
"
" === IDE ===
" File browsing
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" === Git related ===
Plug 'tpope/vim-fugitive'

" === Editing Plugins ===
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Intellisense Engine

" === UX ===
Plug 'christoomey/vim-tmux-navigator'

" === UI ===
"
" A fancy starter screen
Plug 'mhinz/vim-startify'
"
" Color Scheme
" Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()
