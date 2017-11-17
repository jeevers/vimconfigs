
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'lepture/vim-jinja'
Plugin 'wkentaro/conque.vim'
Plugin 'hashivim/vim-hashicorp-tools'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree.git'

call vundle#end()

filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized
set number
set encoding=utf-8
set cursorline
set cursorcolumn
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let delimitMate_expand_cr=1
let g:vim_markdown_folding_disabled=1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
let g:syntastic_rust_checkers = ['cargo']
let g:rustfmt_autosave = 1
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set laststatus=2
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F5> :GundoToggle<CR>
autocmd FileType python :nnoremap E :w <Bar> !python %<CR>
autocmd FileType go :nnoremap E :w <Bar> GoRun<CR>
autocmd FileType sh :nnoremap E :w <Bar> !./%<CR>
autocmd FileType rust :nnoremap E :w <Bar> !cargo run %<CR>

"nerdtree stuff
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
nmap <C-n> :NERDTreeToggle<CR>
"nmap <silent> <F7> :NERDTreeFind<CR>

let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<UP>']
let g:SuperTabDefaultCompletionType = '<C-Tab>'
"let g:UltiSnipsListSnippets = '<c-m>'

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
