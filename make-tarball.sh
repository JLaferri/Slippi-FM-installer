#!/bin/bash

if [[ -z $1 ]]; then
	echo "usage: ./make-tarball.sh <ouput archive filename>"
	exit -1
fi


if [[ -e ${1} ]]; then
	echo "${1} already exists, quitting"
	exit -1
fi

# Move the config/ directory contents into a gzip tarball
tar -C config/ -cvzf "${1}" Binaries/
