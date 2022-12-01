#!/bin/zsh
#
#	file <- "git_cat_file.sh"
#
#	PURPOSE:	This zsh script runs git command cat-file to learn about objects in
#	tree
#
#	USAGE:	git_cat_file.sh 
#	enter HEAD~1
echo "Please enter HEAD or object"
git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize)'
