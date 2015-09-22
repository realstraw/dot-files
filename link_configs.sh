#! /bin/sh

echo "Linking ~/.zshrc..."
rm ~/.zshrc
ln dot_zshrc ~/.zshrc

echo "Linking zsh theme..."
rm ~/.realstraw.zsh-theme
ln dot_realstraw.zsh-theme ~/.realstraw.zsh-theme

echo "Linking ~/.tmux.conf..."
rm ~/.tmux.conf
ln dot_tmux.conf ~/.tmux.conf
echo "Linking ~/.tmux/dev..."
rm ~/.tmux/dev
mkdir -p ~/.tmux
ln dot_tmux_dev ~/.tmux/dev

echo "Linking ~/.ackrc..."
rm ~/.ackrc
ln dot_ackrc ~/.ackrc

echo "Linking ~/.vrapperrc..."
rm ~/.vrapperrc
ln dot_vrapperrc ~/.vrapperrc

echo "Linking ~/.sbtconfig..."
rm ~/.sbtconfig
ln dot_sbtconfig ~/.sbtconfig

echo "Linking ~/.inputrc..."
rm ~/.inputrc
ln dot_inputrc ~/.inputrc

# This is for mac which does not use inputrc
echo "Linking ~/.editrc..."
rm ~/.editrc
ln dot_editrc ~/.editrc

# For ctags configs
echo "Linking ~/.ctags"
rm ~/.ctags
ln dot_ctags ~/.ctags

echo "Done!"
