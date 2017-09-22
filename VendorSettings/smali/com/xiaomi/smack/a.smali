.class public abstract Lcom/xiaomi/smack/a;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final bhl:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static bhm:Z


# instance fields
.field protected aYm:Ljava/io/Writer;

.field protected aYn:Ljava/io/Reader;

.field protected bdY:Lcom/xiaomi/push/service/XMPushService;

.field protected bhA:Lcom/xiaomi/smack/c;

.field private bhB:J

.field protected bhn:I

.field protected bho:J

.field protected volatile bhp:J

.field protected volatile bhq:J

.field protected bhr:I

.field private bhs:Ljava/util/LinkedList;

.field private final bht:Ljava/util/Collection;

.field protected final bhu:Ljava/util/Map;

.field protected final bhv:Ljava/util/Map;

.field protected bhw:Lcom/xiaomi/smack/a/a;

.field protected bhx:Ljava/lang/String;

.field private bhy:I

.field protected final bhz:I

.field protected challenge:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/smack/a;->bhl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    sput-boolean v1, Lcom/xiaomi/smack/a;->bhm:Z

    .line 149
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/smack/a;->bhm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-static {}, Lcom/xiaomi/smack/k;->getVersion()Ljava/lang/String;

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/a;->bhn:I

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->bho:J

    .line 130
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bhp:J

    .line 131
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bhq:J

    .line 136
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhu:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhv:Ljava/util/Map;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhx:Ljava/lang/String;

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    .line 198
    sget-object v0, Lcom/xiaomi/smack/a;->bhl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/a;->bhz:I

    .line 673
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bhB:J

    .line 214
    iput-object p2, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    .line 215
    iput-object p1, p0, Lcom/xiaomi/smack/a;->bdY:Lcom/xiaomi/push/service/XMPushService;

    .line 216
    return-void
.end method

.method private fi(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 649
    const-string v0, "connected"

    .line 655
    :goto_0
    return-object v0

    .line 650
    :cond_0
    if-nez p1, :cond_1

    .line 651
    const-string v0, "connecting"

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 653
    const-string v0, "disconnected"

    goto :goto_0

    .line 655
    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private fq(I)V
    .locals 6

    .prologue
    .line 688
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    monitor-enter v1

    .line 689
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 697
    :cond_0
    :goto_0
    monitor-exit v1

    .line 698
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 694
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract JA()V
.end method

.method public JB()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public JE()Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method public JF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->JF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public JG()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/xiaomi/smack/a;->bhr:I

    return v0
.end method

.method public JH()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->bhq:J

    return-wide v0
.end method

.method protected JI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->JR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    if-nez v1, :cond_4

    .line 490
    :try_start_0
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 495
    :goto_1
    if-eqz v1, :cond_2

    .line 497
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 502
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 503
    new-instance v0, Lcom/xiaomi/a/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    iget-object v2, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/a/a/a;-><init>(Lcom/xiaomi/smack/a;Ljava/io/Writer;Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    .line 504
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getReader()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    .line 505
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getWriter()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 498
    :catch_1
    move-exception v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 512
    :cond_3
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/xiaomi/smack/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/io/Reader;

    aput-object v3, v1, v2

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 515
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    aput-object v3, v1, v2

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a/a;

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 522
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getReader()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    .line 523
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getWriter()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    goto :goto_0

    .line 517
    :catch_2
    move-exception v0

    .line 518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lcom/xiaomi/smack/a/a;->a(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYn:Ljava/io/Reader;

    .line 528
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhw:Lcom/xiaomi/smack/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    invoke-interface {v0, v1}, Lcom/xiaomi/smack/a/a;->a(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aYm:Ljava/io/Writer;

    goto/16 :goto_0
.end method

.method public JJ()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/xiaomi/smack/a;->bhn:I

    return v0
.end method

.method public JK()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/a;->bhn:I

    .line 585
    return-void
.end method

.method public JL()V
    .locals 2

    .prologue
    .line 592
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->bho:J

    .line 593
    return-void
.end method

.method public JM()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    return v0
.end method

.method public declared-synchronized JN()V
    .locals 2

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->bhB:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized JO()Z
    .locals 4

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/a;->bhB:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/k;->JV()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public JP()V
    .locals 2

    .prologue
    .line 722
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 724
    monitor-exit v1

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized M(J)Z
    .locals 3

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->bhB:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract R(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(IILjava/lang/Exception;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 598
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-eq p1, v0, :cond_0

    .line 599
    const-string v0, "update the connection status. %1$s -> %2$s : %3$s "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/smack/a;->bhy:I

    invoke-direct {p0, v3}, Lcom/xiaomi/smack/a;->fi(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 600
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->fi(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 601
    invoke-static {p2}, Lcom/xiaomi/push/service/M;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 599
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->fq(I)V

    .line 608
    :cond_1
    if-ne p1, v4, :cond_3

    .line 609
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 611
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-eqz v0, :cond_2

    .line 612
    const-string v0, "try set connected while not connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 615
    :cond_2
    iput p1, p0, Lcom/xiaomi/smack/a;->bhy:I

    .line 617
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 618
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;)V

    goto :goto_0

    .line 620
    :cond_3
    if-nez p1, :cond_5

    .line 621
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-eq v0, v5, :cond_4

    .line 622
    const-string v0, "try set connecting while not disconnected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 625
    :cond_4
    iput p1, p0, Lcom/xiaomi/smack/a;->bhy:I

    .line 627
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 628
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->b(Lcom/xiaomi/smack/a;)V

    goto :goto_1

    .line 630
    :cond_5
    if-ne p1, v5, :cond_9

    .line 631
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 633
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-nez v0, :cond_7

    .line 634
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 635
    if-nez p3, :cond_6

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    move-object v1, p3

    goto :goto_3

    .line 638
    :cond_7
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-ne v0, v4, :cond_8

    .line 639
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 640
    invoke-interface {v0, p0, p2, p3}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V

    goto :goto_4

    .line 643
    :cond_8
    iput p1, p0, Lcom/xiaomi/smack/a;->bhy:I

    .line 645
    :cond_9
    return-void
.end method

.method public abstract a(ILjava/lang/Exception;)V
.end method

.method public a(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 399
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhu:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public abstract a([Lcom/xiaomi/smack/packet/e;)V
.end method

.method public b(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bht:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 436
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bhv:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public abstract b([Lcom/xiaomi/c/b;)V
.end method

.method public abstract e(Lcom/xiaomi/push/service/J;)V
.end method

.method public abstract e(Lcom/xiaomi/smack/packet/e;)V
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->bho:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhA:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bhv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 465
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->i(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method public abstract i(Lcom/xiaomi/c/b;)V
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 576
    iget v1, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract ping()V
.end method

.method public declared-synchronized setChallenge(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smack/a;->bhy:I

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/c;->cQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 665
    iput-object p1, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 666
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/a;->a(IILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :goto_0
    monitor-exit p0

    return-void

    .line 668
    :cond_0
    :try_start_1
    const-string v0, "ignore setChallenge because connection was disconnected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
