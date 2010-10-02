augroup haml
	au! BufRead,BufNewFile *.haml     setfiletype haml
augroup END
augroup markdown
	au! BufRead,BufNewFile *.md,*.mkd,*.markdown    setfiletype mkd
augroup END
