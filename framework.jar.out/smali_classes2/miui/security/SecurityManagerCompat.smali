.class public Lmiui/security/SecurityManagerCompat;
.super Ljava/lang/Object;
.source "SecurityManagerCompat.java"


# static fields
.field public static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final MTK:Ljava/lang/String; = "mediatek"

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final RTC_POWEROFF_WAKEUP_QCOM_M:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SecurityManagerCompat"

.field public static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field public static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 100
    .local v0, "hide":Z
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public static createPackageParser(Ljava/lang/String;)Landroid/content/pm/PackageParser;
    .locals 1
    .param p0, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    return-object v0
.end method

.method public static parsePackage(Landroid/content/pm/PackageParser;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p0, "pp"    # Landroid/content/pm/PackageParser;
    .param p1, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startActvity(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "wakeTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v2, "mediatek"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 58
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 59
    .local v1, "pi":Landroid/app/PendingIntent;
    const/16 v2, 0x8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v2, "leadcore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "/sys/comip/rtc_alarm"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p0, p2, p3}, Lmiui/security/SecurityManagerCompat;->writeQcomBootTime(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private static writeQcomBootTime(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .prologue
    .line 69
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "/sys/class/rtc/rtc0/wakealarm"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v3, "SecurityManagerCompat"

    const-string v4, "Wake up time updated to wakealarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 75
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 78
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    :try_start_0
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SecurityManagerCompat"

    const-string v4, "alarm type 5 not supported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
