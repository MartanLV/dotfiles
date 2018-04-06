call minpac#init({'verbose': '2'})

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-vdebug/vdebug', {'type': 'opt'})
call minpac#add('lilydjwg/colorizer', {'type': 'opt'})
call minpac#add('wincent/terminus')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-commentary')
call minpac#add('alvan/vim-php-manual', {'type': 'opt'}) " shows beautiful php.net doc in help window
call minpac#add('fenetikm/phpfolding.vim', {'type': 'opt'}) "php folding
" completion php
call minpac#add('roxma/nvim-completion-manager', {'type': 'opt'})
call minpac#add('phpactor/phpactor' ,  {'type':'opt', 'do': '!composer install --no-progress --no-suggest'})
call minpac#add('roxma/ncm-phpactor', {'type': 'opt'})
call minpac#add('mattn/emmet-vim', {'type': 'opt'})
" snippet manager
call minpac#add('Shougo/deoppet.nvim', {'do': ':UpdateRemotePlugins'})
"
" Search, Fuzzy Finding
call minpac#add('junegunn/fzf') "or refer a sys binary here
call minpac#add('junegunn/fzf.vim') "fuzzy finder stuff
" call minpac#add('wincent/loupe') "nicer search highlighting
call minpac#add('wincent/ferret') " within files search

"  End Search, Fuzzy Finding
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

