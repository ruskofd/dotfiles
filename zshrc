export ZSH="/home/core/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="gentoo"

plugins=(git zsh-autosuggestions kubectl helm fzf extract)

source $ZSH/oh-my-zsh.sh

# User configuration
alias cat="bat"
alias spt="spt --config .config/spotify-tui/client.yml"
