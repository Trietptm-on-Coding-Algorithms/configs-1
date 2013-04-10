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
