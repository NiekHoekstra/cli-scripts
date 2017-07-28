#!/bin/bash
# bash.rc alias gitroot="$(gitroot.sh)"

git status &> /dev/null
if [ $? -ne 0 ]; then
  echo "echo Not in git repository."
  exit 1
fi

while [ ! -d ".git" ]; do
 cd ..
done
dir=`pwd`
echo "cd $dir"
