# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
[[ -d $HOME/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin

# Add user bin PATH
[[ -d $HOME/bin ]] && PATH=$PATH:$HOME/bin

# Add GVM into a shell session
[[ -f $HOME/.gvm/scripts/gvm ]] && source "$HOME/.gvm/scripts/gvm"
