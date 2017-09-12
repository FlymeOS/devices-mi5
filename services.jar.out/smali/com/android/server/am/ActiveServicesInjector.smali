.class public Lcom/android/server/am/ActiveServicesInjector;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 11
    .param p0, "record"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 40
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, "Restart: AMS"

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v8

    :goto_2
    aput-object v8, v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 26
    const-string v1, "WhetstonePackageState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied by Whetstone, cannot re-start service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 30
    goto :goto_0

    .line 18
    :cond_1
    const-string v5, ""

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 26
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 34
    :cond_4
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 35
    const-string v1, "WhetstonePackageState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restart service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v10

    .line 40
    goto/16 :goto_0

    .line 35
    :cond_6
    const-string v0, ""

    goto :goto_4
.end method
