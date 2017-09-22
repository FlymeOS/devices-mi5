.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;I)V
    .locals 4
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p3, "usage"    # I

    .prologue
    const/4 v3, 0x3

    .line 15
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 16
    .local v0, "zenMode":I
    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelperInjector;->isVibrateEnabledInSilent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v3, p3, v1, v2}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 21
    :cond_1
    return-void

    .line 17
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 5
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    return v2

    .line 49
    .local v2, "zenMode":I
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 50
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, -0x1

    .line 52
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 55
    :pswitch_0
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x2

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    .line 61
    :pswitch_1
    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    .line 62
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static applyZenToRingerMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 5
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v3

    .line 25
    .local v3, "zenMode":I
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 26
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v1, -0x1

    .line 28
    .local v1, "newRingerMode":I
    packed-switch v3, :pswitch_data_0

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 31
    :pswitch_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v2

    .line 32
    .local v2, "validateRingerMode":I
    if-eq v2, p2, :cond_0

    .line 33
    move v1, v2

    goto :goto_0

    .line 38
    .end local v2    # "validateRingerMode":I
    :pswitch_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    .line 39
    const/4 v1, 0x2

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static canInterrupt(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 77
    .local v0, "zenMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelperInjector;->isVibrateEnabledInSilent(Landroid/content/Context;)Z

    move-result v1

    .line 80
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static computeZenMode(Lcom/android/server/notification/ZenModeHelper;I)I
    .locals 0
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "zen"    # I

    .prologue
    .line 72
    return p1
.end method

.method private static isVibrateEnabledInSilent(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
