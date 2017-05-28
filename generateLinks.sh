#!/usr/bin/env bash

SOURCE_SUFFIX='_source'

for file in bash_profile inputrc pylintrc vimrc aliases
do
    # ln -s ~/Documents/Box\ Sync/config/rc_files/$file$SOURCE_SUFFIX ~/.$file
    # to fix: when pwd has spaces
    source_file=`pwd`/rc_files/$file$SOURCE_SUFFIX
    source_file=${source_file/ /\\ }
    source_file=${source_file/ /\\ }
    dest_file="~/.$file"
    cmd="ln -s $source_file ~/.$file"
    ln -s $source_file ~/.$file
    # $cmd - doesn't work!
    echo "Executing cmd: $cmd"
done
