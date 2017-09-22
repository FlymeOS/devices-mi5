#!/bin/bash

SEPOLICY_INJECT=$1
SEPOLICY=$2

# Fix git does not manage empty folders
RAMDISK_DIR=`dirname $SEPOLICY`
mkdir -p $RAMDISK_DIR/data
mkdir -p $RAMDISK_DIR/dev
mkdir -p $RAMDISK_DIR/oem
mkdir -p $RAMDISK_DIR/proc
mkdir -p $RAMDISK_DIR/sys
mkdir -p $RAMDISK_DIR/system

$SEPOLICY_INJECT -s radio -t access_control_service -c service_manager -p add,find -P $SEPOLICY > /dev/null 2>&1
$SEPOLICY_INJECT -s downloader -t access_control_service -c service_manager -p add,find -P $SEPOLICY > /dev/null 2>&1

