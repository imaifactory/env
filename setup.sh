cd ~/

cp -f .vimrc ~/.vimrc
echo "Installed ~/.vimrc"

cp -f .screenrc ~/.screenrc
echo "Installed ~/.screenrc"

cp -f .bashrc ~/.bashrc
echo "Installed ~/.bashrc"

cp -f .gitconfig ~/.gitconfig
echo "Installed ~/.gitconfig"

rm -fr ~/.vim
mkdir ~/.vim
echo "Created ~/.vim"

git clone https://github.com/Shougo/neocomplcache.git ~/.vim
echo "Installed neocomplcache"

git clone https://github.com/ggreer/the_silver_searcher
cd the_silver_searcher && ./build.sh && install

rm -fr ~/aws
cp -fR aws ~/aws
export PATH=$PATH:~/aws/s3cmd
echo "Installed aws tools"
