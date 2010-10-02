"####################################################################
"
" Copyright (C) 2005-2007 pmade inc. (Peter Jones pjones@pmade.com)
" 
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
" 
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"####################################################################
function PMADE_RubyEndToken ()
    let current_line = getline('.')
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?\(\s*#.*\)\?$'
    let stuff_without_do = '^\s*\<\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)\>'
    let with_do = '\<do\>\s*\(|\(,\|\s\|\w\)*|\s*\)\?\(\s*#.*\)\?$'

    if getpos('.')[2] < len(current_line)
        return "\<CR>"
    elseif match(current_line, braces_at_end) >= 0
        return "\<CR>}\<C-O>O"
    elseif match(current_line, stuff_without_do) >= 0
        return "\<CR>end\<C-O>O"
    elseif match(current_line, with_do) >= 0
        return "\<CR>end\<C-O>O"
    else
        return "\<CR>"
    endif
endfunction

"####################################################################
" Add the end token when you hit enter
function PMADE_RubyAutoComplete ()
    imap <buffer> <CR> <C-R>=PMADE_RubyEndToken()<CR>
endfunction

"####################################################################
" Enable ruby end token completion on ruby file types
autocmd FileType ruby,eruby call PMADE_RubyAutoComplete()
