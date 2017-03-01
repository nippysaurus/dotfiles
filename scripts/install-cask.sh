check() {
  ls "/usr/local/Library/Taps/caskroom"
  if [ $? == 0 ]; then
    return 1
  else
    return 0
  fi
}

install() {
  brew tap caskroom/cask
}
