.class public Lmiui/provider/SettingProviderHelper;
.super Ljava/lang/Object;
.source "SettingProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "soundUri"    # Landroid/net/Uri;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :cond_0
    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_1
    const-string v0, "media"

    .line 53
    .end local v0    # "authority":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static getRingtoneUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 2
    .param p0, "soundUri"    # Landroid/net/Uri;
    .param p1, "ringtoneType"    # I

    .prologue
    .line 57
    const-string v0, "media"

    invoke-static {p0}, Lmiui/provider/SettingProviderHelper;->getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    .line 60
    .end local p0    # "soundUri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .locals 3
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "ringtone_default"

    .line 21
    .local v0, "DEFAULT_RINGTONE":Ljava/lang/String;
    const-string v1, "ringtone_default"

    sget v2, Lmiui/system/R$string;->def_ringtone:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    const-string v1, "ringtone"

    sget v2, Lmiui/system/R$string;->def_ringtone:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    const-string v1, "alarm_alert"

    sget v2, Lmiui/system/R$string;->def_alarm_alert:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    const-string v1, "notification_sound"

    sget v2, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    const-string v1, "calendar_alert"

    sget v2, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    const-string v1, "sms_delivered_sound"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 27
    const-string v1, "sms_received_sound"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 28
    const-string v1, "ringtone_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_ringtone_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 29
    const-string v1, "ringtone_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_ringtone_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    const-string v1, "sms_delivered_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    const-string v1, "sms_delivered_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    const-string v1, "sms_received_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    const-string v1, "sms_received_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method private static loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 37
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 43
    :cond_0
    return-void
.end method
