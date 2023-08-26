#! /bin/bash
# Create symbolic links for each file of this directory
# in the correct place in the Ubuntu operating system

# Store the script directory for later reference
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# BASHRC
ln -s "$DOTFILES_DIR"/.bashrc "$HOME"/.bashrc  

# ALIASES (my aliases for the bashrc)
ln -s "$DOTFILES_DIR"/.aliases "$HOME"/.aliases  

# VIMRC
ln -s "$DOTFILES_DIR"/.vimrc "$HOME"/.vimrc  

# GIT
ln -s "$DOTFILES_DIR"/.gitconfig "$HOME"/.gitconfig 
