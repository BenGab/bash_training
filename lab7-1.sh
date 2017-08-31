#!/bin/bash
PS3="Please choose a number or press enter to see the list again :"
select
	i in "Add user" "Remove user" "Exit"
	do
		case	"$i" in
		"Add user")
			echo adding a new user
			while true; do
			echo username:
			read username
			if id "$username" &>/dev/null; then
				echo user $username already exists.
			else
				break
			fi
	done
	while true; do
	echo Home directory:
	read homedir
		if [ -e $homedir ];
		then
			echo $homedir already exists
		else
			break
		fi
	done
	echo useradd -m -d \" $homedir \" -c \" $name \"  $username
	;;
		"Remove user")
		echo removing user
		echo Username to remove:
                read username
                if id "$username" $> /dev/null ; then
			echo userdel $username
                else
			echo "invalid username"
		fi
		;;
		Exit)
   		exit
		esac
	done  
