fpath+=$HOME/.zsh/typewritten

export TYPEWRITTEN_PROMPT_LAYOUT="oneline"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_ARROW_SYMBOL="➜"
export TYPEWRITTEN_RELATIVE_PATH="home"
export TYPEWRITTEN_COLORS="git_branch:#808080;current_directory:#87CEEB;symbol:#FF80BF;right_prompt_prefix:#808080"
export TYPEWRITTEN_RIGHT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)

autoload -U promptinit; promptinit
prompt typewritten

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/git-aliases.zsh

alias ssh="kitty +kitten ssh"
alias ls="exa"
alias ll="exa -alh"
alias tree="exa --tree"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(atuin init zsh --disable-up-arrow)"
