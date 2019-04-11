#!/usr/bin/env bash
set -e

REMOTEPATH='/www/domains/deboraaondrej.ludova-hudba.eu/'

lftp -f "
set dns:order "inet"
open $FTP_ADDRESS
user $FTP_USER $FTP_PASSWORD
mirror --continue --reverse --delete . $REMOTEPATH
bye
"
