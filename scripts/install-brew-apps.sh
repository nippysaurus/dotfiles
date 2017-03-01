check() {
  brew cask
}

install() {
  brew cask install --appdir="/Applications" $(cat ~/.dotfiles/Caskfile | grep -v "#")
}
