#!/usr/bin/sh
#Q3  Modify the previous program such that only the users Alice and Bob are greeted with their names.
user1="Alice"
user2="Bob"
echo -n "Enter your name : "
read name
if [ "$user1" = "$name" ] || [ "$user2" = "$name" ]; then
    echo "Hi! $name, How are you?"
else
    echo "$name is not a user!"
fi

