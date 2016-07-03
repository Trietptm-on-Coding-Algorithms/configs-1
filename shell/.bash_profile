# Load RVM into a shell session *as a function*

# Set utf8
export LANG='UTC-8'
export LC_ALL='en_US.UTF-8'

# Add user bin PATH
[[ -d $HOME/bin ]] && PATH=$PATH:$HOME/bin

# Add user bin PATH
[[ -d /usr/local/bin ]] && PATH=$PATH:/usr/local/bin

# Add GVM into a shell session
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Require node js version manager
[[ -d $HOME/.nvm ]] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# autojump setting
if command_exists brew; then
	[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

export GOPATH="$HOME/.golib:$HOME/Projects/Go"
[[ -d $HOME/.golib ]] && export PATH="$PATH:$HOME/.golib/bin"
[[ -d $HOME/Projects/Go/bin ]] && export PATH="$PATH:$HOME/Projects/Go/bin"
[[ -d $HOME/.composer/vendor/bin ]] && export PATH="$PATH:$HOME/.composer/vendor/bin"
