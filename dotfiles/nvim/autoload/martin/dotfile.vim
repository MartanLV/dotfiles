" TODO minpac goto plugin src {opt,start}, glob ftplugins, functions
" byteoffset: eval('line2byte(line("."))+col(".")')

function! martin#dotfile#jump()
  let roads = globpath($DOTFILES . '/dotfiles/nvim/ftplugin/', '*', 0, 1, 1)
  let roads += globpath($DOTFILES . '/dotfiles/nvim/', '*', 0, 1, 1)
  let roads += globpath($DOTFILES . '/dotfiles/nvim/autoload/martin', '*', 0, 1, 1)
  let roads += globpath($DOTFILES . '/dotfiles/.zsh/', '.[^.]*', 0, 1, 1)
  let roads += globpath($DOTFILES . '/dotfiles/.zsh/', '*', 0, 1, 1)
  let roads += globpath($DOTFILES . '/dotfiles/', '.[^.]*', 0, 1, 1)

  let te = {'source': roads,
        \ 'options': '--ansi --preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"',
            \ 'sink': 'e', 'top': '25%'}
  call fzf#run(te)
endfunction

function! martin#dotfile#init()
  nnoremap <buffer> <leader>j :call martin#dotfile#jump()<cr>
endfunction
