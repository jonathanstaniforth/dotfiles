# zstyle commands
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' # Change to case insensitive tab completions
zstyle ':completion:*' list-suffixeszstyle ':completion:*' expand prefix suffix # Enable partial completion suggestions

# Autoload
autoload -Uz compinit && compinit # Enable tab completion

# Shell options
setopt APPEND_HISTORY # Prevent overwritting of history data by different sessions
setopt AUTO_CD # Enable automatic changing of directory
setopt CORRECT # Enable spelling correction for commands
setopt CORRECT_ALL # Enable spelling correction for all arguments
setopt EXTENDED_HISTORY # Add additional information to the shell history record
setopt HIST_IGNORE_DUPS # Prevent storing of duplicate commands to the history file
setopt HIST_REDUCE_BLANKS # Remove blank lines from the history
setopt HIST_VERIFY # Enable confirmation of commands from history before executing
setopt INC_APPEND_HISTORY # Add commands to history file when typed
setopt NO_CASE_GLOB # Change to case insensitive globbing
setopt SHARE_HISTORY # Enable sharing of history between across sessions

# Shell variables
GPG_TTY=$(tty)
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # Location for the shell history
HISTSIZE=2000 # Number of commands to save for the session
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# ' # Set the prompt information
RPROMPT='%*' # Set the right sided prompt information
SAVEHIST=5000 # Number of commands to save in the history file

# Paths
path+=$HOME/.cargo/bin
path+=$HOME/.poetry/bin

# Aliases
alias g='git'

## Global Aliases
alias -g ll='ls -A'
