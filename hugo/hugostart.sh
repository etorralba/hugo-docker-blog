#!/bin/sh
set -e

#Creating clean hugo image in ../hugodir
echo "Moving to hugodir"
cd ../hugodir
echo "Running Hugo new site "
hugo new site . --force


#Remove default folders
rm -R content/
rm -R config.toml

#Clonning Bento Theme
cd themes/
git clone https://github.com/leonardofaria/bento.git

#Moving directories to hugodir/
cp ./bento/package.json ../
mv ./bento/exampleSite/content ../
mv ./bento/exampleSite/config.toml ../

#Installing package.json
cd ..
npm i

#Starting hugo server
hugo
hugo server

