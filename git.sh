# General git helpers

alias rebasem="git fetch --all; git rebase origin/master"
alias ga="git add ."
alias gb="git branch"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gp="git push"

# The --force-with-lease option is like --force
# but will not overwrite other people's changes.
alias gpf="git push --force-with-lease"
