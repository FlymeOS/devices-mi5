.class Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;
.super Landroid/os/Handler;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method

.method private performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .prologue
    .line 276
    iget-object v6, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v6, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v7

    .line 277
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v6, v6, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v8, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    monitor-exit v7

    .line 317
    :goto_0
    return-void

    .line 280
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    .line 284
    .local v4, "pms":Lcom/android/server/pm/PackageManagerService;
    const-string v6, "PackageDexOptimizerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PerformDexOpt for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, "callingId":J
    const/high16 v3, -0x80000000

    .line 289
    .local v3, "installFlags":I
    :try_start_1
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    if-eqz v6, :cond_1

    .line 292
    :try_start_2
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/high16 v9, -0x80000000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 301
    .local v5, "ret":Ljava/lang/Boolean;
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const/4 v6, 0x1

    iput v6, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 311
    .end local v5    # "ret":Ljava/lang/Boolean;
    :cond_1
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v6, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v7

    .line 315
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v6, v6, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v8, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 280
    .end local v0    # "callingId":J
    .end local v3    # "installFlags":I
    .end local v4    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 295
    .restart local v0    # "callingId":J
    .restart local v3    # "installFlags":I
    .restart local v4    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v6, "PackageDexOptimizerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .restart local v5    # "ret":Ljava/lang/Boolean;
    goto :goto_1

    .line 304
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v6, -0x1

    iput v6, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 307
    .end local v5    # "ret":Ljava/lang/Boolean;
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, -0x1

    :try_start_7
    iput v6, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    .line 309
    const-string v6, "PackageDexOptimizerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .line 250
    .local v0, "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v1, :cond_1

    .line 252
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmiui/os/IMiuiDexoptObserver;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V

    .line 260
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v1, :cond_0

    .line 262
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    invoke-interface {v1, v2, v3}, Lmiui/os/IMiuiDexoptObserver;->onFinished(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
