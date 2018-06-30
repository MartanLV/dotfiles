# 
# with dummy commit message
#
function _gitMessage() {
    echo "${@:-`curl -s http://whatthecommit.com/index.txt`}" \
        | sed -E 's|[sS][hH]([iI][tT])|sl\1|g' \
        | sed -E 's|[cC][rR]([aA][pP])|n\1|g' \
        | sed -E 's|[fF][uU]([cC][kK])|la\1|g'
}

#
# adds everything and pushes (if upstream is set) 
# gap statement, word
# dummy message if empty call
#
function gap() {
	git add .
	git commit -m "$(_gitMessage $@)"
	git push
}

#
# open man page in preview app
#
manpdf() {
	man -t $1 | open -f -a /Applications/Preview.app
}

#
# find down the paths from pwd
#
findDown() {
	find . -iname "*$1*" ${@:2}
}

#
# find IN files down the paths from pwd
#
findDownIn() { grep "$1" ${@:2} -R . } 

#
# the famous mkcd mkd md
#
mkcd() {
	mkdir -p "$@" && cd "$_"; 
}

#
# ssh with no params will grep for me
#
ssh() {
    [ -z $1 ] && $(
        cat ~/.history | grep -e '^ssh..*' | sort -u | fzf --height=30
    ) || command ssh $@
}


#
# ---[F]-[Z]-[F]---
#
# fasd & fzf change directory - jump using `fasd` if given argument,
# filter output of `fasd` using `fzf` else
#
unalias z 2> /dev/null
z() {
    [ $# -gt 0 ] && fasd_cd -d "$*" && return
    local dir
    dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

#
# [f]uzzy [kill] match and kill a process(es)
#
fkill() {
    local pid
    pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}

#
# [f]uzzy [a]rtisan function
#
function fa() {
    # foce ansi as that program detect's we are not writing into TTY
    local _fapreview="php artisan help {1} --ansi"
    # painting some ansi by hand as the raw flag gives pure list
    local alist=$(a list --raw | sed -El "s/^([a-z,:,-]+)/$(tput setaf 2)\1$(tput sgr0)/")
    # left wrapped preview
    local acmds=$(echo -n $alist | fzf --ansi --preview=$_fapreview --preview-window left:wrap)
    # if not canceled
    if [[ $acmds ]]; then
        # strip the command signature part
        local acmd=$(echo $acmds | sed 's/ .*//')
        # also print the help again
        php artisan help $acmd
        # writes it out for ya
        print -z "php artisan $acmd"
    fi
}

#
# ---[B]-[R]-[E]-[W]---
#
# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
#
bip() {
  local inst=$(brew search | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst);
    do; brew install $prog; done;
  fi
}

#
# Update (one or multiple) selected application(s)
# mnemonic [B]rew [U]pdate [P]lugin
#
bup() {
  local upd=$(brew leaves | fzf -m)

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; brew upgrade $prog; done;
  fi
}

#
# Delete (one or multiple) selected application(s)
# mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)
#
bcp() {
  local uninst=$(brew leaves | fzf -m)

  if [[ $uninst ]]; then
    for prog in $(echo $uninst);
    do; brew uninstall $prog; done;
  fi
}


#
# git
#
_gco() {
    if [ -z $1 ]; then
        local branches branch
        branches=$(git branch -vv) &&
        branch=$(echo "$branches" | fzf +m) &&
        git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
    else 
        git checkout $@
    fi
}

#
# previews diff to HEAD
#
alias glNoGraph='git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr% C(auto)%an" "$@"'
local _viewGitLogLine="$_gitLogLineToHash | xargs -I % sh -c 'git show --color=always % | diff-so-fancy'"
_gco_revision() {
  local commit
  commit=$( glNoGraph | fzf --no-sort --reverse --tiebreak=index --no-multi --ansi --preview $_viewGitLogLine ) && git checkout $(echo "$commit" | sed "s/ .*//")
}

