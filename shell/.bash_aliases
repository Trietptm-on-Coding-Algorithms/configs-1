# aliases for tmux {{{
alias tn="tmux new -s"
alias ta="tmux a -t"
alias t="tmux"
# }}}

# aliases for git {{{
alias gd="git diff | tig"
# }}}

# aliases for ps {{{
alias 'ps?'='ps aux | grep'
# }}}

# alias for ping {{{
alias p="ping"
# }}}

# fix rake bug on zsh {{{
alias rake='noglob rake'
# }}}

# alias for spartan servers {{{
spServer="$HOME/Projects/tap4fun/server-alias/sp.server"
[[ -r $spServer ]] && source $spServer
# }}}

# delete file or directory to ~/lost+found {{{
function del () {
	trashDir="${HOME}/lost+found/"
	[[ -d ${trashDir} ]] || mkdir ${trashDir}
	mv $1 ${trashDir}
}
# }}}

alias grep="grep -I"

function start-server () {
	[ $1 = 'mysql' ] && mysql.server start
	[ $1 = 'redis' ] && redis-server /etc/redis/default.conf
}

alias add-ssh="ssh-add ~/.ssh/id_rsa"

# Get ip address only {{{
# e.g. `getip en0`
function getip() {
	ip=`ifconfig $1 | awk '$2 ~ /^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$/ {print $2}'`
	[ -n "$ip" ] && echo ${ip}
}
# }}}
