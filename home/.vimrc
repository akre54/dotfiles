set nocompatible
set ai
set number
set tabstop=2
set shiftwidth=2
set expandtab
set syntax=on                              " Syntax highlighting
set hlsearch                               " highlight search
set ignorecase                             " Case-insensitive search
set smartcase                              " Search is case-sensitive when first letter is capital
set incsearch                              " Incremental search
set hidden                                 " Allow background buffers
set autoread                               " Reload files changed outside vim
set nobackup                               " no backup files
set nowritebackup                          " only in case you don't want a backup file while editing
set noswapfile                             " no swap files
set directory=~/tmp//,.,/var/tmp//,/tmp//  " Move swp files out of working directory, // indicates full path

set autoindent
set cindent
set indentkeys-=0#                         " Don't break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case

set mouse=a                                " Enable mouse in GUI mode
map <ScrollWheelUp> <C-Y>                  " Because the scrollwheel just feels natural
map <ScrollWheelDown> <C-E>
set mousehide                              " Hide mouse after chars typed

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

au BufNewFile,BufRead Gemfile,*.rabl,*.ru set ft=ruby

" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle bundles of fundle
Bundle "pangloss/vim-javascript"
Bundle 'wavded/vim-stylus'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on
