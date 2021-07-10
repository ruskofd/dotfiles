export ZSH="/home/core/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="gentoo"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions kubectl helm extract fzf sudo docker docker-compose lxd-completion-zsh)

source $ZSH/oh-my-zsh.sh

### SSH Agent
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
  ssh-add $HOME/.ssh/{id_ed25519,id_ansible} > /dev/null
fi
