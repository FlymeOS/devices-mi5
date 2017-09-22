.class public Lcom/android/vendorsettings/display/d;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method protected static a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/vendorsettings/display/ScreenPaperModeUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 112
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 113
    const-string v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 115
    return-object v1
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    const-string v1, "paper_mode_update_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public static bc(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    const-string v1, "paper_mode_trigger_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public static bd(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    const-string v1, "paper_mode_update_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static be(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 89
    const/16 v1, 0xbb9

    const-string v2, "android.intent.action.INIT_PAPER_MODE_PKG_LIST"

    invoke-static {p0, v1, v2}, Lcom/android/vendorsettings/display/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 90
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 91
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 93
    :cond_0
    return-void
.end method

.method public static bf(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 101
    const/16 v1, 0xbba

    const-string v2, "android.intent.action.UPDATE_PAPER_MODE_PKG_LIST"

    invoke-static {p0, v1, v2}, Lcom/android/vendorsettings/display/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 103
    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 106
    :cond_0
    return-void
.end method
