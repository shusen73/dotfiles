let g:mapleader = ","

" ========================================
" Plug
" ========================================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes
"
" === Editing Plugins === 
"
Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdcommenter'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'christoomey/vim-tmux-navigator'

Plug 'sheerun/vim-polyglot'

" === UI === 
"
" Color Scheme
Plug 'mhartington/oceanic-next'
" Plug 'morhetz/gruvbox'

" File browsing
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'
" Icons
" Plug 'ryanoasis/vim-devicons'

" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Initialize plugin system
call plug#end()

" ========================================
" Coc.nvim 
" ========================================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ========================================
" NERDTree
" ========================================
" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

 " ========================================
 " Vim airline 
 " ========================================
 " Enable extensions
let g:airline_extensions = ['branch', 'coc']

" Update section z to just have line number
let g:airline_section_z = airline#section#create(['linenr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'

let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''

" Disable vim-airline in preview mode
let g:airline_exclude_preview = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

" Don't show git changes to current file in airline
let g:airline#extensions#hunks#enabled=0

" ========================================
" FZF
" ========================================
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

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

" Only one line for command line
set cmdheight=1

" === Completion Settings === "

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
set shortmess+=c


filetype plugin indent on

set number relativenumber
set mouse=a
" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set smartcase
" Save/read file when moving buffers
set autowrite
set autoread
" Automatic indentation is good
set autoindent
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" ========================================
" UI
" ========================================
set termguicolors

" Editor theme
set background=dark

colorscheme OceanicNext

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" Make background transparent for many things
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr ctermfg=NONE guibg=NONE
hi! SignColumn ctermfg=NONE guibg=NONE
hi! StatusLine guifg=#16252b guibg=#6699CC
hi! StatusLineNC guifg=#16252b guibg=#16252b

" Customize NERDTree directory
hi! NERDTreeCWD guifg=#99c794

" Highlight the line the cursor is on.
set cursorline

" show the cursor position all the time
set ruler


" ========================================
" Key Mappings
" ========================================

" === Nerdtree shorcuts === "
nnoremap <leader>a :NERDTreeToggle<cr>

nnoremap j gj
nnoremap k gk
imap jj <Esc>
nnoremap <leader><space> :nohlsearch<cr>

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

