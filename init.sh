mkdir -p ~/.vim
cp -r config ~/.vim/config
cp .vimrc ~/.vimrc

# if you do not have Plug, please use this curl command
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
