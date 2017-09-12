.class public Lcom/android/server/am/AutoStartManagerService;
.super Ljava/lang/Object;
.source "AutoStartManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoStartManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 68
    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v2, 0x2718

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 72
    :cond_0
    const-string v1, "AutoStartManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Reject RestartService packageName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 24
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    invoke-interface {v2, v3, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 25
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 33
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return v5

    .line 28
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 29
    .local v4, "uid":I
    invoke-static {p0, p1, p2, v4}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 30
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    :try_start_0
    const-string v9, "appops"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 39
    .local v1, "aom":Landroid/app/AppOpsManager;
    if-nez v1, :cond_1

    .line 64
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    :cond_0
    :goto_0
    return v7

    .line 42
    .restart local v1    # "aom":Landroid/app/AppOpsManager;
    :cond_1
    const/16 v9, 0x2718

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, p3, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 48
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-interface {v9, p1, v10, v11, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 50
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 51
    .local v6, "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    if-eqz v6, :cond_0

    .line 54
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, p3, v10}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 56
    .local v4, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_3

    .line 57
    const-string v9, "AutoStartManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MIUILOG- Reject service :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-exit v0

    move v7, v8

    goto :goto_0

    .line 60
    :cond_3
    monitor-exit v0

    goto :goto_0

    .end local v4    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v8

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
