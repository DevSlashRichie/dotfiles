if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export PATH="$PATH:/home/ricardo/.local/bin"

ZSH_THEME="powerlevel10k/powerlevel10k"

# plugins

plugins=(
    git
    fancy-ctrl-z
    zsh-autosuggestions
    fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source /home/ricardo/.config/zsh-plugins/sudo.plugin.zsh

alias cat='/usr/bin/batcat'
alias catn='/bin/cat'
alias l='ls -la'
alias lt='ls -lhS'
alias ld='ls -d */'
alias lf='ls -p | grep -v /'
alias lfind='find . --name'
alias lext='ls *.$1'
alias mktc='cd $(mktemp -d)'
alias mkt='mktemp -d'
alias k='kubectl'
