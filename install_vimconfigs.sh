if [ ! -e ~/.vim/bundle/Vundle.vim ]
then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp vimrc ~/.vimrc
    vim +BundleInstall -c q -c q
fi
#to install YCM:
#apt-get install build-essential cmake python-dev
#cd ~/.vim/bundle/YouCompleteMe/
#./install.sh 
