" if exists('b:undo_ftplugin')
" 	let b:undo_ftplugin .= ' | '
" else
" 	let b:undo_ftplugin = ''
" endif
" let b:undo_ftplugin .= 'setl modeline<'

setlocal iskeyword-=:,#
setlocal shiftwidth=2
setlocal foldmethod=indent
setlocal foldlevel=99

" Program to use for the |K| command.  Environment variables are expanded |:set_env|.
setlocal keywordprg=:help

" For gf
let &l:path = join(map(split(&runtimepath, ','), 'v:val."/autoload"'), ',')
setlocal suffixesadd=.vim
setlocal includeexpr=fnamemodify(substitute(v:fname,'#','/','g'),':h')

setlocal omnifunc=phpactor#Complete
