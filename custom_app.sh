#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

#Inject code in method head
function injectMethod {
    smali_file=$1
    smali_method=$(echo "$2" | sed 's/\//\\\//g;s/\[/\\\[/g')
    inject_string=$(echo "$3" | sed 's/\//\\\//g;s/\[/\\\[/g')
    all_method=$(cat $smali_file | grep "^.method")
    echo "$all_method" | while read method_line
    do
        find=$(echo $method_line | grep $smali_method)
        if [ x"$find" != x"" ]; then
            method=$(echo "$method_line" | sed 's/\//\\\//g;s/\[/\\\[/g')
            method_string=$(sed -n "/^$method/,/^.end method/p" $smali_file)
            sed -i "/^$method/,/^.end method/d" $smali_file
            method_inject_string=$(echo "$method_string" | sed "s#    .prologue#    .prologue\n\n    $inject_string\n#g")
            echo "$method_inject_string" >> $smali_file
        fi
    done
}

if [ "$apkBaseName" = "TeleService" ]; then
    echo ">>> in custom_app for $apkBaseName."
    injectMethod $tempSmaliDir/smali/com/android/phone/PhoneGlobals.smali "onCreate()V" "invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->onCreateFlymeInject(Landroid/content/Context;)V"

elif [ "$apkBaseName" = "Telecom" ]; then
    echo ">>> in custom_app for $apkBaseName to adjust the interface "setDefaultVoiceSubId" with "setDefaultVoiceSubIdExtended""
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#Landroid\/telephony\/SubscriptionManager;->setDefaultVoiceSubId(I)V#Landroid\/telephony\/SubscriptionManager;->setDefaultVoiceSubIdExtended(I)V#g'

elif [ "$apkBaseName" = "ConnectivitySettings" ]; then
    echo ">>> in custom_app for $apkBaseName to adjust the interface "setDefaultDataSubId" with "setDefaultDataSubIdExtended""
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#Landroid\/telephony\/SubscriptionManager;->setDefaultDataSubId(I)V#Landroid\/telephony\/SubscriptionManager;->setDefaultDataSubIdExtended(I)V#g'

elif [ "$apkBaseName" = "SystemUI" ]; then
    echo ">>> in custom_app for $apkBaseName."
    injectMethod $tempSmaliDir/smali/com/android/systemui/keyguard/KeyguardViewMediator.smali "onSystemReady()V" "const/4 v0, 0x1\n    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->enableFingerprintNavigation(Z)V"
    sed -i '$i\    <uses-permission android:name="com.fingerprints.service.ACCESS_EXTENSION_SERVICE"/>' $tempSmaliDir/AndroidManifest.xml
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#com.meizu.media.camera.CameraLauncher#com.android.camera.Camera#g'
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#com.meizu.media.camera.SecureCameraActivity#com.android.camera.Camera#g'
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#com.meizu.media.camera#com.android.camera#g'
    sed -i 's#sput-object v0, Lcom\/android\/systemui\/statusbar\/phone\/MzKeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid\/content\/Intent;#    const-string v1, "ShowCameraWhenLocked"\n\n    const/4 v2, 0x1\n\n    invoke-virtual {v0, v1, v2}, Landroid\/content\/Intent;->putExtra(Ljava\/lang\/String;Z)Landroid\/content\/Intent;\n\n    const-string v1, "StartActivityWhenLocked"\n\n    invoke-virtual {v0, v1, v2}, Landroid\/content\/Intent;->putExtra(Ljava\/lang\/String;Z)Landroid\/content\/Intent;\n\n    sput-object v0, Lcom\/android\/systemui\/statusbar\/phone\/MzKeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid\/content\/Intent;#g' $tempSmaliDir/smali/com/android/systemui/statusbar/phone/MzKeyguardBottomAreaView.smali

elif [ "$apkBaseName" = "VendorSettings" ] || [ "$apkBaseName" = "MiuiCamera" ]; then
    echo ">>> in custom_app for $apkBaseName."
    $PORT_ROOT/tools/apktool if -t merged_mi5 vendor/system/app/miui/miui.apk
    $PORT_ROOT/tools/apktool if -t merged_mi5 vendor/system/app/miuisystem/miuisystem.apk
fi

