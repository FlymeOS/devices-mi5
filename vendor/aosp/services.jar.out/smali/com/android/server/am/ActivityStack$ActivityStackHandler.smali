.class final Lcom/android/server/am/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    .line 294
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 299
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 304
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity pause timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pausing "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 310
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 313
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 314
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 315
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launching "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 318
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 321
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 324
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity destroy timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 326
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_2
    const-string v5, "destroyTimeout"

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 327
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 330
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 333
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity stop timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 335
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 338
    :cond_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 341
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    .line 342
    .local v0, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 343
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 344
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 347
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 348
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 349
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 352
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 353
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 354
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for cancelVisibleBehind player="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v1, :cond_4

    .line 356
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 358
    :cond_4
    monitor-exit v3

    goto/16 :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 299
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
