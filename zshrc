export ZSH="/home/core/.oh-my-zsh"
export PATH="$HOME/.local/bin:/mnt/c/Windows/system32:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/Program Files/Microsoft VS Code/bin:/mnt/c/Program Files/dotnet/:/mnt/c/Program Files/PowerShell/7/:/mnt/c/Users/ruskofd/AppData/Local/Microsoft/WindowsApps:$PATH"

ZSH_THEME="gentoo"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions kubectl helm extract fzf sudo)

source $ZSH/oh-my-zsh.sh

# User configuration
alias cat="bat"
