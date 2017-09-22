.class public Lcom/android/settings/MiuiDefaultRingtonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "MiuiDefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 45
    if-eq v2, v0, :cond_0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_0

    const/16 v1, 0x10

    if-ne v1, v0, :cond_2

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-static {}, Lcom/android/settings/ringtone/MultiRingtoneSettingUtils;->tN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setFragment(Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    invoke-super {p0}, Lcom/android/settings/DefaultRingtonePreference;->onClick()V

    .line 60
    :cond_1
    return-void

    .line 54
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 29
    const-string v0, "REQUEST_ENTRY_TYPE"

    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 31
    const/16 v1, 0x1000

    if-eq v1, v0, :cond_0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_0

    const/16 v1, 0x10

    if-ne v1, v0, :cond_1

    .line 34
    :cond_0
    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    :cond_1
    return-void
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_alarm_alert"

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-static {p1, v0}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string p1, ""

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
