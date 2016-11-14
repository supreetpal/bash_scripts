function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}
eval $(thefuck --alias)
export PATH="/usr/local/bin:$PATH:/Users/Supreet/Library/Android/sdk/tools/:$HOME/.meteor"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\e[0;33m\]\@ | \[\e[0;32m\]\W\[\e[0;34m\] \$(parse_git_branch)\[\e[0m\] "
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
