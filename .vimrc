filetype plugin indent on
syntax on
colorscheme xoria256
set noexpandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap
cabbr te tabedit
au BufNew,BufRead Gemfile set syntax=ruby
au BufNew,BufRead irb_tempfile.rb.* set syntax=ruby

au BufWinEnter .rb let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
au BufWinEnter     let w:m2=matchadd('ErrorMsg', '\s\+$', -1)

