alias  gp='git push'
alias gfm='git pull --recurse-submodules'
alias  gf='git fetch'
alias  gc='git commit'
alias  gs='git stash'
alias gws='git status'
alias  gm='git merge'
alias gco='git checkout --recurse-submodules'
alias gia='git add'
alias gpc='git push -u origin HEAD'
alias gbd="git fetch -p && LANG=en_US git branch -vv | awk '/: gone]/{print \$1}' | xargs git branch -D"
alias  gC='git clone --recursive'
alias  gd='GIT_EXTERNAL_DIFF=difft git diff'
