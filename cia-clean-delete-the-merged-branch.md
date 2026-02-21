```sh
$ alias ciaclean='git branch --merged origin/main | grep -vE "^\s*(\*|main|develop)" | xargs -n 1 git branch -d'
```


How it works:

git branch --merged — lists all local branches that have already been merged into the current branch
grep -v "\*\|master" — filters out the current branch (*) and master so you don’t delete either
xargs -n 1 git branch -d — deletes each remaining branch one at a time, safely (lowercase -d won’t touch unmerged branches)
