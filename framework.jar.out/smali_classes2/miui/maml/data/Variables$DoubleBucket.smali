.class Lmiui/maml/data/Variables$DoubleBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleBucket"
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/data/Variables$1;

    .prologue
    .line 58
    invoke-direct {p0}, Lmiui/maml/data/Variables$DoubleBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized exists(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    monitor-enter p0

    if-gez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 63
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized get(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "info":Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_0

    .line 90
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 87
    .restart local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getVer(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v0, "info":Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_0

    .line 99
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :goto_0
    monitor-exit p0

    return v1

    .line 96
    .restart local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :cond_0
    :try_start_1
    iget v1, v0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onAddItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 114
    :goto_0
    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 115
    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public final declared-synchronized put(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 70
    monitor-enter p0

    if-gez p1, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;

    .line 74
    .local v0, "info":Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lmiui/maml/data/Variables$DoubleInfo;

    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lmiui/maml/data/Variables$DoubleInfo;-><init>(DI)V

    .line 76
    .restart local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 78
    .restart local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :cond_1
    invoke-virtual {v0, p2, p3}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 103
    iget-object v3, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "M":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 105
    iget-object v3, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$DoubleInfo;

    .line 106
    .local v2, "info":Lmiui/maml/data/Variables$DoubleInfo;
    if-eqz v2, :cond_0

    .line 107
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "info":Lmiui/maml/data/Variables$DoubleInfo;
    :cond_1
    return-void
.end method
