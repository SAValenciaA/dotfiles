#!/usr/bin/env bash

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# dotfiles that have their own folder in config
config_with_folder=(
  btop
  hypr
  kitty
  lf
  mako
  waybar
  wofi
  zathura
  nvim
)

# dotfiles that dont have their own folder in config
config_without_folder=(
  starship
)

# dotfiles in the home folder
config_home_folder=(
  git
  bash
  tmux
)

# run the stow command for the passed in directory ($2) in location $1
stowit() {
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R -t $@
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install configurations with their own folder in .config
for app in ${config_with_folder[@]}; do
  mkdir $HOME/.config/$app
  stowit $HOME/.config/$app $app
done

# install configurations without folder in the .config
for app in ${config_without_folder[@]}; do
  stowit $HOME/.config $app
done

# install configuration in the home folder
for app in ${config_home_folder[@]}; do
  stowit $HOME/ $app/
done

echo ""
echo "##### ALL DONE"
