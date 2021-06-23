#!/bin/sh
set -e

echo "Checking for hugo builds"
#Checking for hugo builds 
if [ ! -d "../hugodir/content" ] 
then
    #Creating clean hugo image in ../hugodir
    echo "Moving to hugodir"
    cd ../hugodir
    echo "Running Hugo new site "
    hugo new site . --force


    #Remove default folders
    echo "Removing default content and original config.toml"
    rm -R content/
    rm -R config.toml

    #Clonning Bento Theme
    echo "Clonning bento theme"
    cd themes/
    git clone https://github.com/leonardofaria/bento.git

    #Moving directories to hugodir/
    echo "Moving example site content to hugodir"
    cp ./bento/package.json ../
    mv ./bento/exampleSite/content ../

    echo "Copying config-replace.toml as config.toml"
    cp ../config-replace.toml ../config.toml

    #Installing package.json
    echo "Installing node modules"
    cd ..
    npm i

    #Starting hugo server
    echo "Makeing public build"
    hugo --config ./config.toml
    hugo server
else 
    echo "Moving to hugodir"
    cd ../hugodir

    #Starting hugo server
    echo "Makeing public build"
    hugo --config ./config.toml
    hugo server
fi



