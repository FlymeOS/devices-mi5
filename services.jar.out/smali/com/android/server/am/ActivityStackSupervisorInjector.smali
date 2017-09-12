.class Lcom/android/server/am/ActivityStackSupervisorInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisorInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "ignoreTargetSecurity"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 30
    invoke-static/range {p0 .. p7}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZI)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    .prologue
    .line 35
    invoke-static/range {p0 .. p9}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p2, p6}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    .end local p2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p2

    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/miui/server/XSpaceManagerService;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0
.end method

.method static ensurePackageDexOpt(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isXSpaceActive()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    return v0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ass"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ExtraActivityManagerService;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 12
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "startFlags"    # I
    .param p6, "userId"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 65
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object p0

    .line 68
    :cond_1
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const v3, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v2, p1, v0, v3, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object p0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_2
    :goto_1
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v7

    .line 77
    .local v7, "cachedUserId":I
    const/16 v2, -0x2710

    if-eq v7, v2, :cond_0

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p3

    .line 80
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 81
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 72
    .end local v7    # "cachedUserId":I
    .end local v10    # "token":J
    :catch_0
    move-exception v8

    .line 73
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "requestCode"    # I
    .param p8, "userId"    # I

    .prologue
    .line 89
    invoke-static {p0, p5, p4}, Lcom/android/server/am/MiuiMultiTaskManager;->updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method static updateScreenPaperMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v1, Lcom/android/server/display/PaperModeManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PaperModeManager;

    .line 45
    .local v0, "paperModeManager":Lcom/android/server/display/PaperModeManager;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/display/PaperModeManager;->updatePaperModePkg(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
