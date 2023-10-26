#!/bin/zsh
#
# Show disk usage in each directory in /home/jim
#   USAGE:   sudo du <options>  <dir> | sort -r
#
# -d1 depth 1
# -h  human
# -s	summary (no files)
# -- max-depth=3
# -r (after sort) reverse
sudo du -d1 -h ~/ | sort -hr

echo "---- Mount points ----------"
sudo lsblk
