# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Searches all files in current directory for phrase you give it
# eg ffg yoda\ is\ cool
alias ffg='find . -type f -print0 | xargs -0 grep'
alias xg='xargs grep'

# vim alias
alias v='vim'

# ls aliases
alias la='ls -A'
alias cdd='cd ../..'
alias cddd='cd ../../..'

# git aliases
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gap='git add -p'
alias gl='git log --decorate'
alias glme='git log --decorate author=gupta'
alias gg='git grep'
alias gchb='git checkout -b'
alias gch='git checkout'
alias gp='git pull'
alias gd='git diff'
alias gchr='git checkout --'
alias gpd='git pull origin master'
alias grh='git reset HEAD~1 --soft'
