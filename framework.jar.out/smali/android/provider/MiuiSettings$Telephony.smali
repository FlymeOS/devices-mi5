.class public Landroid/provider/MiuiSettings$Telephony;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation


# static fields
.field public static final ADD_ZERO_PREFIX_SWITCH:Ljava/lang/String; = "button_add_zero_prefix"

.field public static final AUTOIP_PREFIX:Ljava/lang/String; = "autoip_prefix"

.field public static final AUTOIP_SWITCH:Ljava/lang/String; = "button_autoip"

.field public static final AUTO_COUNTRY_CODE:Ljava/lang/String; = "auto_country_code"

.field public static final AUTO_IP_SUPPORT_LOCAL_NUMBERS:Ljava/lang/String; = "button_auto_ip_support_local_numbers"

.field private static final CALL_WAITING_TONE:Ljava/lang/String; = "call_waiting_tone"

.field public static final CALL_WAITING_TONE_CONTINUOUSLY:I = 0x0

.field public static final CALL_WAITING_TONE_TWICE_AND_VIBRATE:I = 0x2

.field public static final CALL_WAITING_TONE_TWICE_ONLY:I = 0x1

.field public static final CONNECT_DISCONNECT_VIBRATE:Ljava/lang/String; = "button_connect_disconnect_vibrate"

.field public static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field public static final CURRENT_AREACODE:Ljava/lang/String; = "current_areacode"

.field public static final ENABLED_ANTISPAM_STRANGE:Ljava/lang/String; = "button_antispam_strange"

.field public static final ENABLED_AUTO_RECORD:Ljava/lang/String; = "button_auto_record_call"

.field public static final ENABLED_AUTO_REDIAL:Ljava/lang/String; = "button_auto_redial"

.field public static final ENABLED_HANDON_RINGER:Ljava/lang/String; = "button_handon_ringer"

.field public static final ENABLED_INCOMING_VIDEO_SHOW:Ljava/lang/String; = "button_incoming_video_show"

.field public static final ENABLED_RECORD_NOTIFY:Ljava/lang/String; = "button_call_recording_notification"

.field public static final ENABLED_TURN_OVER_MUTE:Ljava/lang/String; = "button_turn_over_mute"

.field public static final ENABLED_UNKNOWN_NUMBER_RECORD:Ljava/lang/String; = "button_record_unknown_number"

.field public static final ENABLED_YELLOWPAGE_RECORD:Ljava/lang/String; = "button_record_yellowpage_number"

.field public static final ENABLE_PROXIMITY_KEY:Ljava/lang/String; = "button_enable_proximity"

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final INCALL_BACKGROUND_KEY:Ljava/lang/String; = "incall_background_key"

.field public static final INCALL_BACKGROUND_KEY_DEFAULT:I = 0x0

.field public static final INCALL_BACKGROUND_KEY_LOCK_WALLPAPER:I = 0x1

.field public static final IVR_MO_AREA_CODE_SLOT_1:Ljava/lang/String; = "ivr_mo_area_code_slot_1"

.field public static final IVR_MO_AREA_CODE_SLOT_2:Ljava/lang/String; = "ivr_mo_area_code_slot_2"

.field public static final IVR_TYPE_SLOT_1:Ljava/lang/String; = "ivr_type_slot_1"

.field public static final IVR_TYPE_SLOT_2:Ljava/lang/String; = "ivr_type_slot_2"

.field public static final MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "button_missed_call_notify_times"

.field public static final RECORD_SCENARIO:Ljava/lang/String; = "radio_record_scenario"

.field public static final RECORD_WHITE_LIST:Ljava/lang/String; = "record_white_list"

.field public static final VOLTE_FEATURE_DISABLED:Ljava/lang/String; = "volte_feature_disabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;

    .prologue
    .line 3673
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3697
    const-string v0, "autoip_prefix"

    .line 3698
    .local v0, "prefix":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 3699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3701
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallBackgroundType(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3608
    const-string/jumbo v0, "incall_background_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCallWaitingTone(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3579
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3653
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3631
    const-string v0, "current_areacode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledAutoRedial(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3821
    const-string v0, "button_auto_redial"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3986
    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3802
    const-string v0, "button_missed_call_notify_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRecordScenario(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3899
    const-string/jumbo v0, "radio_record_scenario"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3919
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3783
    const-string v0, "button_connect_disconnect_vibrate"

    const-string v1, "100"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3764
    const-string v1, "button_antispam_strange"

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4048
    const-string v0, "button_add_zero_prefix"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4013
    const-string v0, "auto_country_code"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoIpEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4030
    const-string v0, "button_autoip"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4067
    const-string v0, "button_auto_ip_support_local_numbers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3879
    const-string v0, "button_auto_record_call"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHandonRingerEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3745
    const-string v0, "button_handon_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isIncomingVideoShowEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3840
    const-string v0, "button_incoming_video_show"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProximitySensorEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4085
    const-string v0, "button_enable_proximity"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3859
    const-string v0, "button_call_recording_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTelocationEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3994
    const-string v0, "enable_telocation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3726
    const-string v0, "button_turn_over_mute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3939
    const-string v0, "button_record_unknown_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3958
    const-string v0, "button_record_yellowpage_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .prologue
    .line 3774
    const-string v0, "button_antispam_strange"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3775
    return-void
.end method

.method public static setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4058
    const-string v0, "button_add_zero_prefix"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4059
    return-void
.end method

.method public static setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4022
    const-string v0, "auto_country_code"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4023
    return-void
.end method

.method public static setAutoIpEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4039
    const-string v0, "button_autoip"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4040
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;

    .prologue
    .line 3684
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 3685
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3713
    const-string v0, "autoip_prefix"

    .line 3714
    .local v0, "prefix":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 3715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3717
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3718
    return-void
.end method

.method public static setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4077
    const-string v0, "button_auto_ip_support_local_numbers"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4078
    return-void
.end method

.method public static setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledAutoRecord"    # Z

    .prologue
    .line 3890
    const-string v0, "button_auto_record_call"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3891
    return-void
.end method

.method public static setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRedial"    # Z

    .prologue
    .line 3831
    const-string v0, "button_auto_redial"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3832
    return-void
.end method

.method public static setCallBackgroundType(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "callBackgroundType"    # I

    .prologue
    .line 3621
    const-string/jumbo v0, "incall_background_key"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setCallWaitingTone(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callWaitingToneType"    # I

    .prologue
    .line 3593
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3595
    return-void
.end method

.method public static setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 3664
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3665
    return-void
.end method

.method public static setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "aeraCode"    # Ljava/lang/String;

    .prologue
    .line 3642
    const-string v0, "current_areacode"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3643
    return-void
.end method

.method public static setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .prologue
    .line 3755
    const-string v0, "button_handon_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3756
    return-void
.end method

.method public static setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3977
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3978
    return-void
.end method

.method public static setIncomingVideoShowEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isVideoShowEnabled"    # Z

    .prologue
    .line 3850
    const-string v0, "button_incoming_video_show"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3851
    return-void
.end method

.method public static setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "notifyTimes"    # I

    .prologue
    .line 3812
    const-string v0, "button_missed_call_notify_times"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3813
    return-void
.end method

.method public static setProximitySensorEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4094
    const-string v0, "button_enable_proximity"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4095
    return-void
.end method

.method public static setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRecordNotify"    # Z

    .prologue
    .line 3870
    const-string v0, "button_call_recording_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3871
    return-void
.end method

.method public static setRecordScenario(Landroid/content/ContentResolver;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordScenario"    # I

    .prologue
    .line 3909
    const-string/jumbo v0, "radio_record_scenario"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3910
    return-void
.end method

.method public static setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordWhiteList"    # Ljava/lang/String;

    .prologue
    .line 3930
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3931
    return-void
.end method

.method public static setTelocationEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 4003
    const-string v0, "enable_telocation"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4004
    return-void
.end method

.method public static setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 3736
    const-string v0, "button_turn_over_mute"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3737
    return-void
.end method

.method public static setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledUnknownNumberRecord"    # Z

    .prologue
    .line 3949
    const-string v0, "button_record_unknown_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3950
    return-void
.end method

.method public static setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "vibrateKey"    # Ljava/lang/String;

    .prologue
    .line 3793
    const-string v0, "button_connect_disconnect_vibrate"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3794
    return-void
.end method

.method public static setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledYellowpageRecord"    # Z

    .prologue
    .line 3968
    const-string v0, "button_record_yellowpage_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3969
    return-void
.end method
