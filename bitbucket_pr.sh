#!/bin/bash

project=${PWD##*/}
rawBranch=$(git rev-parse --abbrev-ref HEAD)
org=$(git config --get remote.origin.url | grep -Eo "(\w*)/$project.git\/?$" | cut -d/ -f1)
branch=$(python3 -c "import urllib.parse; print(urllib.parse.quote_plus('''$rawBranch'''))")
if [[ $org = *[!\ ]* ]]
then
    echo "Opening browser..."
    echo "Creating pr from $branch to master"
else
    echo "Not in a bitbucket repo"
    exit
fi

open "https://bitbucket.org/${org}/${project}/pull-requests/new?source=${branch}"
