
# adds everything and pushes (if upstream is set) with dummy commit message
function _gitMessage() { echo "${@:-`curl -s http://whatthecommit.com/index.txt`}" }
function gap() { g add . ; gc -m "$(_gitMessage $@)" ; gp } # gap statement, word
# open man page in preview app
manpdf() {
	man -t $1 | open -f -a /Applications/Preview.app
}

# find down the paths from pwd
f() {
	find . -iname "*$1*" ${@:2}
}

# find IN files down the paths from pwd
r() { grep "$1" ${@:2} -R . } 

mkcd() {
	mkdir -p "$@" && cd "$_"; 
}

doc(){
    i=0
    arr=()
    for f in ~/Documents/*; do
        if [[ -d $f ]];then
            i=$(($i+1))
            echo "$i) $(basename $f)";
            arr[$i]=$f
        fi
    done
    read c
    if ! [[ -z $c ]];then
        if ! [[ -z ${arr[$c]} ]];then
            cd ${arr[$c]}
        fi
    fi
}
