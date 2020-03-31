#!/usr/bin/env bash
# For testing. First line outputs line numbers.
# Second line says to output what is going on in script
PS4=':${LINENO}+'
#set -x

build_dir=build

while getopts q option
do
  case "${option}"
  in
    q) QUIET=1;;
  esac
done

# Clean build directory before building.
rm -rf $build_dir
mkdir -p "$build_dir/"

# Download Fisher
curl https://git.io/fisher --create-dirs -sLo config/fish/functions/fisher.fish

# Copy files to the build directory that will be uploaded to remote hosts.
for f in pluginrc.fish config
do
     find "$f" -depth -print | cpio --quiet -pd "$build_dir"
done
