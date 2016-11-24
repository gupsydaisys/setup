# Replaces all instances of $1 with $2 in all files in current directory or subdirectory of current directory
replace () {
  if [ $# -eq 2 ]
    then
      grep -rl $1 ./* | xargs sed -i "" "s/$1/$2/gp"
      grep -rl $2 ./*
  fi
}


