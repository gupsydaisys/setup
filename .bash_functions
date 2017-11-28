# Replaces all instances of $1 with $2 in all files in current directory or subdirectory of current directory
# Usage:    `replace text_to_find text_to_replace_it_with`
#
# Output:   <List of files where you made the changes"
function replace () {
  if [ $# -eq 2 ]
    then
      #grep -rl $1 ./* | xargs sed -i "" "s/$1/$2/gp"
      perl -pi -w -e "s/$1/$2/g;" ./*
      grep -rl $2 ./*
  fi
}

# Get a list of all files with $1 in the pathname
#
# Usage:    `list case_moni`
#
# Output:   <List of all files with case_moni in file name>
function list () {
  find . -name "*$1*" -prune
}

# Executes command cd and ls in one easy line
function cl() {
  cd "$@" && la;
}

# Remove all merged local branches
function dmb() {
  git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d
}

# Commits with the story id appended to the start of the message
# Input: a commit message
function gcm() {
  var1="[$(echo $git_branch | cut -f2 -d/)]"
  git commit -m "$var1 $1"
}
