.class Lmiui/maml/data/Variables$VarBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/maml/data/Variables$BaseVarBucket;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$ValueInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/data/Variables$1;

    .prologue
    .line 159
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    invoke-direct {p0}, Lmiui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v1, 0x0

    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v0, :cond_0

    .line 184
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :goto_0
    monitor-exit p0

    return-object v1

    .line 181
    .restart local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_0
    :try_start_1
    iget-object v1, v0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 182
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized getVer(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v1, -0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v0, :cond_0

    .line 193
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :goto_0
    monitor-exit p0

    return v1

    .line 190
    .restart local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_0
    :try_start_1
    iget v1, v0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onAddItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 208
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    :goto_0
    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public final declared-synchronized put(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    if-gez p1, :cond_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;

    .line 168
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lmiui/maml/data/Variables$ValueInfo;

    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lmiui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    .line 170
    .restart local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 172
    .restart local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_1
    invoke-virtual {v0, p2}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 197
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, "M":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$ValueInfo;

    .line 200
    .local v2, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2}, Lmiui/maml/data/Variables$ValueInfo;->reset()V

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v2    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_1
    return-void
.end method
