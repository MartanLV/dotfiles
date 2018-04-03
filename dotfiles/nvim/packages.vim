call minpac#init({'verbose': '2'})

call minpac#add('lilydjwg/colorizer', {'type': 'opt'})

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('wincent/terminus')

"Pope
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-commentary')

" Php
call minpac#add('alvan/vim-php-manual') " shows beautiful php.net doc in help window
call minpac#add('fenetikm/phpfolding.vim') "php folding
" completion php
call minpac#add('roxma/nvim-completion-manager')
call minpac#add('phpactor/phpactor' ,  {'do': '!composer install'})
call minpac#add('roxma/ncm-phpactor')

call minpac#add('mattn/emmet-vim')
"
" Search, Fuzzy Finding
call minpac#add('junegunn/fzf') "or refer a sys binary here
call minpac#add('junegunn/fzf.vim') "fuzzy finder stuff
call minpac#add('wincent/loupe') "nicer search highlighting
call minpac#add('wincent/ferret') " within files search

"  End Search, Fuzzy Finding
" call minpac#add('ryanoasis/vim-devicons')
call minpac#add('junegunn/goyo.vim') "distraction free mode
call minpac#add('vim-airline/vim-airline') "tabline, statusline
call minpac#add('vim-airline/vim-airline-themes') "deus theme s there too
"syntax themes
call minpac#add('MartanLV/vim-deus')
call minpac#add('mhartington/oceanic-next')
call minpac#add('KeitaNakamura/neodark.vim')
call minpac#add('drewtempelmeyer/palenight.vim')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('dikiaap/minimalist')
call minpac#add('junegunn/seoul256.vim')
call minpac#add('w0rp/ale') " syntax checker

