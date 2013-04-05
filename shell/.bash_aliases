# aliases for tmux {{{
alias tn="tmux new -s"
alias ta="tmux a -t"
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
