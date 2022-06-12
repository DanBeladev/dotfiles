#!/bin/bash

jira_key="$1"
branch="feature/ANUN-"${jira_key}""
echo "create branch: ${branch}"
if [[ -n "$1" ]]
then
    git checkout develop;
    git pull;
    git checkout -b "${branch}";
    git push --set-upstream origin "${branch}";
fi
