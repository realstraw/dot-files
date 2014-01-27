My Config Files
===============

**Note**: these dot files does not include vimrc or gvimrc, vim configs are in a
separate repo.

Install
-------

To link the rc files:

    cd dotfiles
    ./link_configs.sh

Dependencies
------------

Tmux requires reattach-to-user-namespace to use shared system clipboard. To
install reattach-to-user-namespace on mac use:

    brew install reattach-to-user-namespace
