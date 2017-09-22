.class public Lcom/xiaomi/smack/d/a;
.super Ljava/io/Reader;
.source "ObservableReader.java"


# instance fields
.field bjH:Ljava/io/Reader;

.field bjI:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/smack/d/f;)V
    .locals 2

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/xiaomi/smack/d/f;)V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 61
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 85
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 44
    if-lez v1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 48
    iget-object v3, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/xiaomi/smack/d/f;

    .line 50
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjI:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_0

    .line 53
    aget-object v3, v4, v0

    invoke-interface {v3, v2}, Lcom/xiaomi/smack/d/f;->cT(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_0
    return v1
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 89
    return-void
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/smack/d/a;->bjH:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
