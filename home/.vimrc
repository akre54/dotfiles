set nocompatible
set ai
set number
set tabstop=2
set shiftwidth=2
set expandtab
set syntax=on
set hidden                                 " Allow background buffers
set autoread                               " Reload files changed outside vim
set directory=~/tmp//,.,/var/tmp//,/tmp//  " Move swp files out of working directory, // indicates full path

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

au BufNewFile,BufRead *.rabl set filetype=ruby

" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle bundles of fundle
Bundle 'drichard/vim-brunch'
Bundle "pangloss/vim-javascript"
Bundle 'wavded/vim-stylus'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on
