.class final Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# instance fields
.field final synthetic OG:Lcom/android/vendorsettings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningState;->a(Lcom/android/vendorsettings/applications/RunningState;)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v1, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningState;->mResumed:Z

    if-nez v0, :cond_0

    .line 244
    monitor-exit v1

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v3, v3, Lcom/android/vendorsettings/applications/RunningState;->MT:Landroid/app/ActivityManager;

    invoke-static {v0, v2, v3}, Lcom/android/vendorsettings/applications/RunningState;->a(Lcom/android/vendorsettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->OG:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 251
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
