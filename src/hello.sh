#!/bin/sh

# Attempt to load HELLO_NAME from hello.env in the current directory
if [ -f "./hello.env" ]; then
    . ./hello.env
elif [ -f "/usr/local/etc/hello.env" ]; then
    # If not found, try loading from /usr/local/etc/hello.env
    . /usr/local/etc/hello.env
fi

# Set default value for HELLO_NAME if it's not set or is empty
: ${HELLO_NAME:=World}

# Print the greeting
echo "Hello, $HELLO_NAME!"
