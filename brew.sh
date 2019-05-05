#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

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
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install git
brew install hub
brew install htop
brew install bat
brew install asciinema
brew install node
brew install tldr
brew install tmux
brew install trash
brew install yarn
brew install youtube-dl
brew install mas
brew install the_silver_searcher
brew install vifm
brew install clang-format
brew install cmake
brew install cmus

# Install macOS apps.
brew cask install alfred
brew cask install appcleaner
brew cask install caffeine
brew cask install docker
brew cask install dropbox
brew cask install font-hasklig
brew cask install iterm2
brew cask install keka
brew cask install keycastr
brew cask install night-owl
brew cask install pocket-casts
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install teamviewer
brew cask install tor-browser
brew cask install transmission
brew cask install tunnelbear
brew cask install visual-studio-code
brew cask install vlc
brew cask install vox
brew cask install plug
brew cask install sloth


# Remove outdated versions from the cellar.
brew cleanup
