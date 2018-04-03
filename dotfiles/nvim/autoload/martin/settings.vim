scriptencoding utf-8

function! martin#settings#foldtext() abort
  let l:title=substitute(getline(v:foldstart), '^"\(.*\){{{$', '\1', '')
  let l:lines=v:foldend - v:foldstart + 1
  return '᚜' . l:title . '᚛᚜' . l:lines . '᚛'
endfunction

