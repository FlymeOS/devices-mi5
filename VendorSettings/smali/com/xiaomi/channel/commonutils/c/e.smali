.class public Lcom/xiaomi/channel/commonutils/c/e;
.super Ljava/lang/Object;
.source "ScheduledJobManager.java"


# static fields
.field private static volatile aXI:Lcom/xiaomi/channel/commonutils/c/e;


# instance fields
.field private aXJ:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private aXK:Landroid/util/SparseArray;

.field private aXL:Ljava/lang/Object;

.field private aXM:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/e;->aXJ:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/e;->aXK:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/e;->aXL:Ljava/lang/Object;

    .line 82
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/e;->aXM:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method public static dp(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/c/e;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/e;->aXI:Lcom/xiaomi/channel/commonutils/c/e;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/xiaomi/channel/commonutils/c/e;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/e;->aXI:Lcom/xiaomi/channel/commonutils/c/e;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/c/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/c/e;->aXI:Lcom/xiaomi/channel/commonutils/c/e;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/e;->aXI:Lcom/xiaomi/channel/commonutils/c/e;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/e;->a(Ljava/lang/Runnable;I)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/Runnable;I)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/e;->aXJ:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 161
    return-void
.end method
