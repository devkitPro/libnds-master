#!/bin/bash

if [ ! -f ./gitroot ]; then
	cat > gitroot <<- EOF
	# For read/write access uncomment this line and replace <user> with your SF username
	#GITROOT=ssh://<user>@devkitpro.git.sourceforge.net/gitroot/devkitpro

	# For read only access uncomment this line
	#GITROOT=git://devkitpro.git.sourceforge.net/gitroot/devkitpro
	EOF
fi
. ./gitroot

if [ -z $GITROOT ]
then
	echo "Please edit and uncomment appropriate GITROOT line in gitroot file"
	exit 1
fi

. ./modules

for dir in $modules
do
	git clone $GITROOT/$dir
done

