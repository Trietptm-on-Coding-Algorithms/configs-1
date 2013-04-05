# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
[[ -d $HOME/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin

# Add user bin PATH
[[ -d $HOME/bin ]] && PATH=$PATH:$HOME/bin

spServer="$HOME/Projects/tap4fun/server-alias/sp.server"
[[ -r $spServer ]] && source $spServer
