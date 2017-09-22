.class public Lcom/xiaomi/smack/d/b;
.super Ljava/io/Writer;
.source "ObservableWriter.java"


# instance fields
.field bjI:Ljava/util/List;

.field bjJ:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    .line 40
    return-void
.end method

.method private ew(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    .line 84
    iget-object v1, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/xiaomi/smack/d/m;

    .line 86
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 89
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lcom/xiaomi/smack/d/m;->write(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/smack/d/m;)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
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

.method public b(Lcom/xiaomi/smack/d/m;)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
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
    .line 53
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 54
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 50
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 58
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/d/b;->ew(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 73
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/xiaomi/smack/d/b;->ew(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public write([C)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 63
    invoke-direct {p0, v0}, Lcom/xiaomi/smack/d/b;->ew(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/smack/d/b;->bjJ:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 45
    invoke-direct {p0, v0}, Lcom/xiaomi/smack/d/b;->ew(Ljava/lang/String;)V

    .line 46
    return-void
.end method
