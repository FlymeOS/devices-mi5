.class public Lcom/xiaomi/push/a/b;
.super Ljava/lang/Object;
.source "LogUploader.java"


# static fields
.field private static volatile baL:Lcom/xiaomi/push/a/b;


# instance fields
.field private final baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    iput-object p1, p0, Lcom/xiaomi/push/a/b;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/push/a/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/a/e;-><init>(Lcom/xiaomi/push/a/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 60
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/a/b;->H(J)V

    .line 61
    return-void
.end method

.method private G(J)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/f;

    .line 257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/f;->GG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/a/b;->H(J)V

    .line 260
    :cond_0
    return-void
.end method

.method private GF()V
    .locals 2

    .prologue
    .line 287
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/f;

    .line 289
    invoke-virtual {v0}, Lcom/xiaomi/push/a/f;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 290
    :cond_0
    const-string v0, "remove Expired task"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method private H(J)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/xiaomi/push/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/a/d;-><init>(Lcom/xiaomi/push/a/b;)V

    invoke-static {v0, p1, p2}, Lcom/xiaomi/smack/d/h;->b(Lcom/xiaomi/channel/commonutils/c/j;J)V

    .line 284
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/a/b;J)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/a/b;->G(J)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/push/a/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/push/a/b;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Lcom/xiaomi/channel/commonutils/a/c;->Fn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/a/c;->Fm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/a/b;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.logcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static dP(Landroid/content/Context;)Lcom/xiaomi/push/a/b;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/xiaomi/push/a/b;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/xiaomi/push/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/a/b;-><init>(Landroid/content/Context;)V

    .line 69
    sput-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    iput-object p0, v0, Lcom/xiaomi/push/a/b;->mContext:Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/xiaomi/push/a/b;->baL:Lcom/xiaomi/push/a/b;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public GE()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/xiaomi/push/a/b;->GF()V

    .line 124
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/a/b;->G(J)V

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
    .locals 9

    .prologue
    .line 88
    iget-object v8, p0, Lcom/xiaomi/push/a/b;->baK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/push/a/c;

    move-object v1, p0

    move v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/a/c;-><init>(Lcom/xiaomi/push/a/b;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 116
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/a/b;->H(J)V

    .line 117
    return-void
.end method
