#!/bin/bash

# 1. Create a script that takes an positional argument of file name
# 2. Give file +x permissions
# 3. Exit script
# 4. If positional argument is not given
#     3A: prompt for a file name
# 5. give file +x permissions
# one pipe means take the output of the first command and put it as input to the second command
# two pipe means if the first command fails then ran command two otherwise do not run command 2
# two ampersand means after running the first command succesfully then run the second command.



chmod +x $1 | echo "permissions for $1 are is given." || read -p "enter file name" file && chmod +x $file



