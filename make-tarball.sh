#!/bin/bash -e

if [[ -z $1 ]]; then
	echo "usage: ./make-tarball.sh <release name>"
	echo -e "\t ie. ./make-tarball.sh r11"
	exit 0
fi

if [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
	echo "usage: ./make-tarball.sh <release name>"
	echo -e "\t ie. ./make-tarball.sh r11"
	exit 0
fi


RECORDING_TAR="slippi-${1}-recording-config.tar.gz"
PLAYBACK_TAR="slippi-${1}-playback-config.tar.gz"

if [[ -e "$RECORDING_TAR" ]] || [[ -e "$PLAYBACK_TAR" ]]; then
	echo "A configuration is already packaged for this release."
	exit -1
fi

# Move the config/ directory contents into gzip tarballs
tar -C config/recording -cvzf "${RECORDING_TAR}" Binaries/
tar -C config/playback -cvzf "${PLAYBACK_TAR}" Binaries/
