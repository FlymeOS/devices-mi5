.class Lcom/xiaomi/push/service/j;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field bdg:Lcom/xiaomi/push/service/g;

.field private bdh:J

.field cancelled:Z

.field final lock:Ljava/lang/Object;

.field type:I

.field when:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/j;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 102
    iget-object v1, p0, Lcom/xiaomi/push/service/j;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/push/service/j;->cancelled:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/push/service/j;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 104
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/push/service/j;->cancelled:Z

    .line 105
    monitor-exit v1

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setScheduledTime(J)V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/xiaomi/push/service/j;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iput-wide p1, p0, Lcom/xiaomi/push/service/j;->bdh:J

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
