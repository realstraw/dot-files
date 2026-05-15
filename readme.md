My Config Files
===============

**Note**: these dot files does not include vimrc or gvimrc, vim configs are in a
separate repo here: https://github.com/realstraw/dotvim

Install
-------

Uses [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks.

    cd dotfiles
    make install

To uninstall:

    make clean

If upgrading from an older version (before Stow-managed bin scripts), run
`make migrate` first (or just `make install`, which runs it automatically).

Dependencies
------------

Download and install other programs

    cd dotfiles
    ./get_external_files.sh

Depended programs:

- [GNU Stow](https://www.gnu.org/software/stow/)
- figlet
- rbenv

Other
-----

FoxyProxy settings are located in `other` folder, need to manually import the
settings.
