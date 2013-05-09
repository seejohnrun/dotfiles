filetype plugin indent on
syntax on
set noexpandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap


set backspace=0

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


colorscheme xoria256
"set background=dark

if has("gui_macvim")
	set fuopt+=maxhorz
	set guioptions-=T
	set guifont=Monaco:h12
endif

cabbr te tabedit
au BufNew,BufRead Gemfile set syntax=ruby

au BufWinEnter     let w:m2=matchadd('ErrorMsg', '\s\+$', -1)

" > 80 is not cool
if exists("&colorcolumn")
	set colorcolumn=+1 " red line and over is bad
	set textwidth=80
else
	au BufWinEnter *   let w:m2=matchadd('ErrorMsg', '\%81v.\+', -1)
end
