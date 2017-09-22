.class Lcom/android/b/d/e;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# instance fields
.field private final aKA:Landroid/content/ServiceConnection;

.field final synthetic aKq:Lcom/android/b/d/a;

.field private aKx:Lcom/android/internal/app/IMediaContainerService;

.field private volatile aKy:Z

.field private aKz:Lcom/android/b/d/d;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/b/d/a;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    .line 336
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/b/d/e;->mLock:Ljava/lang/Object;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/d/e;->aKy:Z

    .line 318
    new-instance v0, Lcom/android/b/d/f;

    invoke-direct {v0, p0}, Lcom/android/b/d/f;-><init>(Lcom/android/b/d/e;)V

    iput-object v0, p0, Lcom/android/b/d/e;->aKA:Landroid/content/ServiceConnection;

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/android/b/d/e;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/b/d/e;->aKx:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/d/e;Z)Z
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/b/d/e;->aKy:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    invoke-static {v0}, Lcom/android/b/d/a;->b(Lcom/android/b/d/a;)Lcom/android/b/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    invoke-virtual {v0, v2, v1}, Lcom/android/b/d/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/b/d/e;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/d/e;->aKy:Z

    if-eqz v0, :cond_2

    .line 350
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/b/d/e;->removeMessages(I)V

    .line 351
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/b/d/e;->aKx:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/b/d/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/b/d/e;->sendMessage(Landroid/os/Message;)Z

    .line 357
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 353
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/b/d/a;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    invoke-static {v2}, Lcom/android/b/d/a;->c(Lcom/android/b/d/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/b/d/e;->aKA:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 361
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    .line 362
    iget-object v1, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    invoke-static {v1, v0}, Lcom/android/b/d/a;->a(Lcom/android/b/d/a;Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v1, p0, Lcom/android/b/d/e;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_2
    iget-boolean v0, p0, Lcom/android/b/d/e;->aKy:Z

    if-eqz v0, :cond_3

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/d/e;->aKy:Z

    .line 369
    iget-object v0, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    invoke-static {v0}, Lcom/android/b/d/a;->c(Lcom/android/b/d/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/b/d/e;->aKA:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 371
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    invoke-virtual {p0}, Lcom/android/b/d/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/b/d/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 371
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 382
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/b/d/d;

    iput-object v0, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    .line 384
    iget-object v0, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    iget-object v1, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    invoke-static {v0, v1}, Lcom/android/b/d/a;->a(Lcom/android/b/d/a;Lcom/android/b/d/d;)V

    .line 385
    iget-object v0, p0, Lcom/android/b/d/e;->aKq:Lcom/android/b/d/a;

    invoke-static {v0}, Lcom/android/b/d/a;->b(Lcom/android/b/d/a;)Lcom/android/b/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    invoke-virtual {v0, v2, v1}, Lcom/android/b/d/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 389
    :pswitch_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/d/e;->aKz:Lcom/android/b/d/d;

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
