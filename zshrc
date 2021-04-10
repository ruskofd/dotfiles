export ZSH="/home/core/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="gentoo"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions kubectl helm extract fzf sudo lxd-completion-zsh)

source $ZSH/oh-my-zsh.sh
