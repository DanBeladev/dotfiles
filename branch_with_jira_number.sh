#!/bin/bash

if [ -n "$1" ]
branch=feature/ANUN-"$1"
then
    git checkout develop
    git pull
    git checkout -b "${branch}" && git push --set-upstream origin "${branch}"
fi
