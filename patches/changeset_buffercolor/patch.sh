#!/bin/bash -e

. ../../config.conf

PJPROJECT_BASE_FOLDER="$DOWNLOAD_DIR/$PJSIP_DIR_NAME"

cp changeset_buffercolor.patch $PJPROJECT_BASE_FOLDER

CURDIR=$(pwd)
cd "$PJPROJECT_BASE_FOLDER"
patch -p0 < changeset_buffercolor.patch
rm changeset_buffercolor.patch
cd "$CURDIR"