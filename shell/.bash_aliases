alias grep="grep -I"

# aliases for task {{{
alias tk="task"
# }}}

# aliases for tmux {{{
alias tn="tmux new -s"
alias ta="tmux a -t"
alias t="tmux"
# }}}

# aliases for git {{{
alias gd="git diff"
# }}}

# aliases for ps {{{
alias 'ps?'='ps aux | grep -i'
# }}}

# alias for ping {{{
alias p="ping"
# }}}

# alias for open {{{
alias o="open"
# }}}

# fix rake bug on zsh {{{
alias rake='noglob rake'
# }}}

alias next='itunes next'

# delete file or directory to ~/lost+found {{{
function del () {
	trashDir="${HOME}/lost+found/"
	[[ -d ${trashDir} ]] || mkdir ${trashDir}
	mv $1 ${trashDir}
}
# }}}

alias up="uptime"

function start-server () {
	[ $1 = 'mysql' ] && mysql.server start && echo "MySQL start"
	[ $1 = 'redis' ] && redis-server /usr/local/etc/redis.conf && echo "Redis start"
	[ $1 = 'mongodb' ] && mongod --fork --config /usr/local/etc/mongod.conf && echo "Mongodb start"
}

function start() {
	for p in "$@"; do
		start-server ${p}
	done
}

# Get ip address only {{{
# e.g. `getip en0`
function getip() {
	ifconfig | grep "inet " | awk '{ print $2 }'
}
# }}}

#
# Qu Jing iTerm & Terminal Setup Script
# version 0.4
# Felix Ding
# Nov 18, 2014
#
function start-qujing {
  export http_proxy='http://theironislands.f.getqujing.net:48057'
  export HTTPS_PROXY='http://theironislands.f.getqujing.net:48057'
}
