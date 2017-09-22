.class public Lcom/android/vendorsettings/cloudbackup/b;
.super Ljava/lang/Object;
.source "DoNotDisturbCloudbackupHelper.java"


# direct methods
.method public static final aR(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    const-string v1, "CKAutoStartTime"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v1, "CKAutoEndTime"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "CKEnableAutoOpen"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    const-string v1, "CKVipCallEnable"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    const-string v1, "CKVipList"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "CKIgnoreRepeat"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v1, "NotificationFilterCloudBackupHelper"

    const-string v2, "Build JSON failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "CKAutoStartTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "CKAutoStartTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setStartTimeForQuietMode(Landroid/content/Context;I)V

    .line 61
    :cond_2
    const-string v0, "CKAutoEndTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string v0, "CKAutoEndTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setEndTimeForQuietMode(Landroid/content/Context;I)V

    .line 66
    :cond_3
    const-string v0, "CKEnableAutoOpen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-string v0, "CKEnableAutoOpen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 69
    if-eqz v0, :cond_7

    .line 70
    invoke-static {p0}, Lcom/android/vendorsettings/dndmode/m;->bv(Landroid/content/Context;)V

    .line 76
    :cond_4
    :goto_1
    const-string v0, "CKVipCallEnable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    const-string v0, "CKVipCallEnable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setVipCallActionEnable(Landroid/content/Context;Z)V

    .line 79
    :cond_5
    const-string v0, "CKVipList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 80
    const-string v0, "CKVipList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setVipListForQuietMode(Landroid/content/Context;I)V

    .line 82
    :cond_6
    const-string v0, "CKIgnoreRepeat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "CKIgnoreRepeat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 72
    :cond_7
    invoke-static {p0}, Lcom/android/vendorsettings/dndmode/m;->bx(Landroid/content/Context;)V

    goto :goto_1
.end method
