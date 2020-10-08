" define paths in global variables

let g:dotfilesPath  = '~/Projects/dotfiles/nvim/'
let g:plugins= g:dotfilesPath . 'plugins.vim'
let g:pluginSettings= g:dotfilesPath . 'plugins-settings.vim'
let g:coc= g:dotfilesPath . 'coc.vim'

let g:general= g:dotfilesPath . 'general.vim'


" load files

exe 'source ' g:plugins
exe 'source ' g:pluginSettings
exe 'source ' g:general
" exe 'source ' g:coc

