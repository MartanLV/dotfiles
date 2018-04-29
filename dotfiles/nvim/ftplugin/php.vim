setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal autoindent
setlocal copyindent
setlocal smarttab
setlocal iskeyword+=-
setlocal iskeyword+=_

" packadd nvim-completion-manager

inoremap <buffer> ;; <esc>A;<esc>
" nnoremap <buffer> <leader>u :call phpactor#UseAdd()<cr>

" autocomplete
" setlocal omnifunc=phpactor#Complete

" trim white space on write
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd! BufWritePre *.php :call TrimWhiteSpace()

" set tags+=.git/tags,.git/tags.vendors
