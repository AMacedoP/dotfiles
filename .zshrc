# Import colorscheme from wal
(cat /home/alex/.cache/wal/sequences &)

# If you come from bash you might have to change your $PATH.
# Plugins loaded
plugins=(git)

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

# Initial settings for zsh
ZSH_THEME="agnoster"
# export TERM="rxvt-unicode-256color"
DEFAULT_USER="alex"
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOQUIT="true"

source $ZSH/oh-my-zsh.sh

# Untracked files for VCS
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Set vim as editor
export EDITOR="vim"

# Set ssh key path
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Stop the lag in vi mode
export KEYTIMEOUT=1

#Don't log duplicate commands
export HISTCONTROL=ignoredups

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias reboot="reboot now"
alias shutdown="shutdown now"
alias i3config="vim ~/.config/i3/config"
alias i3blocks="vim ~/.config/i3/i3blocks.conf"
alias update="pacaur -Syu"
alias vimconfig="vim ~/.vimrc"
alias s="startx -- -keeptty > ~/.xorg.log 2>&1"
