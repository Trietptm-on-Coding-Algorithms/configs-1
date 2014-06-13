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
alias gd="git diff | tig"
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
}

function start() {
	for p in "$@"; do
		start-server ${p}
	done
}

# Get ip address only {{{
# e.g. `getip en0`
function getip() {
	ip=`ifconfig $1 | awk '$2 ~ /^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$/ {print $2}'`
	[ -n "$ip" ] && echo ${ip}
}
# }}}
