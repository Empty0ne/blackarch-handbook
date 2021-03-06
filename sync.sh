#!/bin/sh

site='blackarch.org'
rdir='/nginx/var/www'
if [ ${#} -ne 1 ]
then
	usr=$USER
else
	usr="${1}"
fi

cd "`dirname "$0"`"

# Delete manually or something.
rsync --rsh="ssh -A -l ${usr}" --chmod "a+rX,ug+w" -avz \
	guide.html \
	"$site:/$rdir"
