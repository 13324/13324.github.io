#!/bin/bash

git add .
git commit -a -m "$1"
git push -u origin pelican
pelican content -o output -s pelicanconf.py
ghp-import output -r origin -b master -m "Pushed from pelican branch"
git push origin master
git checkout pelican