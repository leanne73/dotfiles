if [ -f ./.nvmrc ]; then
  echo 'Using node version specified in .nvmrc'
  nvm use $(cat .nvmrc)
fi

cd() {
  builtin cd "$@"
  if [ -f ./.nvmrc ]; then
    echo 'Using node version specified in .nvmrc'
    nvm use $(cat .nvmrc)
  fi
}
