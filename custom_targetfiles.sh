#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM

function modify_launcher_xml() {
    if [ -f $SYSTEM_DIR/media/launcher.xml ]; then
        sed -i 's#com.meizu.media.camera.CameraLauncher#com.android.camera.Camera#g' $SYSTEM_DIR/media/launcher.xml
        sed -i 's#com.meizu.media.camera#com.android.camera#g' $SYSTEM_DIR/media/launcher.xml
    fi
}

modify_launcher_xml
