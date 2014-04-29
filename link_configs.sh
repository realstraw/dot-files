#! /bin/sh

echo "Linking ~/.zshrc..."
rm ~/.zshrc
ln dot_zshrc ~/.zshrc

echo "Linking ~/.tmux.conf..."
rm ~/.tmux.conf
ln dot_tmux.conf ~/.tmux.conf

echo "Linking ~/.ackrc..."
rm ~/.ackrc
ln dot_ackrc ~/.ackrc

echo "Linking ~/.vrapperrc..."
rm ~/.vrapperrc
ln dot_vrapperrc ~/.vrapperrc

echo "Linking ~/.sbtconfig..."
rm ~/.sbtconfig
ln dot_sbtconfig ~/.sbtconfig

echo "Done!"
