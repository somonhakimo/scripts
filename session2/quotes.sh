#!/bin/bash

name="somon hakimov"

echo 'hello there $name'
echo "hello there $name"

var="bash"
cat <<HAHA > new_file.txt
this is multi-line string.
Hello from $var script.
It can span several lines.
HAHA

# selinux="disabled"

# cat <<somon > /etc/selinux/config
# selinux=$selinux
# # SELINUXTYPE= can take one of these three values:
# # targeted - targeted processes are protected,
# # minimum - modification of targeted policy. Only selected processes are protected.
# # mls - multi level security protection.
# SELINUXTYPE=targeted
# somon
