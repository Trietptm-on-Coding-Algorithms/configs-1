# Set the default editor to vim.
export EDITOR=vim

# Load bash aliases.
[[ -r "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

export GOPATH="$HOME/.golib:$HOME/GoProjects"
export PATH="$PATH:$HOME/.golib/bin:$HOME/GoProjects/bin"
