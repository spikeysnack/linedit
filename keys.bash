#!/bin/bash

# type characters

echo -n "Enter a character: "
stty cbreak
char=`dd if=/dev/tty bs=1 count=1 2>/dev/null`
stty -cbreak
echo " Character was: $char"

#end
