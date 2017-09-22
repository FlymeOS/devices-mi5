.class public Lcom/android/vendorsettings/display/F;
.super Ljava/lang/Object;
.source "PaperModeTimeModeUtil.java"


# direct methods
.method private static b(Landroid/content/Context;JJ)V
    .locals 13

    .prologue
    .line 58
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v2, "paper_mode_time_on"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v2, "paper_mode_time_off"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 72
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x5265c00

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v2, p1

    :try_start_0
    invoke-interface/range {v0 .. v11}, Landroid/app/IAlarmManager;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 74
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x5265c00

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v2, p3

    move-object v9, v12

    invoke-interface/range {v0 .. v11}, Landroid/app/IAlarmManager;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "PaperModeTimeModeUtil"

    const-string v2, "Unable to set alarm"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static bO(I)J
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 108
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    .line 109
    if-lt v1, p0, :cond_0

    .line 110
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 112
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 113
    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bl(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/vendorsettings/display/F;->bm(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcom/android/vendorsettings/display/F;->bn(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static bm(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    .line 34
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 35
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v2, "paper_mode_time_on"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string v2, "paper_mode_time_on"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 46
    return-void
.end method

.method private static bn(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/vendorsettings/display/F;->bo(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/vendorsettings/display/F;->bO(I)J

    move-result-wide v0

    .line 52
    invoke-static {p0}, Lcom/android/vendorsettings/display/F;->bp(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/vendorsettings/display/F;->bO(I)J

    move-result-wide v2

    .line 53
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vendorsettings/display/F;->b(Landroid/content/Context;JJ)V

    .line 54
    return-void
.end method

.method public static bo(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_start"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bp(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_end"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return-void
.end method

.method public static l(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_end"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method
