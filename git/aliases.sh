# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog2="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch --sort=-committerdate'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gsu='git status -sb -uno'
alias gac='git add -A && git commit -m'
alias gfm='git fetch upstream && git merge upstream/main'
alias gpm='git pull upstream main --rebase'
alias gfr='git fetch upstream && git reset --soft upstream/main'
alias gfrh='git fetch upstream && git reset --hard upstream/main'
alias gfrhm='git fetch upstream && git reset --hard upstream/master'
alias gsquash='git reset $(git merge-base upstream/main $(git rev-parse --abbrev-ref HEAD))'
alias gpu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'

# Assuming we have hub installed
alias hpr='hub pull-request -b main'
alias hprm='hub pull-request -b master'
