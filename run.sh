dir=~/dotfiles
older=~/dotfiles_old
files="vimrc gitconfig bashrc"
vim_files=".vim"

# Create dotfiles_old in homedir

echo "Creating $older for backup of any existing dotfiles in ~"
mkdir $older
echo "...done"

echo "create colors files for vim"
cp -ra ./.vim ~
echo "..done"
# move any existig dotfiles in homedir to dotfiles_old.
# and then create symlink
for file in $files 
do
    echo "Moving any existing dotfiles from ~ to $older"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $files in home directory"
    ln -snf $dir/$file ~/.$file
done
