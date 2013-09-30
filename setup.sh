HOME=~
WORK=$HOME/homedirectory

# git install
sudo yum install git -y
git config --global user.name "imai-factory"
git config --global user.email imai.factory@gmail.com
echo "Installed and configured git"


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
cd $HOME/homedirectory
wget http://elasticmapreduce.s3.amazonaws.com/elastic-mapreduce-ruby.zip
rm -fr $HOME/aws
mkdir $HOME/aws
unzip -d $HOME/aws/emrclient elastic-mapreduce-ruby.zip
rm elastic-mapreduce-ruby.zip
echo "Installed aws tools"

# local bin
cd $HOME
rm -fr bin
mkdir bin

# install cpanm
cd $HOME/bin
curl -LOk http://xrl.us/cpanm
chmod u+x cpanm

source $HOME/.bashrc
