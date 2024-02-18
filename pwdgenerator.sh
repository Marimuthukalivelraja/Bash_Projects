#!/bin/bash

echo "This is a password generator"
echo "please enter the length of the password "
read PWD_LENGTH
for p in $(seq 1 5);
do
        openssl rand -base64 48 | cut -c 1-$PWD_LENGTH
done

