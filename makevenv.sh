#!/bin/bash

venv_name="$1"
all_venv_dir=~/Documents/venv
project_venv_url="$all_venv_dir/$venv_name"
echo "create venv in: $project_venv_url"
if [[ -n "$1" ]]
then
    cd $all_venv_dir
    rm -rf $venv_name
    python3 -m venv $venv_name
    source $venv_name/bin/activate
    cd -
fi
