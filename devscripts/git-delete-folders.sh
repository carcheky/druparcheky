#!/bin/bash


find ./ -name .git -type d

echo "delete? [y/n]"
read delete

if [ ${delete} = y]; then
  echo "deleting .git folders"
  find ./ -name .git -type d -exec rm -fr {} \;
fi
