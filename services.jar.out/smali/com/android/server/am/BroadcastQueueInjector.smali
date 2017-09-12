.class public Lcom/android/server/am/BroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# static fields
.field private static final ACTION_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final TAG:Ljava/lang/String; = "BroadcastQueueInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 11
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "s"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_0

    move v6, v10

    .line 115
    :goto_0
    return v6

    .line 76
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v10

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    const/4 v9, 0x0

    .line 81
    .local v9, "reason":Ljava/lang/String;
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :goto_1
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/security/WakePathChecker;->checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    move v6, v10

    .line 84
    goto :goto_0

    .line 81
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 87
    :cond_3
    const/4 v7, 0x0

    .line 88
    .local v7, "abort":Z
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 90
    const/4 v7, 0x1

    .line 91
    const-string v9, " system app CONNECTIVITY_CHANGE"

    .line 94
    :cond_4
    if-nez v7, :cond_6

    .line 95
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, v2}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 97
    .local v8, "autoStartMode":I
    if-nez v8, :cond_5

    move v6, v10

    .line 98
    goto :goto_0

    .line 100
    :cond_5
    const-string v9, " auto start"

    .line 106
    .end local v7    # "abort":Z
    .end local v8    # "autoStartMode":I
    :cond_6
    :goto_2
    const-string v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": process is not permitted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 111
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 114
    iput v6, p2, Lcom/android/server/am/BroadcastRecord;->state:I

    goto/16 :goto_0

    .line 103
    :cond_7
    const-string v9, " weak path"

    goto :goto_2
.end method

.method static checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 4
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "s"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "isStatic"    # Z

    .prologue
    const/4 v0, 0x1

    .line 25
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    iget v1, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const-string v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_2

    if-eqz p4, :cond_3

    .line 29
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 31
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z
    .locals 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .prologue
    const/4 v3, 0x0

    .line 127
    const/16 v4, 0x10

    if-eq p4, v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    :try_start_0
    const-string v4, "miui.intent.SERVICE_NUMBER"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v5, 0x2722

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "mode":I
    if-eqz v2, :cond_0

    .line 141
    const-string v4, "BroadcastQueueInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUILOG- Sms Filter packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "mode":I
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "appOp"    # I

    .prologue
    .line 119
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "appOp"    # I

    .prologue
    .line 123
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkipImplicitBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 20
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 154
    const/4 v9, 0x0

    .line 155
    .local v9, "skip":Z
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 156
    .local v12, "targetproc":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 157
    .local v6, "curtime":J
    sget-object v13, Lcom/android/server/am/ActivityManagerServiceInjector;->mRecentlyDiedProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;

    .line 158
    .local v8, "diedProcInfo":Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;
    if-eqz v8, :cond_1

    .line 159
    iget-wide v14, v8, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;->time:J

    .line 160
    .local v14, "time":J
    sub-long v16, v6, v14

    const-wide/32 v18, 0x927c0

    cmp-long v13, v16, v18

    if-gez v13, :cond_0

    .line 162
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    .line 163
    .local v2, "availMem":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    .line 164
    .local v4, "cachedMaxAppMem":J
    iget-wide v0, v8, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;->pss:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x400

    mul-long v10, v16, v18

    .line 166
    .local v10, "lastpss":J
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_0

    sub-long v16, v2, v10

    cmp-long v13, v16, v4

    if-gez v13, :cond_0

    .line 168
    const/4 v9, 0x1

    .line 169
    const-string v13, "BroadcastQueueInjector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skip implicit broadcast(CONNECTIVITY_ACTION) becauseof low_ram, target is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v2    # "availMem":J
    .end local v4    # "cachedMaxAppMem":J
    .end local v10    # "lastpss":J
    :cond_0
    if-nez v9, :cond_1

    .line 174
    sget-object v13, Lcom/android/server/am/ActivityManagerServiceInjector;->mRecentlyDiedProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v14    # "time":J
    :cond_1
    return v9
.end method

.method static processBroadcastHookLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 14
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 38
    sget-boolean v7, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v7, :cond_0

    .line 39
    const/4 v7, 0x1

    .line 68
    :goto_0
    return v7

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 45
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 47
    .local v2, "curComponent":Landroid/content/ComponentName;
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 49
    .local v6, "targetProcess":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_5

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 52
    .local v1, "packageName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 53
    .local v3, "callerPackage":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 54
    .local v4, "callingUid":I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 56
    .local v5, "callingPid":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static/range {v1 .. v7}, Lcom/miui/whetstone/client/WhetstoneClientManager;->processBroadcastHookLocked(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 58
    const/4 v7, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "callerPackage":Ljava/lang/String;
    .end local v4    # "callingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "targetProcess":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 49
    .restart local v6    # "targetProcess":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 62
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "callerPackage":Ljava/lang/String;
    .restart local v4    # "callingUid":I
    .restart local v5    # "callingPid":I
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 63
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x0

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 67
    const/4 v7, 0x0

    move-object/from16 v0, p2

    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 68
    const/4 v7, 0x0

    goto :goto_0
.end method
