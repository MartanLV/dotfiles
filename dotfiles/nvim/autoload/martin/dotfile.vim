" TODO this a demo, minpac goto plugin {opt,start}, glob ftplugins, functions
" byteoffset: eval('line2byte(line("."))+col(".")')
function! martin#dotfile#jump()
  call fzf#run({'source': [
              \ $DOTFILES . '/dotfiles/nvim/init.vim',
              \ $DOTFILES . '/dotfiles/.zsh/.zshrc',
              \ $DOTFILES . '/dotfiles/nvim/packages.vim',
              \ $DOTFILES . '/dotfiles/nvim/ftplugin/php.vim',
              \ ],
            \ 'options': '--ansi --preview="echo \"\e[0;32m{1}\""',
            \ 'sink': 'e', 'top': '25%'})
endfunction

function! martin#dotfile#init()
  nnoremap <buffer> <leader>j :call martin#dotfile#jump()<cr>
endfunction
