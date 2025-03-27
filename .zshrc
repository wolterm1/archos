# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS='--bind="ctrl-j:down,ctrl-k:up,ctrl-f:accept,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-b:page-up,ctrl-y:page-down"'

export ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh
plugins=(
    git
)

(cat ~/.cache/wal/sequences &)

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias fz='fzf | wl-copy'
