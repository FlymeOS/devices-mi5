.class Lcom/android/vendorsettings/cloudbackup/g;
.super Ljava/lang/Object;
.source "SoundAndVibrateCloudBackupHelper.java"


# direct methods
.method static final aR(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 46
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :try_start_0
    const-string v2, "vibrate_in_silent"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 49
    const-string v5, "vibrate_in_silent"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    const-string v2, "vibrate_in_normal"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-static {v3, v2, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    const-string v5, "vibrate_when_ringing"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    const-string v2, "dtmf_tone"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 54
    :goto_0
    const-string v5, "dtmf_tone"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 55
    const-string v2, "sound_effects_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 56
    :goto_1
    const-string v5, "sound_effects_enabled"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    const-string v2, "lockscreen_sounds_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 58
    :goto_2
    const-string v5, "lockscreen_sounds_enabled"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    const-string v2, "haptic_feedback_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    :goto_3
    const-string v1, "haptic_feedback_enabled"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    const-string v0, "haptic_feedback_level"

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    const-string v1, "haptic_feedback_level"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v0, "support_media_feedback"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->I(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 68
    const-string v2, "media_feedback_enabled"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    const-string v1, "strength"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    const-string v1, "media_feedback_strength"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_4
    return-object v4

    :cond_1
    move v2, v1

    .line 53
    goto :goto_0

    :cond_2
    move v2, v1

    .line 55
    goto :goto_1

    :cond_3
    move v2, v1

    .line 57
    goto :goto_2

    :cond_4
    move v0, v1

    .line 59
    goto :goto_3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "SettingsBackup"

    const-string v2, "build json error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 82
    const-string v0, "vibrate_in_silent"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    invoke-static {p0, v0, v1}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 84
    const-string v0, "vibrate_when_ringing"

    sget-boolean v4, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    invoke-static {p0, v0, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 86
    const-string v0, "dtmf_tone"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    const-string v4, "dtmf_tone"

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const-string v0, "sound_effects_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    const-string v4, "sound_effects_enabled"

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    const-string v0, "lockscreen_sounds_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    const-string v4, "lockscreen_sounds_enabled"

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    const-string v0, "haptic_feedback_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    const-string v4, "haptic_feedback_enabled"

    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    const-string v0, "haptic_feedback_level"

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    const-string v1, "haptic_feedback_level"

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const-string v0, "support_media_feedback"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->I(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    const-string v1, "media_feedback_enabled"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    const-string v2, "media_feedback_strength"

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    const-string v3, "enable"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v1, "strength"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 87
    goto :goto_0

    :cond_2
    move v0, v2

    .line 89
    goto :goto_1

    :cond_3
    move v0, v2

    .line 91
    goto :goto_2

    :cond_4
    move v1, v2

    .line 93
    goto :goto_3
.end method
