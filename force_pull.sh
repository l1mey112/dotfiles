cd $(dirname "$BASH_SOURCE")

git fetch origin master
git reset origin/master --hard

bash copy_dots.sh