#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Tap the required repos.
brew tap homebrew/cask-fonts
brew tap cjbassi/gotop

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Fish shell.
brew install fish

# Switch to using brew-installed fish as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install asciinema
brew install awscli
brew install bat
brew install cmus
brew install ffmpeg
brew install fish
brew install flac
brew install gh
brew install git
brew install gnupg
brew install go
brew install gotop
brew install grep
brew install htop
brew install hub
brew install jq
brew install kubectx
brew install kubernetes-cli
brew install mas
brew install minikube
brew install neofetch
brew install node@12
brew install openssl
brew install screenfetch
brew install the_silver_searcher
brew install tldr
brew install trash
brew install yarn
brew install youtube-dl

# Install macOS apps.
brew cask install airtable
brew cask install alfred
brew cask install android-platform-tools
brew cask install appcleaner
brew cask install balenaetcher
brew cask install brave-browser
brew cask install caffeine
brew cask install docker
brew cask install dropbox
brew cask install figma
brew cask install firefox
brew cask install font-hasklig
brew cask install font-hasklig-nerd-font
brew cask install font-jetbrains-mono
brew cask install google-chrome
brew cask install graphiql
brew cask install graphql-playground
brew cask install hyper
brew cask install imageoptim
brew cask install iterm2
brew cask install karabiner-elements
brew cask install keka
brew cask install keycastr
brew cask install macdown
brew cask install minikube
brew cask install mos
brew cask install nightowl
brew cask install notion
brew cask install numi
brew cask install openemu
brew cask install plug
brew cask install pock
brew cask install postman
brew cask install qlimagesize
brew cask install sequel-pro
brew cask install sip
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install teamviewer
brew cask install tor-browser
brew cask install transmission
brew cask install tunnelbear
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install vox


# Remove outdated versions from the cellar.
brew cleanup
