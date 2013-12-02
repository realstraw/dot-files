#! /bin/sh

echo "Linking ~/.zshrc..."
rm ~/.zshrc
ln dot_zshrc ~/.zshrc

echo "Linking ~/.tmux.conf..."
rm ~/.tmux.conf
ln dot_tmux.conf ~/.tmux.conf

echo "Done!"
