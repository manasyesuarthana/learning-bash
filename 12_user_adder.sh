#!/bin/bash

USERS="alpha gamma beta sigma"

for user in $USERS
do
    echo "Adding user $user..."
    useradd $user
    id $user
    echo "User added successfully."
done
echo
read -p "Want do delete them? y or n:" DELETE

if [ $DELETE == "y" ]
then
    echo "Deleting users you just added hehe..."
    for del_user in $USERS
    do
        echo "Deleting user $del_user..."
	userdel $del_user
        echo "User deleted successfully."
    done
    echo "Removing their home directories..."
    for del_dir in $USERS
    do
	rm -rf /home/$del_dir
	echo "Deleted directory /home/$del_dir ..."
    done
    echo "Done."
else
    echo "Boring... But okay..."
fi

