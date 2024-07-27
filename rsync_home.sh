#!/bin/zsh 

# 27JULY 2024

## TODO
#  add --log-file=
#  exclude other dir?
#  examine other file:   rsync_backup.sh - what is useable?

## Details
# creates /home/jim/bak/
# a=archive
# x=do not cross fileystems border
# z=compress
# P=show progresso

rsync -axvP \
      /home/jim /home/jim/bak \
      --exclude=cache \
      --exclude=.cache \
      --exclude=\tmp\


