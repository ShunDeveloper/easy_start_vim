# -------------------------------------------------
# Initial Setup for vim
# -------------------------------------------------

echo "Updating Vim Configurations..."
echo "This script will remove your old configurations"
echo "Please backup your old configurations"

# Ask the user a question
read -p 'Do you agree to remove old setting? [y/n]: ' answer

# Convert the answer to lowercase
answer=$(echo $answer | tr '[:upper:]' '[:lower:]')

# Check the answer
if [ "$answer" == 'y' ] || [ "$answer" == 'yes' ]; then
   # Remove old configurations
   rm -r ~/.vim/config
   rm ~/.vimrc

   # Copy new configurations
   cp -r src/config ~/.vim/config
   cp src/.vimrc ~/.vimrc
else
   echo 'OK: Please backup!'
   echo 'exiting...'
   exit 0
fi

echo "Done!"
