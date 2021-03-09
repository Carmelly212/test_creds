#!/bin/bash 
read -p 'Username: ' username
read -sp 'Password: ' password
 
echo
echo "Thank you $username "
 
## this echo is for demo purpose only, never echo password
echo $password > password.txt

openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 1000 -salt -in password.txt -out encpass.txt -pass pass:somepassword
rm password.txt