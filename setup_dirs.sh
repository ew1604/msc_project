#!/bin/bash

# Generates the matrix of directories inside a parent 'dataset' folder
mkdir -p dataset/{c,java,javascript,python,typescript}/{"Argon2","Balloon Hashing","bcrypt","Lyra2","md5","pbkdf2","scrypt","sha1","sha256","sha3","sha512","yescrypt","hmac","blake2","crypt","pbkdf"}

echo "Directory structure created successfully in $(pwd)/dataset!"