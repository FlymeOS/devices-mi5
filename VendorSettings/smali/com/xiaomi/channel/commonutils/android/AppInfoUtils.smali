.class public Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# direct methods
.method public static G(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "1.0"

    goto :goto_1
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    .locals 6

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    .line 100
    :goto_0
    return-object v0

    .line 90
    :cond_1
    :try_start_0
    const-class v0, Landroid/app/AppOpsManager;

    const-string v1, "OP_POST_NOTIFICATION"

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/e/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    if-nez v0, :cond_2

    .line 92
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 95
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 96
    const-string v3, "checkOpNoThrow"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-static {v1, v3, v4}, Lcom/xiaomi/channel/commonutils/e/a;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXl:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXm:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    goto :goto_0
.end method
