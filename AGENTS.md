#

##
In directory, "~/code/" you  will see several directories.  Make a list of these directories. Add an additional directory "~/dotfiles/"   Call the list directory_list.
Now we will make a script (*.sh) file   I use zsh.   Call this script file daily_git_push.sh  It should be executable.

This script file must have an entry for every directory in directory_list.  If the directory uses git, be sure to run:
- git add
- git commit "WIP"
- git push

Then move to the next directory in directory_list.


If any error is thrown, stop.  Show the user the error.   Then exit.

