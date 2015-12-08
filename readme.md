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

~~Tmux requires reattach-to-user-namespace to use shared system clipboard. To
install reattach-to-user-namespace on mac use:~~ (Edit:
reattach-to-user-namespace does not seem to work any more)

    # brew install reattach-to-user-namespace

Download and install other programs

    cd dotfiles
    ./get_external_files.sh

Depended programs:

- figlet
- rbenv

Configuration
-------------

### Mac:

    # oh-my-zsh
    git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    # ack
    brew install ack
    # rbenv
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
