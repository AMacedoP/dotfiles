# If you come from bash you might have to change your $PATH.
# Plugins loaded
plugins=(git)

# Initial settings for zsh
ZSH_THEME="kolo"
DEFAULT_USER="$USER"
HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOQUIT="true"

# Untracked files for VCS
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Completions file
fpath=($XDG_DATA_HOME/zsh/completions $fpath)

# Sourcing OhMyZSH
source $ZSH/oh-my-zsh.sh

# Stop the lag in vi mode
export KEYTIMEOUT=1

# Don't log duplicate commands
export HISTCONTROL=ignoredups

# Completion
autoload -U compinit
compinit -i

# KEYCHAIN
if command -v keychain > /dev/null 2>&1
then
	/usr/bin/keychain --nogui $HOME/.ssh/id_rsa $HOME/.ssh/whitestack $HOME/.ssh/whitestack-bitbucket
	source $HOME/.keychain/$HOST-sh
fi

# Gcloud
## The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alex/google-cloud-sdk/path.zsh.inc' ]; then . '/home/alex/google-cloud-sdk/path.zsh.inc'; fi
## The next line enables shell command completion for gcloud.
if [ -f '/home/alex/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/alex/google-cloud-sdk/completion.zsh.inc'; fi

# Aliases
alias zshconfig="$EDITOR $XDG_CONFIG_HOME/zsh/.zshrc"
alias zshrestart="source $XDG_CONFIG_HOME/zsh/.zshrc"
alias aria2ct="aria2c -c -j 3 -k 1M -x 3 -s 3"
alias drop_cache="sudo sh -c \"echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && echo 1\""

# Starship init
eval "$(starship init zsh)"
# Direnv init
eval "$(direnv hook zsh)"
# Rtx init
eval "$(rtx activate zsh)"
