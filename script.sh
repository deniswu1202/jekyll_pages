#!/bin/bash

echo "Add modified files... ..."
git add --all

echo "Commit changes... ..."
git commit -m "auto"

echo "Push to origin... ..."
git push origin master
