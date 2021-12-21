" plug packages
call plug#begin('~/.vim/plugged')
Plug 'gmarik/vundle'
Plug 'vim-ruby/vim-ruby'
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'markstory/ZoomWin'
Plug 'adelarsq/vim-matchit'
Plug 'tristen/vim-sparkup'
Plug 'plasticboy/vim-markdown'
Plug 'kballard/vim-swift'
Plug 'mustache/vim-mustache-handlebars'
Plug 'slim-template/vim-slim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'jiangmiao/simple-javascript-indenter'
Plug 'mxw/vim-jsx'
Plug 'burnettk/vim-angular'
Plug 'othree/html5.vim'
Plug 'flazz/vim-colorschemes'
Plug 'elixir-lang/vim-elixir'
Plug 'briancollins/vim-jst'
Plug 'jszakmeister/vim-togglecursor'
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'
" Plug 'w0rp/ale'
call plug#end()

" don't let the syntax highlighter kill editor performance
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" take in an extra file from the local directory if necessary
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif

" vim options
filetype plugin indent on
syntax on
cabbr te tabedit
silent! colorscheme xoria256 # installed via a plug
set expandtab
set nocompatible
set laststatus=2
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap
set backspace=0
set t_Co=256
set colorcolumn=80 " red line and over is error
set textwidth=0
set hlsearch

" turn off vim-markdown folding
let g:vim_markdown_folding_disabled=1

" enforce purity
noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>

" set nonumber
highlight Normal ctermbg=None
