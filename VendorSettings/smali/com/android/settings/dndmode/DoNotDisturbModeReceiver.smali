.class public Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DoNotDisturbModeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bq(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 80
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 81
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 92
    new-instance v2, Lcom/android/settings/dndmode/b;

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings/dndmode/b;-><init>(I)V

    .line 94
    invoke-virtual {v2}, Lcom/android/settings/dndmode/b;->pU()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 99
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 86
    :sswitch_1
    invoke-static {v2}, Lcom/android/settings/dndmode/n;->a(Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 87
    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private br(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 103
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getNextAutoStartTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bq(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bs(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->bW(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private bt(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->bW(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-static {p1}, Lcom/android/settings/dndmode/m;->bv(Landroid/content/Context;)V

    .line 29
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {p1}, Lcom/android/settings/dndmode/m;->bw(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getNextAutoStartTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bq(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v7, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bs(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoStartTime(Landroid/content/Context;J)V

    .line 51
    :cond_1
    :goto_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    :cond_2
    invoke-static {p1, v8, v9}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoStartTime(Landroid/content/Context;J)V

    .line 54
    invoke-static {p1, v8, v9}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoEndTime(Landroid/content/Context;J)V

    .line 76
    :cond_3
    :goto_1
    return-void

    .line 39
    :cond_4
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getNextAutoEndTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->br(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v6, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bt(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoEndTime(Landroid/content/Context;J)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v1, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/dndmode/m;->bw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v7, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bs(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoStartTime(Landroid/content/Context;J)V

    goto :goto_1

    .line 64
    :cond_6
    const-string v1, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {p1}, Lcom/android/settings/dndmode/m;->bw(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->br(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v6, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->bt(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoEndTime(Landroid/content/Context;J)V

    .line 73
    :cond_7
    invoke-static {p1}, Lcom/android/settings/dndmode/m;->bv(Landroid/content/Context;)V

    goto :goto_1
.end method
