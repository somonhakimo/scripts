#!/bin/bash

## declare a function
_say_hello() {
    echo "hello there"
    echo "i am your friend"
    echo "you can ask me anything"
    read -p "what is you name? " name
}

_say_hello
_say_hello