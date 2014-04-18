# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
[[ -d $HOME/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin

# Add user bin PATH
[[ -d $HOME/bin ]] && PATH=$PATH:$HOME/bin

# Add user bin PATH
[[ -d /usr/local/bin ]] && PATH=/usr/local/bin:$PATH

# Add GVM into a shell session
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Require node js version manager
[[ -r $HOME/.nvm/nvm.sh ]] && source "$HOME/.nvm/nvm.sh"

# Use the goproj to make every dir with .goproj file become a part of the $GOPATH
[[ -d $HOME/.goproj ]] && [[ -f $HOME/.goproj/goproj.sh ]] && source "$HOME/.goproj/goproj.sh"
