export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;36m\]◉  \[\033[0;34m\]\W\[\033[0;32m\]\$(parse_git_branch)\[\033[0;37m\] "

#alias
alias l="ls -la"
alias ..="cd .."
alias www="cd /Applications/MAMP/htdocs"
alias reload="source ~/.bash_profile"
alias artisan="php artisan"

source /Users/JuanVqz/.rvm/scripts/rvm
export PATH=$PATH:~/.composer/vendor/bin
