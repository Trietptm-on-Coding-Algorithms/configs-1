command_exists () {
	type "$1" &> /dev/null ;
}

# Add user bin PATH
[[ -d $HOME/bin ]] && PATH=$PATH:$HOME/bin

# Add user bin PATH
[[ -d /usr/local/bin ]] && PATH=$PATH:/usr/local/bin

# Add GVM into a shell session
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Require node js version manager
[[ -r $HOME/.nvm/nvm.sh ]] && source "$HOME/.nvm/nvm.sh"

# autojump setting
if command_exists brew; then
	[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ -d $HOME/.gip ]] && source $HOME/.gip/gip.sh

export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

export GOPATH="$HOME/.golib:$HOME/Projects/Go"
export PATH="$PATH:$HOME/.golib/bin:$HOME/Projects/Go/bin"
