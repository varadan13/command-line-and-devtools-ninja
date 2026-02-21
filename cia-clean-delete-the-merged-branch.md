```sh
$ alias ciaclean='git branch --merged origin/main | grep -vE "^\s*(\*|main|develop)" | xargs -n 1 git branch -d'
```
