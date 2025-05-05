#!/usr/bin/env bash

project_root="$(cd "`dirname "$0"`"; pwd)"
echo $project_root

echo "Linking ~/.zshrc..."
rm ~/.zshrc
ln $project_root/dot_zshrc ~/.zshrc

echo "Linking zsh theme..."
rm ~/.realstraw.zsh-theme
ln $project_root/dot_realstraw.zsh-theme ~/.realstraw.zsh-theme

echo "Linking ~/.ackrc..."
rm ~/.ackrc
ln $project_root/dot_ackrc ~/.ackrc

echo "Linking ~/.vrapperrc..."
rm ~/.vrapperrc
ln $project_root/dot_vrapperrc ~/.vrapperrc

echo "Linking ~/.sbtconfig..."
rm ~/.sbtconfig
ln $project_root/dot_sbtconfig ~/.sbtconfig

echo "Linking ~/.inputrc..."
rm ~/.inputrc
ln $project_root/dot_inputrc ~/.inputrc

# This is for mac which does not use inputrc
echo "Linking ~/.editrc..."
rm ~/.editrc
ln $project_root/dot_editrc ~/.editrc

# For ctags configs
echo "Linking ~/.ctags"
rm ~/.ctags
ln $project_root/dot_ctags ~/.ctags

# For gitignore
echo "Linking ~/.gitignore"
rm ~/.gitignore
ln $project_root/dot_gitignore ~/.gitignore

# For yabairc
echo "Linking ~/.yabairc"
rm ~/.yabairc
ln $project_root/dot_yabairc ~/.yabairc

# For skhdrc
echo "Linking ~/.skhdrc"
rm ~/.skhdrc
ln $project_root/dot_skhdrc ~/.skhdrc

# Link bin files
echo "Create the directory if it does not exist..."
[ ! -d ~/bin ] && mkdir ~/bin
echo "Done!"

echo "Linking all files in bin..."
for f in $project_root/bin/*; do
    file_name=$(basename $f)
    file_path=~/bin/$file_name
    echo "  $file_name"
    [ -f $file_path ] && rm $file_path
    ln $f $file_path
done

echo "Linking all files in dot_config..."
mkdir -p ~/.config
for f in $project_root/dot_config/*; do
    file_name=$(basename $f)
    file_path=~/.config/$file_name
    echo "  $file_name"
    [ -e $file_path ] && rm -rf $file_path
    ln -s $f $file_path
done

echo "Done!"
