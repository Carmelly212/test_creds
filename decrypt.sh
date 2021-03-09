#!/bin/bash

pass="$(openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 1000 -salt -d -in encpass.txt -pass pass:somepassword)"

echo ${pass}
