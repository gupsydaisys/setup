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
alias opensesame='open -a TextEdit'
alias ~="cd ~"
alias c='clear'
alias t='FLASK_ENV="testing" python3 -m pytest -v'
# git aliases
alias gcats="git commit --allow-empty -m 'meow'"
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
alias aa='astro airflow'
alias aa-restart='astro airflow stop && astro airflow start'
alias pip3='python3 -m pip'

# ssh
alias ssh-onto-test-bastion='ssh -i ~/.ssh/test-bastion ec2-user@ec2-54-92-133-1.compute-1.amazonaws.com'
alias ssh-onto-bastion='ssh -i ~/.ssh/serena-ec2-key gsuitefederatedrole-serenad85826@ec2-52-207-201-217.compute-1.amazonaws.com'
alias ssh-onto-death="ssh -i ~/.ssh/serena-ec2-key gsuitefederatedrole-serenad85826@ec2-52-70-203-49.compute-1.amazonaws.com"
