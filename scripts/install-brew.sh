check() {
  ls "/usr/local/.git"
  if [ $? == 0 ]; then
    return 1
  else
    return 0
  fi
}

install() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}
