#!/bin/bash
set -e

# list of codenames
CODENAMES=(xenial artful bionic jessie stretch buster)

# get path to deb file
DEB_FILE="$1"

if [ -z "$DEB_FILE" ];
then
    echo "Usage: $0 <deb-file>"
    exit 1
fi

DEB_FILE=$(realpath "$DEB_FILE")

# add deb file to all codenames
cd "$(dirname ${BASH_SOURCE[0]})/deb"

for CODENAME in "${CODENAMES[@]}"
do
    reprepro includedeb "$CODENAME" "$DEB_FILE"
done
