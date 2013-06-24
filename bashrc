echo "BASHRC RUN"

alias b="bundle"
alias be="bundle exec"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gd="git difftool"
alias gdc="git difftool --cached"
alias gl="git log"
alias ls="ls -G"
alias beep="echo -en '\007'"

# Runs the specs of a project, or a file referred to by FILE_TO_TEST
function spec_test { bundle exec rspec $FILE_TO_TEST -c || beep; }

. ~/.local_bashrc
