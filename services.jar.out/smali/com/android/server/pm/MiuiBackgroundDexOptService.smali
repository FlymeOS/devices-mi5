.class public Lcom/android/server/pm/MiuiBackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "MiuiBackgroundDexOptService.java"


# static fields
.field private static final DEXOPT_LRU_THRESHOLD_DAYS:I = 0x7

.field static final MIUI_BACKGROUND_DEXOPT_JOB:I = 0x384

.field static final RETRY_LATENCY:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "MiuiBackgroundDexOptService"

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/pm/MiuiBackgroundDexOptService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/MiuiBackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/MiuiBackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/MiuiBackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getMostNeededDexOptPackages(Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 71
    .local v3, "pm":Lcom/android/server/pm/PackageManagerService;
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageDexOptimizerManager;->getRecentlyUsedPackages(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 74
    .local v4, "startedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 75
    .local v1, "mostNeededPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "p":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/MiuiBackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    .line 57
    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minLatency"    # J

    .prologue
    .line 60
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 61
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x384

    sget-object v4, Lcom/android/server/pm/MiuiBackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 66
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 67
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 10
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 85
    const-string v1, "MiuiBackgroundDexOptService"

    const-string v2, "onIdleStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    .line 89
    .local v4, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-wide/32 v8, 0xdbba00

    invoke-static {p0, v8, v9}, Lcom/android/server/pm/MiuiBackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getPackagesThatNeedDexOpt()Landroid/util/ArraySet;

    move-result-object v6

    .line 95
    .local v6, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 99
    invoke-direct {p0, v6}, Lcom/android/server/pm/MiuiBackgroundDexOptService;->getMostNeededDexOptPackages(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v3

    .line 100
    .local v3, "mostPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    move-object v5, p1

    .line 105
    .local v5, "jobParams":Landroid/app/job/JobParameters;
    iget-object v0, p0, Lcom/android/server/pm/MiuiBackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    new-instance v0, Lcom/android/server/pm/MiuiBackgroundDexOptService$1;

    const-string v2, "MiuiBackgroundDexOptService_DexOpter"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/MiuiBackgroundDexOptService$1;-><init>(Lcom/android/server/pm/MiuiBackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Lcom/android/server/pm/MiuiBackgroundDexOptService$1;->start()V

    move v0, v7

    .line 125
    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v0, "MiuiBackgroundDexOptService"

    const-string v1, "onIdleStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/MiuiBackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    return v2
.end method
