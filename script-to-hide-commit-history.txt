#!/bin/bash

git checkout --orphan temp

git branch -D main

git branch -m main

git add .

git commit -m "init"

git push -f origin main
