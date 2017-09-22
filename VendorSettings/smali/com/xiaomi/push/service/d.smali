.class public Lcom/xiaomi/push/service/d;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# static fields
.field private static bcW:J


# instance fields
.field private final bcX:Lcom/xiaomi/push/service/h;

.field private final bcY:Lcom/xiaomi/push/service/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/d;-><init>(Z)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/d;-><init>(Ljava/lang/String;Z)V

    .line 486
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/h;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    .line 476
    new-instance v0, Lcom/xiaomi/push/service/f;

    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/f;-><init>(Lcom/xiaomi/push/service/h;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/d;->bcY:Lcom/xiaomi/push/service/f;

    .line 477
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/d;->Io()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/d;-><init>(Ljava/lang/String;Z)V

    .line 495
    return-void
.end method

.method static In()J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized Io()J
    .locals 6

    .prologue
    .line 455
    const-class v1, Lcom/xiaomi/push/service/d;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/xiaomi/push/service/d;->bcW:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/push/service/d;->bcW:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/xiaomi/push/service/g;J)V
    .locals 6

    .prologue
    .line 593
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->b(Lcom/xiaomi/push/service/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timer was canceled"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 598
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/push/service/d;->In()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 600
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal delay to start the TimerTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/j;

    invoke-direct {v0}, Lcom/xiaomi/push/service/j;-><init>()V

    .line 606
    iget v4, p1, Lcom/xiaomi/push/service/g;->type:I

    iput v4, v0, Lcom/xiaomi/push/service/j;->type:I

    .line 607
    iput-object p1, v0, Lcom/xiaomi/push/service/j;->bdg:Lcom/xiaomi/push/service/g;

    .line 608
    iput-wide v2, v0, Lcom/xiaomi/push/service/j;->when:J

    .line 610
    iget-object v2, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;Lcom/xiaomi/push/service/j;)V

    .line 611
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    return-void
.end method


# virtual methods
.method public Ip()V
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;)Lcom/xiaomi/push/service/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->reset()V

    .line 548
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILcom/xiaomi/push/service/g;)V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;)Lcom/xiaomi/push/service/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/i;->a(ILcom/xiaomi/push/service/g;)V

    .line 554
    monitor-exit v1

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/push/service/g;)V
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lcom/xiaomi/channel/commonutils/b/c;->Fr()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 565
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    if-eq v0, v1, :cond_0

    .line 566
    const-string v0, "run job outside job job thread"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Run job outside job thread"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/service/g;->run()V

    .line 570
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/g;J)V
    .locals 4

    .prologue
    .line 586
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/push/service/g;J)V

    .line 590
    return-void
.end method

.method public fd(I)Z
    .locals 2

    .prologue
    .line 528
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;)Lcom/xiaomi/push/service/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->fd(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fe(I)V
    .locals 2

    .prologue
    .line 540
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;)Lcom/xiaomi/push/service/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->fe(I)V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/h;->isBlocked()Z

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->bcX:Lcom/xiaomi/push/service/h;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/h;->cancel()V

    .line 511
    return-void
.end method
