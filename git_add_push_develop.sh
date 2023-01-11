#!/bin/zsh

#	TODO
#		-		error check on arg1
#		-		include built in arry of directories to ALWAYS run.
#		-		if arg1 is "." (current dir) expand to FULL PATH
#
#
#	PURPOSE:		Automate git add, git push  for given REPO.
#	USAGE:
#				-	for specified directory, performs git push
#				
# define function
#
#	returns true or false
has_arg() {
	test -n "$1"
}

#	

add_commit_push()
{


	if has_arg "$1"
	then
	else  echo "** problem ** "
				echo "USAGE: must have arg <dir>"
				exit
	fi

	cd $1

	#		Add files, Commit, Push
	line="---------------------------"
	#echo "\n"
	echo $line
  echo ${PWD}
	echo "$(date)"

	#echo "BEGIN ...... ${1} ... ${PWD}" 

	#echo "\n"
	#echo "STATUS ......\n"
	#git s

	
	#echo "\n"
	#echo "ADD FILES ......" 
	git a

	#echo "\n"
	echo "COMMIT ......" 
	git cm wip
	
	#echo "\n"
	echo "PUSH ......" 
	git push
	
	echo "\n"
	echo "FINAL STATUS ......"
	git s
	echo $line
}

# run function, using directory specified as arg 1
add_commit_push  $1 
