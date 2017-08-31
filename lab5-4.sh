#!/bin/bash

PS3="Please choose an user option ..."
select i in "Add User" "Remove User" "Exit"
do
    case $i in
        "Add User")
         echo "Addin User"
         sleep 5
        ;;
        "Remove User")
         echo "Removing User"
        sleep 5
        ;;
        Exit) 
        exit 0
        ;;
    esac
done
