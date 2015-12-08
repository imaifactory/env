HOME=~
WORK=$HOME/env
BIN=$HOME/bin

rm -fr $BIN
cp -fR $WORK/bin $HOME/bin
echo "Installed local bin directory"

rm $HOME/.vimrc
cp -f $WORK/vimrc $HOME/.vimrc
echo "Installed ~/.vimrc"

rm $HOME/.screenrc
cp -f $WORK/screenrc $HOME/.screenrc
echo "Installed ~/.screenrc"

rm $HOME/.bashrc
cp -f $WORK/bashrc $HOME/.bashrc
echo "Installed ~/.bashrc"

rm $HOME/.gitconfig
cp -f $WORK/gitconfig $HOME/.gitconfig
echo "Installed ~/.gitconfig"

rm -fr $HOME/.vim
mkdir $HOME/.vim
echo "Created ~/.vim"

git clone https://github.com/tpope/vim-pathogen.git $HOME/.vim
mkdir $HOME/.vim/bundle
echo "Installed vim-pathogen"

cd $HOME/.vim/bundle
git clone https://github.com/Shougo/neocomplcache.git
git clone https://github.com/Shougo/neosnippet.vim.git

# set path
source $HOME/.bashrc
