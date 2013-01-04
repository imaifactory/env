cp -f .vimrc ~/.vimrc
echo "Installed ~/.vimrc"

cp -f .screenrc ~/.screenrc
echo "Installed ~/.screenrc"

cp -f .bashrc ~/.bashrc
echo "Installed ~/.bashrc"

rm -fr ~/.vim
mkdir ~/.vim
echo "Created ~/.vim"

git clone https://github.com/Shougo/neocomplcache.git ~/.vim
echo "Installed neocomplcache"
