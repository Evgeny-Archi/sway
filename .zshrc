# Set up the prompt

fpath+=($HOME/.zsh/typewritten)

export TYPEWRITTEN_PROMPT_LAYOUT="oneline"
export TYPEWRITTEN_ARROW_SYMBOL="➜"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_RELATIVE_PATH="home"
export TYPEWRITTEN_COLORS="git_branch:#808080;current_directory:blue;symbol:#FF80BF;right_prompt_prefix:#808080"
export TYPEWRITTEN_RIGHT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)

autoload -U promptinit; promptinit
prompt typewritten

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source /home/evgeny/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/evgeny/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
