#!/bin/bash

# Define the directory containing your dotfiles
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/config"

# List of dotfiles and directories with their target locations
files_to_link=(
    ".config/zsh:$HOME/.config/zsh"
    ".config/nvim:$HOME/.config/nvim"
    ".config/tmux:$HOME/.config/tmux"
    ".config/alacritty:$HOME/.config/alacritty"
    ".config/starship.toml:$HOME/.config/starship.toml"
    ".config/aliases:$HOME/.config/aliases"
    ".gitconfig:$HOME/.gitconfig"
    ".zshrc:$HOME/.zshrc"
)

# Loop through the list and create symlinks
for file_mapping in "${files_to_link[@]}"; do
    # Split source and destination using ':' and manually extract the two parts
    src=$(echo "$file_mapping" | cut -d':' -f1)
    dest=$(echo "$file_mapping" | cut -d':' -f2)
    
    # Construct the full source path
    full_src="$DOTFILES_DIR/$src"
    
    # Create the destination directory if it doesn't exist
    mkdir -p "$(dirname "$dest")"
    
    # If a file or symlink already exists at the destination, remove it
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        rm -rf "$dest"
    fi

    # Create the symbolic link
    ln -s "$full_src" "$dest"
    
    echo "Linked $full_src to $dest"
done

echo "All dotfiles and folders have been linked!"
