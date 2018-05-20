dir=~/dotfiles
older=~/dotfiles_old
vim_color=colors
files="vimrc gitconfig bashrc"

# Create dotfiles_old in homedir

echo "Creating $older for backup of any existing dotfiles in ~"
mkdir $older
echo "...done"

# move any existig dotfiles in homedir to dotfiles_old.
# and then create symlink
for file in $files 
do
    echo "Moving any existing dotfiles from ~ to $older"
    mv ~/.$file $older
    echo "Creating symlink to $files in home directory"
    ln -snf $dir/$file ~/.$file
done
# make color scheme folder for vim
echo "color scheme file create for vim"
if [ ! -d "./.vim" ]; then
	mkdir ~/.vim
fi
cp -ra $dir/$vim_color ~/.vim/
