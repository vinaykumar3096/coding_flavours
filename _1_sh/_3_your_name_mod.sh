#!/usr/bin/sh
user1="Alice"
user2="Bob"
echo -n "Enter your name : "
read name
if [ "$user1" = "$name" ] || [ "$user2" = "$name" ]; then
    echo "Hi! $name, How are you?"
else
    echo "$name is not a user!"
fi

