# -------------------------------------------------
# Initial Setup for vim
# -------------------------------------------------

echo "Initial Setup for vim"

# init vim config
mkdir -p ~/.vim

# copy vimrc & config
cp src/.vimrc ~/.vimrc
cp -r src/config ~/.vim/config


# -------------------------------------------------
# Install vim-plug
# -------------------------------------------------

# Ask the user a question
read -p 'Do you install `plug.vim` ? [y/n]: ' answer

# Convert the answer to lowercase
answer=$(echo $answer | tr '[:upper:]' '[:lower:]')

# Install vim-plug if the answer is yes
if [ "$answer" == 'y' ] || [ "$answer" == 'yes' ]; then
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
   echo 'OK: Good bye!'
   echo 'exiting...'
   exit 0
fi
