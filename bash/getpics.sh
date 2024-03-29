#!/bin/bash
#
#Improve the script to retrive and install the files that kept in https://zonzorp.net/pics.tgz tarfile
test -d ~/Pictures || mkdir ~/Pictures

#Download the zip file of pictures to the Pictures directory
test -f ~/Pictures/pics.zip || wget -q -0 ~/Pictures/pics.zip http://zonzorp.net/pics.zip
test -f ~/Pictures/pics.tgz || wget -q -0 ~/Pictures/pics.tgz http://zonzorp.net/pics.tgz

#unpack the downloaded files
test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -0 -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip

#tarfile
test -f ~/Pictures/pics.tgz && tar -xzf ~/Pictures/pics.tgz -C ~Pictures/&& rm ~/Pictures/pics.tgz

#Making a reprt on what we have in the Pictures directory
test -d ~/Pictures && cat <<EOF
Found $(find ~Pictures -type f|wc -l) files in the Pictures directory.
The pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk
EOF
