#!/usr/bin/env bash
# Abort a conflicted or messy "git stash pop".
#
# After a conflicted stash pop, the working tree is half-updated and has
# conflicts. This command:
#   1. Resets the index and working tree to match HEAD (state before the pop).
#   2. Clears merge/conflict state (safe even when there are unmerged paths).
#   3. Leaves the stash on the stash list — it is not dropped; you can try
#      again later or inspect it with "git stash list".
#
# Usage: run from repo root when you want to undo a stash pop and get back
# to a clean working tree without losing the stash.

git reset --merge
