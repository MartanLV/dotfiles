# ls colors
# preview here, https://geoff.greer.fm/lscolors/
export LSCOLORS=cxfxhddxbxegedabagacad

typeset -A local FG # foreground
FG[blueGray]="%{$(printf '\x1b[38;2;78;107;104m')%}"
FG[yellow]="%{$(printf '\x1b[38;2;255;255;91m')%}"
typeset -A local BG # background
FG[orange]="%{$(printf '\x1b[38;2;255;100;0m')%}"
typeset -A local CG # command-ground
CG[bold]="%{$(printf '\033[1m')%}"
CG[reset]="%{$(printf '\x1b[0m')%}"
CG[underline]="%{$(printf '\e4[m')%}"
CG[dim]="%{$(printf '\e[2m')%}"
CG[italic]="%{$(printf '\e[3m')%}"
CG[curlyUnderline]="%{$(printf '\e[4:3m')%}"
