.class public Lcom/android/settings/cloudbackup/a;
.super Ljava/lang/Object;
.source "AdvancedSettingsCloudBackupHelper.java"


# static fields
.field private static final Ut:[Ljava/lang/String;

.field private static Uu:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "breathing_light_color"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "breathing_light_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "call_breathing_light_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "call_breathing_light_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mms_breathing_light_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mms_breathing_light_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cloudbackup/a;->Ut:[Ljava/lang/String;

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/cloudbackup/a;->Uu:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public static aR(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    const-string v2, "CKTimeHour24"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_0
    const-string v1, "CKBattaryIndicator"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_indicator_style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "CKLed"

    invoke-static {p0}, Lcom/android/settings/cloudbackup/a;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const-string v1, "AdvancedSettingsCloudBackupHelper"

    const-string v2, "Build JSON failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static aS(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 86
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x110d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 93
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/cloudbackup/a;->Ut:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 94
    sget-object v1, Lcom/android/settings/cloudbackup/a;->Ut:[Ljava/lang/String;

    aget-object v5, v1, v0

    .line 95
    sget-object v1, Lcom/android/settings/cloudbackup/a;->Uu:[I

    aget v1, v1, v0

    .line 97
    if-ne v1, v8, :cond_1

    move v1, v2

    .line 103
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    if-ne v1, v8, :cond_0

    move v1, v3

    .line 100
    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const-string v1, "AdvancedSettingsCloudBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get led config JSON for entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    :cond_2
    return-object v4
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "CKTimeHour24"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    const-string v2, "CKTimeHour24"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    :cond_1
    const-string v0, "CKBattaryIndicator"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const-string v2, "CKBattaryIndicator"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    :cond_2
    const-string v0, "CKLed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 114
    if-nez p1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 118
    :cond_1
    sget-object v1, Lcom/android/settings/cloudbackup/a;->Ut:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
