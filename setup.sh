#!/bin/bash

# Setups
# Setup brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask vivaldi

brew install --cask visual-studio-code

brew install --cask spotify

brew install --cask ghostty

brew install --cask steam

brew install --cask obsidian

brew install kubectl

# docker

# nodejs/nvm

brew install go


# Dock
# Add new apps to dock
brew install dockutil
dockutil --add /Applications/Visual\ Studio\ Code.app
dockutil --add /Applications/Spotify.app
dockutil --add /Applications/Vivaldi.app
dockutil --add /Applications/Obsidian.app
brew uninstall dockutil
# left dock
defaults write com.apple.dock orientation -string left
# hide recents
defaults write com.apple.dock show-recents -bool false && killall Dock


# MacOS general configs
defaults write com.apple.controlcenter "BatteryShowPercentage" -bool true && killall ControlCenter
defaults write com.apple.finder ShowPathbar -bool true && killall Finder

# Config Git
git config --global user.email “itsmemarconi@gmail.com”                


# Envs
cp ./envs/ghostty $HOME/Library/Application\ Support/com.mitchellh.ghostty/config