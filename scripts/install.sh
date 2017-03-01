echo installing ...

skip() { echo "  [SKIP] $1"; }
success() { printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"; }
fail() { printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"; }

FILES=install-*.sh

for file in $FILES
do
  source $file

  check_output=`mktemp`

  exec check > $check_output
  bash -c "source $file && check > $check_output"
  check > $check_output
  check > check_output

  if [ $? == 0 ]; then
    install_output=`mktemp`
    exec install > $install_output
    #bash -c "source $file && install > $install_output"
    #install > $install_output
    #install > install_output

    if [ $? == 0 ]; then
      success $file
    else
      fail $file $install_output
    fi
  else
    skip $file
  fi
done
