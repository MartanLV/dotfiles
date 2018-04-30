" vim: set fdm=marker fmr={{{,}}} fdl=0 :

" minpac auto setup {{{
command! PackUpdate packadd minpac | source $MYVIMRC | redraw! | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !isdirectory($HOME . '/.config/nvim/pack/minpac/opt')
    echohl String | echo "Installing that minpac for ya" | echohl None
    !mkdir -p ~/.config/nvim/pack/minpac/opt && git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
    echohl String | echo ":PackUpdate run please" | echohl None
endif
" }}}

call minpac#init({'verbose': '2'})

call minpac#add('sjl/gundo.vim')
call minpac#add('tpope/vim-fugitive')

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-vdebug/vdebug', {'type': 'opt'})
call minpac#add('lilydjwg/colorizer', {'type': 'opt'})

call minpac#add('wincent/terminus')
call minpac#add('terryma/vim-expand-region')
call minpac#add('fatih/vim-go')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-commentary')

call minpac#add('alvan/vim-php-manual', {'type': 'opt'}) " shows beautiful php.net doc in help window
call minpac#add('fenetikm/phpfolding.vim', {'type': 'opt'}) "php folding

" completion php

" call minpac#add('Shougo/deoplete.nvim')
call minpac#add('roxma/nvim-completion-manager')
call minpac#add('phpactor/phpactor')
" call minpac#add('roxma/ncm-phpactor')
" call minpac#add('roxma/LanguageServer-php-neovim',  {'do': '!composer install && composer run-script parse-stubs'})

call minpac#add('mattn/emmet-vim', {'type': 'opt'})

" snippet manager
call minpac#add('SirVer/ultisnips')
"
" Search, Fuzzy Finding
call minpac#add('junegunn/fzf') "or refer a sys binary here
call minpac#add('junegunn/fzf.vim') "fuzzy finder stuff
" call minpac#add('wincent/loupe') "nicer search highlighting
call minpac#add('wincent/ferret') " within files search

" call minpac#add('ryanoasis/vim-devicons')
call minpac#add('junegunn/goyo.vim') "distraction free mode

"syntax themes
call minpac#add('MartanLV/vim-deus')
call minpac#add('itchyny/lightline.vim')
call minpac#add('mhartington/oceanic-next')
call minpac#add('KeitaNakamura/neodark.vim')
call minpac#add('drewtempelmeyer/palenight.vim')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('dikiaap/minimalist')
call minpac#add('junegunn/seoul256.vim')
call minpac#add('w0rp/ale') " syntax checker
call minpac#add('maximbaz/lightline-ale') " syntax checker
call minpac#add('fmoralesc/vim-pad')
call minpac#add('tpope/vim-rsi')
call minpac#add('jiangmiao/auto-pairs')

