#! /usr/bin/env bash

set -e

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

echo "Get avro-tools..."
if [ -d ~/bin/avro-tools ]; then
    echo "~/bin already exists, deleting it..."
    rm -rf ~/bin/avro-tools
fi

echo "creating ~/bin..."
mkdir -p ~/bin/avro-tools

cd ~/bin/avro-tools
wget http://www-us.apache.org/dist/avro/stable/java/avro-tools-1.8.2.jar

echo "Done!"
