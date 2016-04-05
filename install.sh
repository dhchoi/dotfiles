#!/bin/bash

### shell files
echo "Copying shell configs..."
cp ./zsh/* ~/

### git files
echo "Copying git configs..."
cp ./git/* ~/

### ssh files
echo "Copying ssh configs..."
cp ./ssh/* ~/.ssh/

### vim files
echo "Copying vim configs..."
cp ./vim/.vimrc ~/
# pathogen
echo "Setting up pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# bundles
echo "Cloning bundles..."
while IFS='' read -r line || [[ -n "$line" ]]; do
  echo "${line}..."
  git clone ${line} ~/.vim/bundle/
done < "./vim/bundles"

echo "Finished."

