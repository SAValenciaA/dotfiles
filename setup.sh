#!/usr/bin/env bash

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# dotfiles that have their own folder in config
config_app=(
  btop
  hypr
  kitty
  lf
  mako
  waybar
  wofi
  zathura
)

# dotfiles that dont have their own folder in config
config=(
  starship
)

# dotfiles in the home folder
home=(
  git
  bash
)

# run the stow command for the passed in directory ($2) in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install apps in the .config directory
for app in ${config_app[@]}; do
  mkdir $HOME/.config/$app
  stowit $HOME/.config/$app $app
done

# install apps in the .config directory
for app in ${config[@]}; do
  stowit $HOME/.config $app
done

# install apps in the home directory
for app in ${home[@]}; do
  stowit $HOME/ $app/*
done

echo ""
echo "##### ALL DONE"
