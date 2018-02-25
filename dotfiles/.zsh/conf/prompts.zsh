# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#vcs_005finfo-Hooks
autoload -Uz vcs_info

function zle-keymap-select {
  zle reset-prompt
}
zle -N zle-keymap-select

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git+set-message:*' hooks git-has-stash
zstyle ':vcs_info:git*' formats "%{$FG[blueGray]%}%{$CG[dim]%}%{$CG[italic]%}%b %m%{$CG[reset]%}"
# zstyle ':vcs_info:*+*:*' debug true
function +vi-git-has-stash() {
	if [[ ! -z `git stash list` ]]; then
    		hook_com[misc]+="${CG[reset]}${FG[yellow]}〒"
    	fi
}
precmd() {
    vcs_info
}

#
# left side prompt %? is exit code %B backround jobs
SUFFIX=$(printf '✝%.0s' {1..$SHLVL}) # ctn indicates depth level
PS1='%{$FG[blueGray]%}%1~%{$FG[orange]%}%B%(1j. ⑂.)%(?.. ⚐) $SUFFIX %{$CG[reset]%}'
export PS1
#
# right side prompt %~ expands cwd, white color if vim insert mode
RPS1='%{$FG[$([[ $KEYMAP = "vicmd" ]] || echo "orange")]%}%~ %{$CG[reset]%}'
RPS1+='${vcs_info_msg_0_}'
export RPS1
#
# muliline prompt "%_" expands the scope keyword name
PS2='%{$FG[blueGray]%}%_ │ %{$CG[reset]%}'
export PS2
#
# is shown within a loop started by the shell’s select mechanism #select x in "";do done;
PS3='%{$FG[orange]%} ? %{$FG[blueGray]%}⑊: %{$CG[reset]%}'
export PS3
#
# XTRACE/debug-prompt, function name (%N) line number (%i) #zsh -i -x -c exit
PS4='%i%{$FG[orange]%}:%{$CG[reset]%}%N'
export PS4
#
# The prompt used for spelling correction. The sequence %R expands to the string which presumably needs spelling correction,
# and %r expands to the proposed correction.
SPROMPT='zsh: correct %B%U%{$FG[blueGray]%}%R%{$CG[reset]%} ➟ %B%U%{$FG[orange]%}%r%{$CG[reset]%}'
SPROMPT+=' [%B%Uy%u%bes, %B%Un%u%bo, %B%Ue%u%bdit, %B%Ua%u%bbort]? '
export SPROMPT

