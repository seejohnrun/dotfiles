filetype plugin indent on
syntax on
set noexpandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap

set nofoldenable " disable folding

set t_Co=256

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)

colorscheme xoria256
set background=dark

if has("gui_macvim")
	set fuopt+=maxhorz
	set guioptions-=T
	set guifont=Monaco:h12
endif

cabbr te tabedit
au BufNew,BufRead Gemfile set syntax=ruby
au BufNew,BufRead irb_tempfile.rb.* set syntax=ruby

au BufWinEnter .rb let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
au BufWinEnter     let w:m2=matchadd('ErrorMsg', '\s\+$', -1)
