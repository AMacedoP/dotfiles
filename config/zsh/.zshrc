# If you come from bash you might have to change your $PATH.
# Plugins loaded
plugins=(git zsh-nvm)

# Initial settings for zsh
ZSH_THEME="kolo"
DEFAULT_USER="$USER"
HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOQUIT="true"

# Untracked files for VCS
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Sourcing OhMyZSH
source $ZSH/oh-my-zsh.sh

# Stop the lag in vi mode
export KEYTIMEOUT=1

# Don't log duplicate commands
export HISTCONTROL=ignoredups

# KEYCHAIN
if command -v keychain > /dev/null 2>&1
then
	/usr/bin/keychain --nogui $HOME/.ssh/id_rsa $HOME/.ssh/whitestack $HOME/.ssh/whitestack-bitbucket
	source $HOME/.keychain/$HOST-sh
fi

# Pyenv
if command -v pyenv > /dev/null 2>&1
then
	eval "$(pyenv init -)"
fi

# Aliases
alias zshconfig="$EDITOR $XDG_CONFIG_HOME/zsh/.zshrc"
alias zshrestart="source $XDG_CONFIG_HOME/zsh/.zshrc"
alias aria2ct="aria2c -c -j 3 -k 1M -x 3 -s 3"
alias drop_cache="sudo sh -c \"echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && echo 1\""
