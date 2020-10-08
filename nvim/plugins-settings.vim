" ====================
" NERDTree
" ====================

" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" delete buffer when delete file
let g:NERDTreeAutoDeleteBuffer = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle

let g:mapleader = ","
nnoremap <leader>a :NERDTreeToggle<cr>



" ========================================
" nerdcommenter
" ========================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

 " ========================================
 " Vim airline
 " ========================================
 "
let g:airline_theme='oceanicnext'
" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''
