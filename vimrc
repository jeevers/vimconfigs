
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
Plugin 'Raimondi/delimitMate'


filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized
set number
set encoding=utf-8
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let g:vim_markdown_folding_disabled=1
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set laststatus=2
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F5> :GundoToggle<CR>
autocmd FileType python :nnoremap E :w <Bar> !python %<CR>

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
