#!/bin/sh
[ ! -d "$GIT_SYNC_DEST/.git" ] && (git clone --recursive --no-checkout -b "$GIT_SYNC_BRANCH" "$GIT_SYNC_REPO" "$GIT_SYNC_DEST" && git submodule update || exit)
cd "$GIT_SYNC_DEST" || exit
while [ -d .git ]; do
  git fetch origin "$GIT_SYNC_BRANCH" && git reset --hard "$GIT_SYNC_REV" && git submodule update && chmod a+r .
  sleep "$GIT_SYNC_WAIT"
done
