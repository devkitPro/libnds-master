#!/bin/bash

. ./modules

rootdir=`pwd`
for dir in $modules
do
	echo updating $dir
	cd $rootdir/$dir
	git pull
done

