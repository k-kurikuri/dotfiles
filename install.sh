#!/bin/bash

echo "install homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "brew update..."
which brew >/dev/null 2>&1 && brew update

echo "brew upgrade..."
brew upgrade --all

# TODO: formulas....
formulas=(
    git
    wget
    curl
    tree
    openssl
    peco
    vim
    mysql
    composer
    markdown   
)
