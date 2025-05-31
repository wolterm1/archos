# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS='--bind="ctrl-j:down,ctrl-k:up,ctrl-f:accept,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-b:page-up,ctrl-y:page-down"'

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
plugins=(
    git
)

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias fzf='fzf --preview "bat --color=always {}" --preview-window "~3"'
alias fz='fzf | wl-copy'
alias fzd='find $HOME -type d | fzf'
alias ff='fastfetch'
alias gs='git status'
alias poke='pokemon-colorscripts -r'
alias pokes='pokemon-colorscripts -r -s'
alias poke5='pokemon-colorscripts -r 5' 
alias vim='nvim'
alias vimbinds='nvim /home/matthiasw/Books/NeoVimBinds.txt'
alias cdf='cd $(fzd)' 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

