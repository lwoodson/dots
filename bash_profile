. ~/.bashrc
. ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
source ~/.ondir
eval "$(docker-machine env default)"
export GOPATH=/Users/lance.woodson/workspace
export PATH=$GOPATH/bin:$PATH
