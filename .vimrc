" init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle packages
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-scripts/xoria256.vim'
Bundle 'ervandew/supertab'
Bundle 'bronson/vim-trailing-whitespace'

" vim options
filetype plugin indent on
syntax on
cabbr te tabedit
colorscheme xoria256
set noexpandtab
set nocompatible
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap
set backspace=0
set nofoldenable
set t_Co=256
set colorcolumn=+1 " red line and over is error
set textwidth=80

" enforce purity
noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>
