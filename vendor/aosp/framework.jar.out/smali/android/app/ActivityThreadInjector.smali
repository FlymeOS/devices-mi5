.class public Landroid/app/ActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCachedDrawables()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    const-class v1, Landroid/content/res/Resources;

    const-string/jumbo v2, "sCachedDrawables"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    .local v0, "cachedDrawables":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 99
    const-string v1, "ActivityThreadInjector"

    const-string v2, "clearCachedDrawables."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static enableAppLogSwitch()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    .line 51
    return-void
.end method

.method public static enableStrictMode()V
    .locals 5

    .prologue
    .line 29
    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_0

    .line 47
    .local v0, "isPenaltyDeath":Z
    .local v1, "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    .local v2, "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    :goto_0
    return-void

    .line 32
    .end local v0    # "isPenaltyDeath":Z
    .end local v1    # "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    .end local v2    # "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    :cond_0
    const-string/jumbo v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .restart local v0    # "isPenaltyDeath":Z
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 36
    .restart local v1    # "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 41
    .restart local v2    # "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 43
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0
.end method

.method static preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
    .locals 4
    .param p0, "thiz"    # Landroid/app/ActivityThread;
    .param p1, "theme"    # I
    .param p2, "info"    # Landroid/app/LoadedApk;

    .prologue
    .line 64
    if-lez p1, :cond_0

    .line 66
    :try_start_0
    invoke-static {p0, p2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 67
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 68
    move-object v1, v0

    .line 69
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/app/ActivityThreadInjector$1;

    invoke-direct {v3, v1}, Landroid/app/ActivityThreadInjector$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static raiseThreadPriority()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 60
    .local v0, "tid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 61
    return-void
.end method

.method static updatePackageInfoForLogSwitch(Landroid/app/ActivityThread$AppBindData;)V
    .locals 1
    .param p0, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    .line 56
    return-void
.end method
