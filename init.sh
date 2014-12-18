#!/bin/bash

GITROOT=git@github.com:devkitPro

. ./modules

for dir in $modules
do
	git clone ${GITROOT}/${dir}.git
done

