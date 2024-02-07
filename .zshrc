export PATH=$HOME/.local/bin:$PATH
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ramzan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dracula"
plugins=(git npm fd ripgrep fzf fzf-tab colorize colored-man-pages docker docker-compose python)
source $ZSH/oh-my-zsh.sh

color=bg+:#44475a,bg:#282a36,border:#6272a4,spinner:#f1fa8c,hl:#bd93f9,fg:#f8f8f2,header:#6272a4,info:#50fa7b,pointer:#50fa7b,marker:#ff79c6,fg+:#f8f8f2,prompt:#ff5555,hl+:#ff5555


typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
alias vim="nvim"
alias la="exa -abghl --icons --git --color=automatic"
alias ll="exa -lg --icons --color=automatic"
alias ls="exa --icons --color=automatic"

# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export FZF_DEFAULT_OPTS='--color=bg+:-1,gutter:-1'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(starship init zsh)"

# bun completions
[ -s "/home/baerchen/.bun/_bun" ] && source "/home/baerchen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
