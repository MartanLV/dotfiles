# 
# adds everything and pushes (if upstream is set) with dummy commit message
#
function _gitMessage() { echo "${@:-`curl -s http://whatthecommit.com/index.txt`}" }

#
# gap statement, word
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

