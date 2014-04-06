do_link ()
{
  if [ -r $2 ]
  then
    echo "$2 already exists"
  else
    echo "Creating $2 symlink"
    ln -s $1 $2
  fi
}

touch ~/.local_bashrc
touch ~/.local_profile

do_link ~/dots/bashrc ~/.bashrc
do_link ~/dots/bash_profile ~/.bash_profile
do_link ~/dots/profile ~/.profile
do_link ~/dots/vim/vimrc ~/.vimrc
do_link ~/dots/tmux.conf ~/.tmux.conf
do_link ~/dots/vim ~/.vim
do_link ~/dots/git ~/.git
do_link ~/dots/git/gitconfig ~/.gitconfig
do_link ~/dots/bin ~/bin

source ~/.bash_profile

echo "Done!"
