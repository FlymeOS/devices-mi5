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
fi

