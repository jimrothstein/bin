#!/bin/zsh
#
# Show disk usage in each directory in /home/jim

# -d1 depth 1
# -h  human
sudo du -d1 -h ~/ | sort -hr

echo "---- Mount points ----------"
sudo lsblk
