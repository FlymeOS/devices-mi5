.class final Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunningState.java"


# instance fields
.field final synthetic OG:Lcom/android/vendorsettings/applications/RunningState;

.field private volatile Pk:Z


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$1;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/vendorsettings/applications/RunningState;)V

    return-void
.end method


# virtual methods
.method public lB()Z
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->Pk:Z

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->Pk:Z

    .line 313
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v1, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 302
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 307
    :goto_0
    monitor-exit v1

    .line 308
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->Pk:Z

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method register(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 317
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    return-void
.end method
