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

# ruby
alias irb='irb --simple-prompt'

# other
alias la='ls -A'
alias f='open -a Finder ./'
alias ~="cd ~"
alias c='clear'

# git aliases
alias g='git'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gca='git commit --amend'
alias gap='git add -p'
alias gl='git log --decorate'
alias glf='git log --follow filename'
alias gg='git grep -n'
alias gbd='git branch -d'
alias gb='git branch'
alias gchb='git checkout -b'
alias gch='git checkout'
alias gcm='git commit -m'
