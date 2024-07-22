#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:/opt/nvim"
export BAT_THEME="Catppuccin Mocha"
export EDITOR="nvim"

# Alias
alias gg='lazygit'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias top='btop'
alias ls='exa -lh --group-directories-first --icons'
alias lsa='exa -lah --group-directories-first --icons'
alias tree='exa --tree --icons'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vim='nvim'
alias cat='batcat'
alias now='echo -e "\033[38;5;12m   `date +"%T"`"'
alias nowdate='echo -e "\033[38;5;12m 󰸗  `date +"%d-%m-%Y"`"'

# Bash prompt
PS1="\[\033[38;5;14m\] λ \w \[\033[38;5;12m\]\[\033[0m\] "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fetch
export PF_INFO="ascii title os wm editor shell uptime pkgs memory"
pfetch

