.class public final Lcom/android/vendorsettings/b/a;
.super Ljava/lang/Object;
.source "CellBroadcastUtil.java"


# direct methods
.method private static a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p0, p1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static aW(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 75
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/android/vendorsettings/b/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const v1, 0x7f0a00d4

    invoke-static {v1, p0}, Lcom/android/vendorsettings/b/a;->b(ILandroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    .line 88
    const v2, 0x7f0a00d5

    invoke-static {v2, p0}, Lcom/android/vendorsettings/b/a;->b(ILandroid/content/Context;)Ljava/util/HashSet;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 92
    invoke-static {}, Lcom/android/vendorsettings/b/a;->oN()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    const-string v2, "com.mediatek.cellbroadcastreceiver"

    .line 96
    const-string v1, "com.android.cellbroadcastreceiver"

    .line 115
    :goto_1
    if-eqz v2, :cond_2

    .line 116
    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/vendorsettings/b/a;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)V

    .line 119
    :cond_2
    if-eqz v1, :cond_3

    .line 120
    invoke-static {v1, v5, v3}, Lcom/android/vendorsettings/b/a;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)V

    .line 123
    :cond_3
    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0, v5, v3}, Lcom/android/vendorsettings/b/a;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    const-string v2, "com.android.cellbroadcastreceiver"

    .line 99
    const-string v1, "com.mediatek.cellbroadcastreceiver"

    goto :goto_1

    .line 101
    :cond_5
    const-string v2, "com.android.cellbroadcastreceiver"

    .line 102
    const-string v1, "com.mediatek.cellbroadcastreceiver"

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    .line 107
    :cond_6
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 108
    const-string v1, "com.android.cellbroadcastreceiver"

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 110
    :cond_7
    const-string v1, "com.android.cellbroadcastreceiver"

    move-object v2, v0

    goto :goto_1
.end method

.method public static b(ILandroid/content/Context;)Ljava/util/HashSet;
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 64
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-object v2
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 27
    const v0, 0x7f0a00d5

    invoke-static {v0, p0}, Lcom/android/vendorsettings/b/a;->b(ILandroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    invoke-static {}, Lcom/android/vendorsettings/b/a;->oN()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/vendorsettings/b/a;->c(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.cellbroadcastreceiver"

    const-string v3, "com.mediatek.cellbroadcastreceiver.CellBroadcastMainSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.cellbroadcastreceiver"

    const-string v3, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static c(Landroid/content/pm/PackageManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    .line 51
    :try_start_0
    const-string v2, "com.mediatek.cellbroadcastreceiver"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    .line 55
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    move v0, v1

    .line 53
    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static oN()Z
    .locals 2

    .prologue
    .line 139
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
