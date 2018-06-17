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

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

finish

" Make sure Vim returns to the same line when you reopen a file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     execute 'normal! g`"zvzz' |
    \ endif
set viminfo^=%

let g:go_fmt_command = "goimports"

let g:pad#dir="~/notes"
let g:pad#default_format = "markdown"


