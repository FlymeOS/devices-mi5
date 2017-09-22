.class final Lcom/xiaomi/push/service/h;
.super Ljava/lang/Thread;
.source "JobScheduler.java"


# instance fields
.field private volatile bcZ:J

.field private volatile bda:Z

.field private bdb:J

.field private bdc:Lcom/xiaomi/push/service/i;

.field private cancelled:Z

.field private finished:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/h;->bcZ:J

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/h;->bda:Z

    .line 278
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/h;->bdb:J

    .line 295
    new-instance v0, Lcom/xiaomi/push/service/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/i;-><init>(Lcom/xiaomi/push/service/e;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    .line 304
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/h;->setName(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/h;->setDaemon(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/xiaomi/push/service/h;->start()V

    .line 307
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/h;)Lcom/xiaomi/push/service/i;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/h;Lcom/xiaomi/push/service/j;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/j;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/j;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->b(Lcom/xiaomi/push/service/j;)V

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/h;Z)Z
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/xiaomi/push/service/h;->finished:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/push/service/h;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/xiaomi/push/service/h;->cancelled:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/push/service/h;->cancelled:Z

    .line 413
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->reset()V

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/xiaomi/push/service/h;->bda:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/h;->bcZ:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 317
    :goto_0
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/h;->cancelled:Z

    if-eqz v0, :cond_0

    .line 320
    monitor-exit p0

    .line 324
    :goto_1
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-boolean v0, p0, Lcom/xiaomi/push/service/h;->finished:Z

    if-eqz v0, :cond_1

    .line 324
    monitor-exit p0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 328
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/d;->In()J

    move-result-wide v0

    .line 336
    iget-object v2, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/i;->Iq()Lcom/xiaomi/push/service/j;

    move-result-object v2

    .line 339
    iget-object v3, v2, Lcom/xiaomi/push/service/j;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :try_start_3
    iget-boolean v4, v2, Lcom/xiaomi/push/service/j;->cancelled:Z

    if-eqz v4, :cond_3

    .line 341
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/i;->delete(I)V

    .line 342
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 346
    :cond_3
    :try_start_5
    iget-wide v4, v2, Lcom/xiaomi/push/service/j;->when:J

    sub-long v0, v4, v0

    .line 347
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 349
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_6

    .line 350
    :try_start_6
    iget-wide v2, p0, Lcom/xiaomi/push/service/h;->bdb:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    iget-wide v0, p0, Lcom/xiaomi/push/service/h;->bdb:J

    .line 351
    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/push/service/h;->bdb:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/push/service/h;->bdb:J

    .line 352
    iget-wide v2, p0, Lcom/xiaomi/push/service/h;->bdb:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 353
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/xiaomi/push/service/h;->bdb:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    :cond_5
    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 359
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 347
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    .line 361
    :cond_6
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/h;->bdb:J

    .line 365
    iget-object v1, v2, Lcom/xiaomi/push/service/j;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 366
    const/4 v0, 0x0

    .line 367
    :try_start_b
    iget-object v3, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/i;->Iq()Lcom/xiaomi/push/service/j;

    move-result-object v3

    iget-wide v4, v3, Lcom/xiaomi/push/service/j;->when:J

    iget-wide v6, v2, Lcom/xiaomi/push/service/j;->when:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 368
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/service/i;Lcom/xiaomi/push/service/j;)I

    move-result v0

    .line 370
    :cond_7
    iget-boolean v3, v2, Lcom/xiaomi/push/service/j;->cancelled:Z

    if-eqz v3, :cond_8

    .line 371
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    iget-object v3, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/service/i;Lcom/xiaomi/push/service/j;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/i;->delete(I)V

    .line 372
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 376
    :cond_8
    :try_start_d
    iget-wide v4, v2, Lcom/xiaomi/push/service/j;->when:J

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/j;->setScheduledTime(J)V

    .line 379
    iget-object v3, p0, Lcom/xiaomi/push/service/h;->bdc:Lcom/xiaomi/push/service/i;

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/i;->delete(I)V

    .line 381
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/xiaomi/push/service/j;->when:J

    .line 382
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 383
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 387
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/h;->bcZ:J

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/h;->bda:Z

    .line 389
    iget-object v0, v2, Lcom/xiaomi/push/service/j;->bdg:Lcom/xiaomi/push/service/g;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/g;->run()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/h;->bda:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 393
    :catchall_2
    move-exception v0

    .line 394
    monitor-enter p0

    .line 395
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/xiaomi/push/service/h;->cancelled:Z

    .line 396
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    .line 382
    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 396
    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    .line 329
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 357
    :catch_1
    move-exception v0

    goto :goto_3
.end method
