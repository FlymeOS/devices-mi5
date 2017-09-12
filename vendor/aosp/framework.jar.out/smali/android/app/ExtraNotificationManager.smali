.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x3e7

    .line 107
    .local v0, "userHandle":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "quiet_mode_enable"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .end local v0    # "userHandle":I
    :cond_0
    move v0, p1

    .line 104
    goto :goto_0

    .restart local v0    # "userHandle":I
    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/16 v5, 0x3e7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 70
    .local v0, "preMode":I
    if-eqz p1, :cond_1

    .line 71
    if-nez v0, :cond_0

    .line 72
    invoke-static {p0, v3}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_1
    if-ne v0, v3, :cond_2

    .line 83
    invoke-static {p0, v4}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;I)V

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 130
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 131
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 132
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 133
    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
