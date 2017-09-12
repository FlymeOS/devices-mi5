.class final Lcom/android/server/LocationManagerServiceInjector$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 343
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictBackgroundChanged(restrictBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 345
    :try_start_0
    # setter for: Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->access$402(Z)Z

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 332
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 333
    :try_start_0
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 334
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    monitor-exit v2

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    # invokes: Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerServiceInjector;->access$200(II)V

    goto :goto_0

    .line 337
    .end local v0    # "oldRules":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
