HOME=~
WORK=$HOME/$1

# git install
sudo yum install git -y
echo "Installed git"

rm $HOME/.vimrc
cp -f $WORK/.vimrc $HOME/.vimrc
echo "Installed ~/.vimrc"

rm $HOME/.screenrc
cp -f $WORK/.screenrc $HOME/.screenrc
echo "Installed ~/.screenrc"

rm $HOME/.bashrc
cp -f $WORK/.bashrc $HOME/.bashrc
echo "Installed ~/.bashrc"

rm $HOME/.gitconfig
cp -f $WORK/.gitconfig $HOME/.gitconfig
echo "Installed ~/.gitconfig"

rm -fr $HOME/.vim
mkdir $HOME/.vim
echo "Created ~/.vim"

git clone https://github.com/tpope/vim-pathogen.git $HOME/.vim
mkdir $HOME/.vim/bundle
echo "Installed vim-pathogen"

cd $HOME/.vim/bundle
git clone https://github.com/Shougo/neocomplcache.git
git clone https://github.com/jimenezrick/vimerl.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/Shougo/neosnippet.vim.git
git clone https://github.com/itchyny/lightline.vim.git

# prepare aws tools
curl https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
pyenv update
pyenv install 2.7.6
pip install awscli

# install cpanm
sudo yum install -y gcc openssl openssl-devel zlib zlib-devel perl-devel
cd $HOME/bin
curl -LOk http://xrl.us/cpanm
chmod u+x cpanm

source $HOME/.bashrc
