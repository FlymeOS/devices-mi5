.class Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2376
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 2460
    :pswitch_0
    const/4 v12, 0x0

    :goto_0
    return v12

    .line 2378
    :pswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 2379
    .local v10, "uid":I
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 2380
    .local v11, "uidRules":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2381
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2382
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2383
    .local v3, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_0

    .line 2385
    :try_start_0
    invoke-interface {v3, v10, v11}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2381
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2390
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2391
    const/4 v12, 0x1

    goto :goto_0

    .line 2394
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v10    # "uid":I
    .end local v11    # "uidRules":I
    :pswitch_2
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 2395
    .local v6, "meteredIfaces":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2396
    .restart local v2    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 2397
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2398
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_2

    .line 2400
    :try_start_1
    invoke-interface {v3, v6}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2396
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2405
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2406
    const/4 v12, 0x1

    goto :goto_0

    .line 2409
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v6    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2411
    .local v1, "iface":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2412
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v13, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2413
    :try_start_2
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-eqz v12, :cond_4

    .line 2417
    :try_start_3
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v12

    invoke-interface {v12}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2422
    :goto_5
    :try_start_4
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2423
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2425
    :cond_4
    monitor-exit v13

    .line 2426
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2425
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 2429
    .end local v1    # "iface":Ljava/lang/String;
    :pswitch_4
    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_6

    const/4 v7, 0x1

    .line 2430
    .local v7, "restrictBackground":Z
    :goto_6
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2431
    .restart local v2    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v2, :cond_7

    .line 2432
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2433
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_5

    .line 2435
    :try_start_5
    invoke-interface {v3, v7}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2431
    :cond_5
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2429
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v7    # "restrictBackground":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 2440
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    .restart local v7    # "restrictBackground":Z
    :cond_7
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2441
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2444
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v7    # "restrictBackground":Z
    :pswitch_5
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2448
    .local v4, "lowestRule":J
    const-wide/16 v12, 0x3e8

    :try_start_6
    div-long v8, v4, v12

    .line 2449
    .local v8, "persistThreshold":J
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v12

    invoke-interface {v12, v8, v9}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2453
    .end local v8    # "persistThreshold":J
    :goto_9
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2456
    .end local v4    # "lowestRule":J
    :pswitch_6
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2457
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2386
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v10    # "uid":I
    .restart local v11    # "uidRules":I
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 2401
    .end local v10    # "uid":I
    .end local v11    # "uidRules":I
    .restart local v6    # "meteredIfaces":[Ljava/lang/String;
    :catch_1
    move-exception v12

    goto/16 :goto_4

    .line 2436
    .end local v6    # "meteredIfaces":[Ljava/lang/String;
    .restart local v7    # "restrictBackground":Z
    :catch_2
    move-exception v12

    goto :goto_8

    .line 2450
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v7    # "restrictBackground":Z
    .restart local v4    # "lowestRule":J
    :catch_3
    move-exception v12

    goto :goto_9

    .line 2418
    .end local v4    # "lowestRule":J
    .restart local v1    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 2376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
