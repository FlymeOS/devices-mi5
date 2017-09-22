.class final Lcom/xiaomi/push/service/f;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field private final bcX:Lcom/xiaomi/push/service/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/h;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/xiaomi/push/service/f;->bcX:Lcom/xiaomi/push/service/h;

    .line 438
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    .prologue
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/f;->bcX:Lcom/xiaomi/push/service/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/f;->bcX:Lcom/xiaomi/push/service/h;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/h;Z)Z

    .line 444
    iget-object v0, p0, Lcom/xiaomi/push/service/f;->bcX:Lcom/xiaomi/push/service/h;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 445
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 449
    return-void

    .line 445
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 447
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
