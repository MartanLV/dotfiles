" vim: set fdm=marker fmr={{{,}}} fdl=0 :
scriptencoding utf-8
packadd minpac

so ~/.config/nvim/packages.vim
so ~/.config/nvim/settings.vim
so ~/.config/nvim/functions.vim
so ~/.config/nvim/mappings.vim

so ~/.config/nvim/pluginConfig/deoplete.vim
so ~/.config/nvim/pluginConfig/vdebug.vim
so ~/.config/nvim/pluginConfig/ale.vim
so ~/.config/nvim/pluginConfig/lightline.vim
so ~/.config/nvim/pluginConfig/ultisnips.vim
so ~/.config/nvim/pluginConfig/nerdtree.vim
so ~/.config/nvim/pluginConfig/phpactor.vim

" strange how this is not default a behaviour ...
" this will remember cursor position and scroll across buffer swithces
au BufLeave * if !&diff | let b:winview = winsaveview() | endif
au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | unlet! b:winview | endif

" this ensures empty new line at the end of file
" I have a thing .. this may be disabled, by let g:_eof_cr=0
let g:eof_cr=1 " end of file carrage return
au BufWritePre * if getline('$') != '' && g:eof_cr | call setline(line('$') + 1, '') | endif

