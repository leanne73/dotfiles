alias gs='git status'
alias gp='git pull'
alias gd='git diff'
alias gds='git diff --staged'

alias ga='git add'
alias ga.='git add .'
alias gm='git commit -m'

alias gpush='git push'
alias gpushup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gpushfl='git pushfl'

alias gbrl='git br -l'
alias gbrd='git br -d'

# Delete branches that have been merged into master
function git-prune() {
  git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
}
