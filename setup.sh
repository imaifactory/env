HOME=~
WORK=$HOME/homedirectory

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

git clone https://github.com/Shougo/neocomplcache.git $HOME/.vim
echo "Installed neocomplcache"

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
