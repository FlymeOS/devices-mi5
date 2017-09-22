.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# instance fields
.field final synthetic OG:Lcom/android/settings/applications/RunningState;

.field OH:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->OG:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->OH:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->OH:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->OG:Lcom/android/settings/applications/RunningState;

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->OG:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v0, :cond_2

    .line 274
    monitor-exit v1

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningState$2;->removeMessages(I)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningState$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/applications/RunningState$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->OG:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->Og:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->OG:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->Og:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v1, p0, Lcom/android/settings/applications/RunningState$2;->OH:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->aG(I)V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->OH:I

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
