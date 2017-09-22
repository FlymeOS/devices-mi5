.class public Lcom/android/vendorsettings/cloudbackup/e;
.super Ljava/lang/Object;
.source "ScreenKeySettingsCloudBackupHelper.java"


# direct methods
.method private static a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "ScreenKeySettingsCloudBackupHelper"

    const-string v2, "SettingNotFoundException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aR(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 44
    const-string v2, "screen_key_press_app_switch"

    const-string v5, "screen_key_press_app_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    const-string v2, "screen_key_long_press_app_switch"

    const-string v5, "screen_key_long_press_app_switch"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "screen_key_long_press_home"

    const-string v5, "screen_key_long_press_home"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "screen_key_long_press_back"

    const-string v5, "screen_key_long_press_back"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "screen_key_long_press_timeout"

    const-string v5, "screen_key_long_press_timeout"

    invoke-static {v3, v4, v2, v5}, Lcom/android/vendorsettings/cloudbackup/e;->a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "screen_buttons_light_timeout"

    const-string v5, "screen_buttons_timeout"

    invoke-static {v3, v4, v2, v5}, Lcom/android/vendorsettings/cloudbackup/e;->a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "screen_buttons_turn_on"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    .line 56
    :goto_0
    const-string v5, "screen_buttons_light_on"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    const-string v2, "keyguard_disable_power_key_long_press"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 61
    :goto_1
    const-string v5, "keyguard_power_long_press"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 63
    const-string v2, "volumekey_wake_screen"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    .line 64
    :goto_2
    const-string v5, "keyguard_volume_wake"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    const-string v2, "volumekey_launch_camera"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 67
    :goto_3
    const-string v1, "keyguard_volume_launch_camera"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_4
    return-object v3

    :cond_0
    move v2, v1

    .line 55
    goto :goto_0

    :cond_1
    move v2, v1

    .line 58
    goto :goto_1

    :cond_2
    move v2, v1

    .line 63
    goto :goto_2

    :cond_3
    move v0, v1

    .line 66
    goto :goto_3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "ScreenKeySettingsCloudBackupHelper"

    const-string v2, "build json error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 85
    const-string v0, "screen_key_press_app_switch"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    const-string v4, "screen_key_press_app_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 87
    const-string v0, "screen_key_long_press_app_switch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v4, "screen_key_long_press_app_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    const-string v0, "screen_key_long_press_home"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v4, "screen_key_long_press_home"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    const-string v0, "screen_key_long_press_back"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v4, "screen_key_long_press_back"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    const-string v0, "screen_key_long_press_timeout"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    if-eq v0, v5, :cond_0

    .line 95
    const-string v4, "screen_key_long_press_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    :cond_0
    const-string v0, "screen_buttons_light_timeout"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 98
    if-eq v0, v5, :cond_1

    .line 99
    const-string v4, "screen_buttons_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_1
    const-string v0, "screen_buttons_light_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 102
    const-string v4, "screen_buttons_turn_on"

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    const-string v0, "keyguard_power_long_press"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 104
    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v0, "keyguard_volume_wake"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 106
    const-string v5, "volumekey_wake_screen"

    if-eqz v4, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-static {v4}, Lcom/android/vendorsettings/fy;->O(Z)V

    .line 109
    const-string v0, "keyguard_volume_launch_camera"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 110
    const-string v4, "volumekey_launch_camera"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    return-void

    :cond_2
    move v0, v2

    .line 102
    goto :goto_0

    :cond_3
    move v0, v2

    .line 104
    goto :goto_1

    :cond_4
    move v0, v2

    .line 106
    goto :goto_2

    :cond_5
    move v1, v2

    .line 110
    goto :goto_3
.end method
