.class public Lcom/xiaomi/channel/commonutils/f/a;
.super Ljava/lang/Object;
.source "Stats.java"


# instance fields
.field private aYc:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    return-void
.end method

.method public static FA()Lcom/xiaomi/channel/commonutils/f/a;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/xiaomi/channel/commonutils/f/b;->FD()Lcom/xiaomi/channel/commonutils/f/a;

    move-result-object v0

    return-object v0
.end method

.method private FB()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized D(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    new-instance v1, Lcom/xiaomi/channel/commonutils/f/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/channel/commonutils/f/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/f/a;->FB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FC()Ljava/util/LinkedList;
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/f/a;->aYc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
