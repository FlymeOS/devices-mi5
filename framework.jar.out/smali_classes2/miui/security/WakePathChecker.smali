.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final RULE_INFOS_LIST_COUNT:I = 0x4

.field private static final SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private mAllowStartActivityWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallListLogLocker:Ljava/lang/Object;

.field mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/app/IWakePathCallback;

.field mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTrackCallListLogEnabled:Z

.field private mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    .line 63
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mAllowStartActivityWhitelist:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    .line 69
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 72
    :cond_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mAllowStartActivityWhitelist:Ljava/util/List;

    const-string v1, "com.mfashiongallery.express"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mAllowStartActivityWhitelist:Ljava/util/List;

    const-string v1, "com.mi.dlabs.vr.thor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lmiui/security/WakePathChecker;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/security/WakePathChecker;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lmiui/security/WakePathChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lmiui/security/WakePathChecker;

    invoke-direct {v0}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    .line 81
    :cond_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 p1, 0x0

    .line 107
    :cond_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 109
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    invoke-direct {v0, p0}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>(Lmiui/security/WakePathChecker;)V

    .line 111
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    monitor-exit v2

    .line 114
    return-object v0

    .line 113
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .prologue
    .line 310
    iget-object v11, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    .line 311
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    :cond_0
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 316
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    .line 317
    monitor-exit v11

    .line 341
    :goto_0
    return-void

    .line 321
    :cond_2
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, "hashCode":I
    if-nez v9, :cond_3

    .line 323
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wakeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v11

    goto :goto_0

    .line 340
    .end local v9    # "hashCode":I
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    .restart local v9    # "hashCode":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/security/WakePathRuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    .local v10, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    if-nez v10, :cond_4

    .line 331
    :try_start_2
    new-instance v1, Lmiui/security/WakePathRuleInfo;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .local v1, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :goto_1
    if-eqz v1, :cond_4

    .line 336
    :try_start_3
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v9    # "hashCode":I
    :cond_4
    monitor-exit v11

    goto :goto_0

    .line 332
    .restart local v9    # "hashCode":I
    .restart local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :catch_0
    move-exception v8

    .line 333
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v10

    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .restart local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    goto :goto_1
.end method

.method private updateLauncherPackageNames(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v5, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 391
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 393
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 394
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v8, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLauncherPackageNames ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v9, "updateLauncherPackageNames"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v9

    .line 402
    :try_start_1
    iget-object v8, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 403
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 404
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    return-void
.end method

.method private wakeTypeToRuleInfosListIndex(I)I
    .locals 2
    .param p1, "wakeType"    # I

    .prologue
    .line 89
    const/4 v0, -0x1

    .line 90
    .local v0, "ret":I
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 91
    const/4 v0, 0x3

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 95
    const/4 v0, 0x2

    goto :goto_0

    .line 96
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mAllowStartActivityWhitelist:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v3

    .line 357
    :try_start_0
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    monitor-exit v3

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v1

    .line 363
    .local v1, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v1

    .line 365
    :try_start_2
    iget-object v3, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 366
    iget-object v3, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    monitor-exit v1

    goto :goto_0

    .line 379
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 371
    :cond_3
    :try_start_3
    iget-object v3, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 373
    .local v0, "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 374
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    monitor-exit v1

    goto :goto_0

    .line 379
    .end local v0    # "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "info"    # Landroid/content/pm/ResolveInfo;
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    .line 210
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v7

    .line 214
    :cond_1
    const-string v4, ""

    .line 215
    .local v4, "callee":Ljava/lang/String;
    const-string v1, ""

    .line 216
    .local v1, "action":Ljava/lang/String;
    const-string v2, ""

    .line 217
    .local v2, "className":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 225
    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 229
    :cond_3
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 232
    :cond_4
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 4

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    iget-boolean v2, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v2, :cond_1

    .line 191
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 196
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 198
    :cond_1
    if-nez v0, :cond_2

    .line 199
    const/4 v2, 0x0

    .line 201
    :goto_0
    return-object v2

    .line 196
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 201
    :cond_2
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 196
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I

    .prologue
    .line 245
    const/4 v14, 0x0

    .line 248
    .local v14, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    iget-boolean v4, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v4, :cond_0

    .line 249
    invoke-direct/range {p0 .. p5}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    :cond_0
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v13

    .line 253
    .local v13, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v13

    .line 255
    :try_start_0
    iget-object v4, v13, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v13, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 256
    iget-object v4, v13, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 259
    :try_start_1
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v2}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_1
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    monitor-exit v13

    .line 305
    :goto_1
    return v4

    .line 260
    :catch_0
    move-exception v9

    .line 261
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 269
    :cond_2
    :try_start_3
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v11

    .line 270
    .local v11, "index":I
    if-ltz v11, :cond_3

    const/4 v4, 0x4

    if-lt v11, v4, :cond_4

    .line 271
    :cond_3
    sget-object v4, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v5, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v4, 0x0

    monitor-exit v13

    goto :goto_1

    .line 274
    :cond_4
    iget-object v4, v13, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v14, v0

    .line 276
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 277
    :cond_5
    const/4 v4, 0x0

    monitor-exit v13

    goto :goto_1

    .line 279
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 280
    .local v12, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v12, :cond_9

    .line 281
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/WakePathRuleInfo;

    .local v3, "info":Lmiui/security/WakePathRuleInfo;
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 282
    invoke-virtual/range {v3 .. v8}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 283
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    .line 285
    :try_start_4
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v2}, Lcom/android/internal/app/IWakePathCallback;->onRejectCall(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :cond_7
    :goto_3
    :try_start_5
    sget-object v4, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caller= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callee= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " classname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wakeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v4, 0x1

    monitor-exit v13

    goto/16 :goto_1

    .line 286
    :catch_1
    move-exception v9

    .line 287
    .restart local v9    # "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 280
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 297
    .end local v3    # "info":Lmiui/security/WakePathRuleInfo;
    :cond_9
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_a

    .line 299
    :try_start_6
    iget-object v4, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v2}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 304
    :cond_a
    :goto_4
    :try_start_7
    monitor-exit v13

    .line 305
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 300
    :catch_2
    move-exception v9

    .line 301
    .restart local v9    # "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method public onPackageAdded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    new-instance v0, Lmiui/security/WakePathChecker$1;

    invoke-direct {v0, p0, p1}, Lmiui/security/WakePathChecker$1;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/security/WakePathChecker$1;->start()V

    .line 418
    return-void
.end method

.method public pushWakePathRuleInfos(ILjava/util/List;I)V
    .locals 8
    .param p1, "wakeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v4

    .line 121
    .local v4, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v4

    .line 122
    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    .line 123
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    .line 126
    if-eqz p2, :cond_3

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    .line 129
    .local v2, "info":Lmiui/security/WakePathRuleInfo;
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 130
    .local v3, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .restart local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v2    # "info":Lmiui/security/WakePathRuleInfo;
    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 138
    .restart local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    .line 139
    .local v1, "index":I
    if-ltz v1, :cond_3

    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 140
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v1    # "index":I
    :cond_3
    monitor-exit v4

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    .line 151
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v0

    .line 152
    :try_start_0
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    return-void

    .line 147
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 153
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    .line 344
    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    .line 345
    return-void
.end method

.method public removeWakePathData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 157
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz p1, :cond_0

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 165
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-eqz v0, :cond_2

    .line 166
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iput-boolean p1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 178
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 184
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
