.class Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;
    }
.end annotation


# static fields
.field public static final ANR_DEBUG_TAG:Ljava/lang/String; = "ANR_DEBUG"

.field public static final EXP_TYPE_ANR:I = 0x8

.field public static final EXP_TYPE_JE:I = 0x1

.field public static final EXP_TYPE_JWDT:I = 0x2

.field public static final EXP_TYPE_NE:I = 0x4

.field public static final FLAG_REPORT_CPU_INFO:I = 0x200

.field public static final FLAG_REPORT_DMESG:I = 0x10

.field public static final FLAG_REPORT_DMESG_LITE:I = 0x20

.field public static final FLAG_REPORT_LOGCAT:I = 0x1

.field public static final FLAG_REPORT_LOGCAT_LITE:I = 0x2

.field public static final FLAG_REPORT_MEM_INFO:I = 0x400

.field public static final FLAG_REPORT_PROCESS_INFO:I = 0x100

.field public static final FLAG_REPORT_TRACE:I = 0x800

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_STABLE_VERSION:Z

.field static final LMK_KILLED_COOL_TIME:J = 0x927c0L

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field public static mLastReportTime:J

.field static mProtectedProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mRecentlyDiedProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    .line 165
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mRecentlyDiedProcesses:Landroid/util/ArrayMap;

    .line 398
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastReportTime:J

    .line 402
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_DEVELOPMENT_VERSION:Z

    .line 406
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_STABLE_VERSION:Z

    return-void

    :cond_0
    move v0, v2

    .line 402
    goto :goto_0

    :cond_1
    move v1, v2

    .line 406
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method public static appDiedLowRam(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 343
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mRecentlyDiedProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mRecentlyDiedProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method static broadcastIntentLocked(Lcom/android/server/am/ActivityManagerService;ZZLcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 368
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static broadcastQueueByFlag(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "flags"    # I

    .prologue
    .line 374
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method public static checkGMSInstall(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 214
    .local v1, "serviceProcess":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 215
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 216
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 217
    .local v2, "topProcess":Ljava/lang/String;
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.provision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "ActivityManagerServiceInjector"

    const-string v4, "delay gms service timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x1

    .line 224
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "serviceProcess":Ljava/lang/String;
    .end local v2    # "topProcess":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static clearDeadAppFromNative(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Thread;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processCpuThread"    # Ljava/lang/Thread;
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/Thread;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "lruProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v4, "procMemsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 192
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 193
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 195
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 197
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getForegroundApplicationUid()I

    move-result v1

    .line 198
    .local v1, "foregroundUid":I
    monitor-enter p2

    .line 199
    :try_start_1
    invoke-virtual {p3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    .line 200
    .local v0, "N":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 201
    invoke-virtual {p3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    .line 202
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    if-eq v1, v6, :cond_1

    .line 203
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 204
    const-string v6, "ActivityManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kill the native dead app pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "N":I
    .end local v1    # "foregroundUid":I
    .end local v2    # "i":I
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 207
    .restart local v0    # "N":I
    .restart local v1    # "foregroundUid":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_3
    monitor-exit p2

    .line 208
    return-void

    .line 207
    .end local v0    # "N":I
    :catchall_1
    move-exception v6

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method static computeGids(I[I)[I
    .locals 6
    .param p0, "userId"    # I
    .param p1, "gids"    # [I

    .prologue
    .line 240
    sget-boolean v5, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, p1

    .line 258
    .end local p1    # "gids":[I
    .local v2, "gids":[I
    :goto_0
    return-object v2

    .line 243
    .end local v2    # "gids":[I
    .restart local p1    # "gids":[I
    :cond_1
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 245
    .local v1, "gid":I
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    if-ne v1, v5, :cond_3

    .line 246
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .end local v0    # "arr$":[I
    .end local v1    # "gid":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    :goto_2
    move-object v2, p1

    .line 258
    .end local p1    # "gids":[I
    .restart local v2    # "gids":[I
    goto :goto_0

    .line 244
    .end local v2    # "gids":[I
    .restart local v0    # "arr$":[I
    .restart local v1    # "gid":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local p1    # "gids":[I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "arr$":[I
    .end local v1    # "gid":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    if-nez p0, :cond_2

    .line 251
    move-object v0, p1

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 252
    .restart local v1    # "gid":I
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    if-ne v1, v5, :cond_5

    .line 253
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 254
    goto :goto_2

    .line 251
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendFinishBootingBroadcast(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->forceStopUserLocked(ILjava/lang/String;)V

    .line 229
    return-void
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 112
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v3

    .line 113
    :cond_1
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 116
    .local v0, "callingUid":I
    if-lez v0, :cond_0

    .line 118
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 120
    const/4 v4, 0x0

    aget-object v3, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static getExtraQueueSize()I
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->getExtraQueueSize()I

    move-result v0

    return v0
.end method

.method static getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 358
    invoke-static {p0}, Lcom/android/server/am/MiuiBroadcastManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .prologue
    .line 236
    invoke-static/range {p0 .. p5}, Lcom/android/server/am/ExtraActivityManagerService;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V

    .line 237
    return-void
.end method

.method static final init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget v0, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 71
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    .line 72
    return-void
.end method

.method static initExtraQuqueIfNeed(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "startIndex"    # I

    .prologue
    .line 363
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->initExtraQuqueIfNeed(I)Z

    move-result v0

    return v0
.end method

.method static isExtraQueueEnabled()Z
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->isExtraQueueEnabled()Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 379
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z

    move-result v0

    return v0
.end method

.method static isGetTasksOpAllowed(Lcom/android/server/AppOpsService;Ljava/lang/String;II)Z
    .locals 3
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 312
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "getRunningAppProcesses"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    invoke-static {p2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    const/16 v2, 0x2723

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupPkgName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 158
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    .line 160
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 158
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 160
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 232
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isUserSwitchable(I)Z

    move-result v0

    return v0
.end method

.method static final killNativePackageProcesses(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "uid":I
    const-string v2, "security"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 78
    .local v0, "sm":Lmiui/security/SecurityManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "sm":Lmiui/security/SecurityManager;
    .end local v1    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .locals 18
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string v14, "ANR_DEBUG"

    const-string v15, "process record is null!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local p8    # "headline":Ljava/lang/String;
    :goto_0
    return-void

    .line 422
    .restart local p8    # "headline":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 424
    .local v10, "processName":Ljava/lang/String;
    const-string v14, "sys.mqsas.skip_bg_anr"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 425
    .local v12, "skipBgAnr":Z
    const-string v14, "sys.mqsas.anr_interval"

    const/16 v15, 0x7530

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    int-to-long v6, v14

    .line 426
    .local v6, "interval":J
    const-string v14, "sys.mqsas.force_enable"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 428
    .local v5, "forceEnable":Z
    sget-boolean v14, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_STABLE_VERSION:Z

    if-eqz v14, :cond_1

    if-nez v5, :cond_1

    .line 429
    const-string v14, "ANR_DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "skip anr report: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in stable build."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_1
    const/4 v2, 0x0

    .line 434
    .local v2, "bgAnr":Z
    monitor-enter p0

    .line 435
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v2, 0x1

    .line 436
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v12, :cond_3

    if-eqz v2, :cond_3

    .line 438
    const-string v14, "ANR_DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bg anr! skip anr report:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 442
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 443
    .local v8, "now":J
    sget-wide v14, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastReportTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    sget-wide v14, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastReportTime:J

    sub-long v14, v8, v14

    cmp-long v14, v14, v6

    if-gez v14, :cond_4

    .line 444
    const-string v14, "ANR_DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "too noisy! skip anr report:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " now="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mLastReportTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastReportTime:J

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " interval="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 448
    :cond_4
    sput-wide v8, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastReportTime:J

    .line 450
    const-string v14, "miui.mqsas.IMQSNative"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lmiui/mqsas/IMQSNative$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;

    move-result-object v3

    .line 451
    .local v3, "daemon":Lmiui/mqsas/IMQSNative;
    if-nez v3, :cond_5

    .line 452
    const-string v14, "ANR_DEBUG"

    const-string v15, "captureExpInfo: no mqsasd!"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :cond_5
    const/16 v13, 0x722

    .line 459
    .local v13, "what":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_6

    const-string v14, ""

    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 461
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 462
    const-string v14, "ANR in "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 464
    const-string v14, " ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_7
    const-string v14, "\n"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v14, "PID: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    if-eqz p5, :cond_8

    .line 469
    const-string v14, "Reason: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_9

    .line 472
    const-string v14, "Parent: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v14, "\n"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_a
    const/16 v14, 0x8

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_b

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    .end local p8    # "headline":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p8

    invoke-interface {v3, v14, v0, v13}, Lmiui/mqsas/IMQSNative;->captureExpInfo(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 480
    :catch_0
    move-exception v4

    .line 481
    .local v4, "e":Landroid/os/RemoteException;
    const-string v14, "ANR_DEBUG"

    const-string v15, "captureExpInfo failed"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static processInitBefore(Ljava/lang/String;)Z
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x1

    .line 170
    .local v0, "hasInit":Z
    if-eqz p0, :cond_0

    .line 171
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isServiceControlEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    .end local p2    # "allowRestart":Z
    :goto_0
    return p2

    .line 289
    .restart local p2    # "allowRestart":Z
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    sub-long v0, v4, v6

    .line 290
    .local v0, "oldTime":J
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isAppInServiceControlWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move p2, v3

    .line 292
    goto :goto_0

    .line 293
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 298
    const-string v3, "ActivityManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a long inactive service(millionsecond) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",do not allow restart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 299
    goto :goto_0

    .line 300
    :cond_3
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    .line 302
    const-string v3, "ActivityManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is killed by AMS with adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,do not allow restart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 303
    goto/16 :goto_0

    :cond_4
    move p2, v3

    .line 306
    goto/16 :goto_0
.end method

.method public static sendFinishBootingBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public static setProcessInitState(Ljava/lang/String;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mProtectedProcessList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static shouldAddPersistApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 487
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.securespaces.android.ssm.service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 488
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should not add to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z
    .locals 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    const/4 v6, 0x1

    .line 90
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 91
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v1, "result"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppErrorResult;

    .line 92
    .local v3, "res":Lcom/android/server/am/AppErrorResult;
    const-string v1, "crash"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 94
    .local v5, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v5, v6}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 97
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 99
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 100
    iput-object v0, v4, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 107
    .end local v0    # "d":Landroid/app/Dialog;
    :goto_0
    return v6

    .line 105
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0
.end method

.method static showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "res"    # Lcom/android/server/am/AppErrorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/AppErrorResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    invoke-direct {v0, p2, p0, p4, p3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 152
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 153
    iput-object v0, p3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 155
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method static showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 271
    :goto_0
    return v1

    .line 266
    :cond_0
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    const/4 v1, 0x1

    goto :goto_0
.end method
