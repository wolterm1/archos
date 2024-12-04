# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh
plugins=(
    osx
    npm
    git
    web-search
    pip
    zsh-syntax-highlighting
    zsh-autosuggestions
    jsontools
)


alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
