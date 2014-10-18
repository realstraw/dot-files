#! /usr/bin/env bash

PROJECT_ROOT=$(readlink "$0" || printf "$0" | xargs dirname)

COLORS=$PROJECT_ROOT/colors

echo "Get BeanShell..."
if [ -d ~/.bsh ]; then
    echo "~/.bsh already exists..."
else
    echo "creating ~/.bsh..."
    mkdir ~/.bsh
fi

cd ~/.bsh
echo "Downloading BeanShell jar file..."
wget http://www.beanshell.org/bsh-2.0b4.jar

echo "Done!"
